const devices = [];
const connections = [];
const deviceImages = {
    "Servidor": "./static/images/servidor.png",
    "Router": "./static/images/router.png",
    "Switch": "./static/images/switch.png",
    "Hub": "./static/images/hub.png",
    "Fortinet": "./static/images/fortinet.png",
    "PC": "./static/images/pc.png"
};

function addDevice() {
    const deviceName = document.getElementById('deviceName').value;
    const deviceType = document.getElementById('deviceType').value;
    const connectedTo = document.getElementById('connectedTo').value;

    if (deviceName) {
        devices.push({name: deviceName, type: deviceType, image: deviceImages[deviceType] });
        if (connectedTo) {
            connections.push({ source: deviceName, target: connectedTo });
        }
        document.getElementById('deviceName').value = '';
        document.getElementById('connectedTo').value = '';
        renderNetwork();
        populateDeviceDropdown(); // Actualizar el menú desplegable
    } else {
        alert('El nombre del dispositivo es obligatorio.');
    }
}

function editDevice() {
    const selectedDeviceName = document.getElementById('selectDevice').value;
    const newDeviceName = document.getElementById('newDeviceName').value;
    const newDeviceType = document.getElementById('newDeviceType').value;

    if (selectedDeviceName) {
        // Buscar el dispositivo seleccionado y actualizar su nombre y tipo
        const device = devices.find(device => device.name === selectedDeviceName);
        if (device) {
            // Actualizar las conexiones si se cambia el nombre del dispositivo
            if (newDeviceName) {
                connections.forEach(connection => {
                    if (connection.source === device.name) {
                        connection.source = newDeviceName;
                    }
                    if (connection.target === device.name) {
                        connection.target = newDeviceName;
                    }
                });
                device.name = newDeviceName;
            }
            device.type = newDeviceType;
            device.image = deviceImages[newDeviceType];
            renderNetwork();
            populateDeviceDropdown(); // Actualizar el menú desplegable
        } else {
            alert('El dispositivo seleccionado no existe.');
        }
    } else {
        alert('Por favor, selecciona un dispositivo y proporciona un nuevo nombre.');
    }
}
function deleteDevice() {
    const selectedDeviceName = document.getElementById('selectDevice').value;

    if (selectedDeviceName) {
        // Eliminar el dispositivo seleccionado
        const deviceIndex = devices.findIndex(device => device.name === selectedDeviceName);
        if (deviceIndex !== -1) {
            devices.splice(deviceIndex, 1);
            // Eliminar también las conexiones asociadas
            for (let i = connections.length - 1; i >= 0; i--) {
                if (connections[i].source === selectedDeviceName || connections[i].target === selectedDeviceName) {
                    connections.splice(i, 1);
                }
            }
            renderNetwork();
            populateDeviceDropdown(); // Actualizar el menú desplegable
        } else {
            alert('El dispositivo seleccionado no existe.');
        }
    } else {
        alert('Por favor, selecciona un dispositivo para borrar.');
    }
}

function populateDeviceDropdown() {
    const selectDevice = document.getElementById('selectDevice');
    selectDevice.innerHTML = '<option value="">Selecciona un dispositivo</option>';
    devices.forEach(device => {
        const option = document.createElement('option');
        option.value = device.name;
        option.textContent = device.name;
        selectDevice.appendChild(option);
    });
}

function renderNetwork() {
    const svg = d3.select("#network").html("").append("svg")
        .attr("width", '100%')
        .attr("height", 500);
    
    const width = svg.node().getBoundingClientRect().width;
    const height = svg.node().getBoundingClientRect().height;

    const simulation = d3.forceSimulation(devices)
        .force("link", d3.forceLink(connections).id(d => d.name).distance(150))
        .force("charge", d3.forceManyBody().strength(-300))
        .force("center", d3.forceCenter(width / 2, height / 2));
    
    const link = svg.append("g")
        .attr("stroke", "#999")
        .attr("stroke-opacity", 0.6)
        .selectAll("line")
        .data(connections)
        .join("line")
        .attr("stroke-width", 2);
    
    const node = svg.append("g")
        .attr("stroke", "#fff")
        .attr("stroke-width", 1.5)
        .selectAll("image")
        .data(devices)
        .join("image")
        .attr("xlink:href", d => d.image)
        .attr("width", 40)
        .attr("height", 40)
        .attr("x", d => d.x - 20)
        .attr("y", d => d.y - 20);
    
    const label = svg.append("g")
        .selectAll("text")
        .data(devices)
        .join("text")
        .attr("dy", -30)
        .attr("text-anchor", "middle")
        .attr("font-size", "12px")
        .attr("fill", "#000")
        .text(d => d.name);
    
    simulation.on("tick", () => {
        link
            .attr("x1", d => d.source.x)
            .attr("y1", d => d.source.y)
            .attr("x2", d => d.target.x)
            .attr("y2", d => d.target.y)
        node
            .attr("x", d => d.x - 20)
            .attr("y", d => d.y - 20);
        
        label
            .attr("x", d => d.x)
            .attr("y", d => d.y);
    });
}
renderNetwork();
// Llamamos a esta función al cargar la página para poblar el menú desplegable
document.addEventListener('DOMContentLoaded', populateDeviceDropdown);
document1.addEventListener('DOMContentLoaded', populateDeviceDropdown1);
