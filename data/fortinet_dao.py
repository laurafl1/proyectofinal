from app.data.modelo.fortinet import Fortinet

class FortinetDao:

    def select_all(self,db) -> list[Fortinet]:
        cursor = db.cursor()
        cursor.execute('SELECT * FROM Fortinets')
        fortinets_en_db = cursor.fetchall()
        fortinets : list[Fortinet] = list()
        for fortinet_en_db in fortinets_en_db:
            fortinets.append(Fortinet(fortinet_en_db[0], fortinet_en_db[1], fortinet_en_db[2], fortinet_en_db[3], fortinet_en_db[4], fortinet_en_db[5]))
        
        cursor.close()
        return fortinets