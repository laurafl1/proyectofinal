import random
from flask import Flask, Blueprint, render_template, request, redirect, url_for

from app import db
from app.data.hub_dao import HubDao

rutas_hubs = Blueprint("hubs", __name__)

@rutas_hubs.route('/')
def index():
    return render_template('index.html')

@rutas_hubs.route('/verhubs')
def verHubs():
    hub_dao = HubDao()
    hubs = hub_dao.select_all(db)
    return render_template('hub.html', hubs=hubs)