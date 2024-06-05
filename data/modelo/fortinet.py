class Fortinet:
    def __init__(self, Id : int, Nombre : str, Vpn_cantidad_de_túneles : int, Ethernet_LAN_RJ45_cantidad_de_puertos: int, Números_de_puertos_de_la_consola : int, Precio : str):
            self.Id = Id
            self.Nombre = Nombre
            self.Vpn_cantidad_de_túneles = Vpn_cantidad_de_túneles   
            self.Ethernet_LAN_RJ45_cantidad_de_puertos = Ethernet_LAN_RJ45_cantidad_de_puertos
            self.Números_de_puertos_de_la_consola = Números_de_puertos_de_la_consola
            self.Precio = Precio