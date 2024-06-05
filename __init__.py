from flask import Flask

import mysql.connector

# db = list()
db = mysql.connector.connect( # LLAMAMOS A LA FUNCION CONNECT PARA CONECTARNOS
    host = 'localhost',
    port = 6333,
    ssl_disabled = True,
    user = 'root',
    password = 'laura',
    database='redes'
)

def create_app():
    app = Flask(__name__)
    app.debug = True





    from .routes import routes
    from .routes import routes_switches
    from .routes import routes_hubs
    from .routes import routes_fortinets
    
    app.register_blueprint(routes.rutas_routers)
    app.register_blueprint(routes_switches.rutas_switches)
    app.register_blueprint(routes_hubs.rutas_hubs)
    app.register_blueprint(routes_fortinets.rutas_fortinets)
    return app