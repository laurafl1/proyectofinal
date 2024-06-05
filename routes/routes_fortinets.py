import random
from flask import Flask, Blueprint, render_template, request, redirect, url_for

from app import db
from app.data.fortinet_dao import FortinetDao

rutas_fortinets = Blueprint("fortinets", __name__)

@rutas_fortinets.route('/')
def index():
    return render_template('index.html')

@rutas_fortinets.route('/verFortinets')
def verFortinets():
    fortinet_dao = FortinetDao()
    fortinets = fortinet_dao.select_all(db)
    return render_template('fortinet.html', fortinets=fortinets)