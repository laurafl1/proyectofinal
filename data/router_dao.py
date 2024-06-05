from app.data.modelo.router import Router

class RouterDao:

    def select_all(self,db) -> list[Router]:
        cursor = db.cursor()
        cursor.execute('SELECT * FROM Routers')
        routers_en_db = cursor.fetchall()
        routers : list[Router] = list()
        for router_en_db in routers_en_db:
            routers.append(Router(router_en_db[0], router_en_db[1], router_en_db[2], router_en_db[3], router_en_db[4], router_en_db[5], router_en_db[6], router_en_db[7], router_en_db[8]))
        
        cursor.close()
        return routers