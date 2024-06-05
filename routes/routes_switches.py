import random
from flask import Flask, Blueprint, render_template, request, redirect, url_for

from app import db
from app.data.switch_dao import SwitchDao

rutas_switches = Blueprint("switches", __name__)

@rutas_switches.route('/')
def index():
    return render_template('index.html')

@rutas_switches.route('/verSwitches')
def verSwitches():
    switch_dao = SwitchDao()
    switches = switch_dao.select_all(db)
    return render_template('switch.html', switches=switches)