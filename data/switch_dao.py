from app.data.modelo.switch import Switch

class SwitchDao:

    def select_all(self,db) -> list[Switch]:
        cursor = db.cursor()
        cursor.execute('SELECT * FROM Switches')
        switches_en_db = cursor.fetchall()
        switches : list[Switch] = list()
        for switch_en_db in switches_en_db:
            switches.append(Switch(switch_en_db[0], switch_en_db[1], switch_en_db[2], switch_en_db[3], switch_en_db[4], switch_en_db[5], switch_en_db[6], switch_en_db[7]))
        
        cursor.close()
        return switches