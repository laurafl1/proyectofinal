import random
from flask import Flask, Blueprint, render_template, request, redirect, url_for

from app import db
from app.data.router_dao import RouterDao

rutas_routers = Blueprint("routes", __name__)

@rutas_routers.route('/')
def index():
    return render_template('index.html')

@rutas_routers.route('/verRouters')
def verRouters():
    router_dao = RouterDao()
    routers = router_dao.select_all(db)
    return render_template('router.html', routers=routers)

@rutas_routers.route('/vercontacta')
def vercontacta():
    return render_template('contacta.html')

@rutas_routers.route('/verdiagramared')
def verdiagramared():
    return render_template('diagramared.html')