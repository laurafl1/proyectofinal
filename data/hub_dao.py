from app.data.modelo.hub import Hub

class HubDao:

    def select_all(self,db) -> list[Hub]:
        cursor = db.cursor()
        cursor.execute('SELECT * FROM Hubs')
        hubs_en_db = cursor.fetchall()
        hubs : list[Hub] = list()
        for hub_en_db in hubs_en_db:
            hubs.append(Hub(hub_en_db[0], hub_en_db[1], hub_en_db[2], hub_en_db[3], hub_en_db[4], hub_en_db[5], hub_en_db[6], hub_en_db[7], hub_en_db[8]))
        
        cursor.close()
        return hubs