import sqlite3
from sqlite3 import Error
from typing import Match


def openConnection(_dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Open database: ", _dbFile)


    conn = None
    try:
        conn = sqlite3.connect(_dbFile)
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")

    return conn

def closeConnection(_conn, _dbFile):
    print("++++++++++++++++++++++++++++++++++")
    print("Close database: ", _dbFile)

    try:
        _conn.close()
        print("success")
    except Error as e:
        print(e)

    print("++++++++++++++++++++++++++++++++++")

def printBulletData(_conn):
    try:
        l = '{:<10} {:<10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10}'.format("Caliber", "Name", "Damage", "PenPwr","ArmorDmg", "AccMod", "RecMod", "FragChance", "RiccChance", "LBleed", "HBleed","Velocity", "Special", "Vendor")
        print(l)
        
        bulletInfo = _conn.fetchall()

        for row in bulletInfo:
            output = '{:<10} {:<10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10} {:>10}'.format(row[0], row[1], row[2], row[3],row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12], row[13])
            print(output)
        

    except Error as e:
        print(e)

def printVendors(_conn):
    try:
        l = '{:<10} {:<13} {:<10}'.format("Vendor ID", "Nickname", "Real Name")
        print(l)

        query = """
        SELECT *
        FROM    Vendors;
        """
        vendorsList = _conn.execute(query)

        vendorInfo = vendorsList.fetchall()

        for row in vendorInfo:
            output = '{:<10} {:<13} {:<10}'.format(row[0], row[1], row[2])
            print(output)

    except Error as e:
        print(e)

def printGuns(_conn):
    try:
        l = '{:<10} {:<17} {:<30} {:<10} {:<10}'.format("Caliber", "Gun Name", "FireMode", "Rate of Fire", "Type")
        print(l)

        gunInfo = _conn.fetchall()

        for row in gunInfo:
            output = '{:<10} {:<17} {:<30} {:<10} {:<10}'.format(row[0], row[1], row[2], row[3], row[4])
            print(output)

    except Error as e:
        print(e)

def printGrenades(_conn):
    try:
        l = '{:<10} {:<17} {:<20} {:<10} {:<20} {:<15}'.format("Grenade", "Type", "Delay", "Fragment", "Damage per Fragment", "Explosion Radius")
        print(l)

        boomInfo = _conn.fetchall()

        for row in boomInfo:
            output = '{:<10} {:<17} {:<20} {:<10} {:<20} {:<15}'.format(row[0], row[1], row[2], row[3], row[4], row[5])
            print(output)

    except Error as e:
        print(e)

def printPrices(_conn):
    try:
        l = '{:<15} {:<30} {:<20} {:<10}'.format("Vendor ID", "Caliber Name", "Currency", "Price")
        print(l)

        boomInfo = _conn.fetchall()

        for row in boomInfo:
            output = '{:<15} {:<30} {:<20} {:<10}'.format(row[0], row[1], row[2], row[3])
            print(output)

    except Error as e:
        print(e)

def printMultiVendorTable(_conn):
    try:
        l = '{:<13} {:<20} {:<20} {:<10} {:<10}'.format("Vendor", "Caliber", "Name", "Price", "Currency")
        print(l)

        multiInfo = _conn.fetchall()

        for row in multiInfo:
            output = '{:<13} {:<20} {:<20} {:<10} {:<10}'.format(row[0], row[1], row[2], row[3], row[4])
            print(output)

    except Error as e:
        print(e)

def printHighestDamageBullet(_conn):
    try:
        l = '{:<13} {:<20} {:<20} {:<10} '.format("Vendor", "Caliber", "Damage", "Price")
        print(l)

        multiInfo = _conn.fetchall()

        for row in multiInfo:
            output = '{:<13} {:<20} {:<20} {:<10} '.format(row[0], row[1], row[2], row[3])
            print(output)

    except Error as e:
        print(e)

def printMostExpensiveGrenade(_conn):
    try:
        l = '{:<13} {:<20} {:<20} '.format("Vendor", "Grenade", "Price")
        print(l)

        multiInfo = _conn.fetchall()

        for row in multiInfo:
            output = '{:<13} {:<20} {:<20}'.format(row[0], row[1], row[2])
            print(output)

    except Error as e:
        print(e)

def main():

    database = r"gunDB.sqlite"
    conn = openConnection(database)
    print("Welcome to the Escape from Tarkov Bullet Data Info Application")
    # 0 = Main Menu
    menuLocation = 0

    whatDo = 0
    while menuLocation >=0:
        if menuLocation is 0:
            print("===============================================================================================================")
            print("Please choose what you'd like to know about.")
            print("Any Number Less than 0 will quit the app.")
            print("1 - Bullet")
            print("2 - Vendor")
            print("3 - Guns")
            print("4 - Grenades")
            print("5 - Prices")
            print("6 - Complex Queries")
            menuLocation = int(input(">> "))
        if menuLocation is 1:
            print("What do you want know about the bullets? (Return to main menu, use a negative number)")
            print("1 - List all the bullet information")
            print("2 - Where to find the bullets")
            print("3 - Which Caliber")

            whatDo = int(input(">> "))
            if whatDo is 1:
                query = """
                SELECT *
                FROM    BulletData;
                """

                sql = conn.execute(query)

                printBulletData(sql)
            elif whatDo is 2:
                query ="""
                SELECT *
                FROM    BulletData
                WHERE   b_vendorKey = ?;
                """
                print("How do you want to find the bullet?")
                print("0 - Prapor")
                print("1 - Therapist")
                print("2 - Fence")
                print("3 - Skier")
                print("4 - PeaceKeeper")
                print("5 - Mechanic")
                print("6 - Jaeger")
                print("7 - Ragman")
                print("8 - Found in Raid or Crafted")
                print("9 - Loot Only")

                whichVendor = int(input(">> "))
                args = [whichVendor]
                sql = conn.execute(query, args)

                printBulletData(sql)
            elif whatDo is 3:
                query ="""
                SELECT      *
                FROM        BulletData
                WHERE       b_caliburKey = ?
                ORDER BY    b_dmg DESC;
                """
                print("What caliber bullet are you looking for?")
                print("0 - 7.62x25mm Tokarev| 10 - 7.62x39mm")
                print("1 - 9x18mm Makarov   | 11 - 7.62x51mm NATO")
                print("2 - 9x19mm Parabellum| 12 - 7.62x54Rmm")
                print("3 - 9x21mm Gyurza    | 13 - .338 Lapua Magnum")
                print("4 - .45 ACP          | 14 - 9x39mm")
                print("5 - 4.6x30mm HK      | 15 - .366 TKM")
                print("6 - 5.7x28mm FN      | 16 - 12.7x55mm STs-130")
                print("7 - 5.45x39mm        | 17 - 12x70mm")
                print("8 - 5.56x45mm NATO   | 18 - 20x70mm")
                print("9 - .300 Blackout    | 19 - 23x75mm")

                whichCal = int(input(">> "))
                if whichCal is 0:
                    args = ["7.62x25mm"]
                elif whichCal is 1:
                    args = ["9x18mm"]
                elif whichCal is 2:
                    args = ["9x19mm"]
                elif whichCal is 3:
                    args = ["9x21mm"]
                elif whichCal is 4:
                    args = [".45 ACP"]
                elif whichCal is 5:
                    args = ["4.6x30mm"]
                elif whichCal is 6:
                    args = ["5.7x28mm"]
                elif whichCal is 7:
                    args = ["5.45x39mm"]
                elif whichCal is 8:
                    args = ["5.56x45mm"]
                elif whichCal is 9:
                    args = [".300"]
                elif whichCal is 10:
                    args = ["7.62x39mm"]
                elif whichCal is 11:
                    args = ["7.62x51mm"]
                elif whichCal is 12:
                    args = ["7.62x54Rmm"]
                elif whichCal is 13:
                    args = [".338"]
                elif whichCal is 14:
                    args = ["9x39mm"]
                elif whichCal is 15:
                    args = [".366"]
                elif whichCal is 16:
                    args = ["12.7x55mm"]
                elif whichCal is 17:
                    args = ["12x70mm"]
                elif whichCal is 18:
                    args = ["20x70mm"]
                elif whichCal is 19:
                    args = ["23x75mm"]

                sql = conn.execute(query, args)
                printBulletData(sql)

            if whatDo > 0:
                menuLocation = 0
        elif menuLocation is 2:
            print("Here is a list of all the vendors.")
            printVendors(conn)
            menuLocation = 0
        elif menuLocation is 3:
            print("Which Gun are you looking for?")
            print("0 - List all guns")
            print("1 - Pistol")
            print("2 - Submachine Gun")
            print("3 - Assualt Rifle")
            print("4 - Assualt Carbines")
            print("5 - Designated Marksman Rifle")
            print("6 - Sniper Rifle")
            print("7 - Shotguns")
            whatDo = int(input(">> "))

            if whatDo is 0:
                query = """
                SELECT *
                FROM    GunType;
                """
                sql = conn.execute(query)
                printGuns(sql)
            elif whatDo is 1:
                query = """
                SELECT *
                FROM    GunType
                WHERE   t_gunType LIKE "%Pistol%";
                """
                sql = conn.execute(query)
                printGuns(sql)
            elif whatDo is 2:
                query = """
                SELECT *
                FROM    GunType
                WHERE   t_gunType LIKE "%SMGs%";
                """
                sql = conn.execute(query)
                printGuns(sql)
            elif whatDo is 3:
                query = """
                SELECT *
                FROM    GunType
                WHERE   t_gunType LIKE "%AR%";
                """
                sql = conn.execute(query)
                printGuns(sql)
            elif whatDo is 4:
                query = """
                SELECT *
                FROM    GunType
                WHERE   t_gunType LIKE "%AC%";
                """
                sql = conn.execute(query)
                printGuns(sql)
            elif whatDo is 5:
                query = """
                SELECT *
                FROM    GunType
                WHERE   t_gunType LIKE "%DMR%";
                """
                sql = conn.execute(query)
                printGuns(sql)
            elif whatDo is 6:
                query = """
                SELECT *
                FROM    GunType
                WHERE   t_gunType LIKE "%Sniper Rifle%";
                """
                sql = conn.execute(query)
                printGuns(sql)
            elif whatDo is 7:
                query = """
                SELECT *
                FROM    GunType
                WHERE   t_gunType LIKE "%SG%";
                """
                sql = conn.execute(query)
                printGuns(sql)
            else:
                menuLocation = 0
        elif menuLocation is 4:
            print("Which Grenade are you looking for?")
            print("0 - List all grenades")
            print("1 - Most to least expensive grenade (Complex Query: 3 Tables)")
            print("2 - Submachine Gun")
            # print("3 - Assualt Rifle")
            # print("4 - Assualt Carbines")
            # print("5 - Designated Marksman Rifle")
            # print("6 - Sniper Rifle")
            # print("7 - Shotguns")
            whatDo = int(input(">> "))

            if whatDo is 0:
                query = """
                SELECT *
                FROM    GrenadeData;
                """
                sql = conn.execute(query)
                printGrenades(sql)
            if whatDo is 1:
                query = """
                SELECT      v_codeName, g_priceKey, p_price
                FROM        Vendors, GrenadeData, Prices
                WHERE       v_vendorKey = p_vendorKey
                AND         p_calName = g_priceKey
                GROUP BY    p_price
                ORDER BY    p_price DESC;
                """
                sql = conn.execute(query)
                printMostExpensiveGrenade(sql)
            else:
                menuLocation = 0
        elif menuLocation is 5:
            print("Bullet Prices")
            print("0 - List all prices")
            print("1 - Find bullet prices less than input")
            print("2 - Find bullet prices above the input")
            # print("3 - Assualt Rifle")
            # print("4 - Assualt Carbines")
            # print("5 - Designated Marksman Rifle")
            # print("6 - Sniper Rifle")
            # print("7 - Shotguns")
            whatDo = int(input(">> "))

            if whatDo is 0:
                query = """
                SELECT v_codename, p_calName, p_price, p_currency
                FROM    Prices, Vendors
                WHERE   p_vendorKey = v_vendorKey;
                """
                sql = conn.execute(query)
                printPrices(sql)
            elif whatDo is 1:
                query = """
                SELECT  v_codename, p_calName, p_price, p_currency
                FROM    Prices, Vendors
                WHERE   p_vendorKey = v_vendorKey
                AND     p_price<?
                ORDER BY CAST(p_price AS INT) DESC
                """
                bulletPrice = int(input("All bullets under what price?: "))
                args = [bulletPrice]

                sql = conn.execute(query, args)

                printPrices(sql)
            elif whatDo is 2:
                query = """
                SELECT  v_codename, p_calName, p_price, p_currency
                FROM    Prices, Vendors
                WHERE   p_vendorKey = v_vendorKey
                AND     p_price>?
                ORDER BY CAST(p_price AS INT) DESC
                """
                bulletPrice = int(input("All bullets above what price?: "))
                args = [bulletPrice]

                sql = conn.execute(query, args)

                printPrices(sql)
            else:
                menuLocation = 0
        elif menuLocation is 6:
            print("Which Complex Query do you want to use?")
            print("0 - Vendors which sell the same item. (Many2Many)")
            print("1 - Highest Damage Bullet (Complex Query: 4 Tables)")

            whatDo = int(input(">> "))
            if whatDo is 0:
                query = """
                SELECT  v_codeName, b_caliburKey, b_name, p_price, p_currency
                FROM    MultiVendors, Vendors, BulletData, Prices
                WHERE   mv_calKey =  b_name
                AND     mv_vendorKey = v_vendorKey
                AND     p_calName = b_name;
                """
                sql = conn.execute(query)
                printMultiVendorTable(sql)
            elif whatDo is 1:
                query = """
                SELECT  v_codeName, b_caliburKey, b_dmg, p_price
                FROM    Vendors, BulletData, Prices, Caliburs
                WHERE   v_vendorKey = p_vendorKey
                AND     p_calName = b_name
                AND     c_caliburKey = b_caliburKey
                AND     c_gunType != "SG"
                ORDER BY    CAST(b_dmg AS INT) DESC;
                """
                sql = conn.execute(query)
                printHighestDamageBullet(sql)

            

            else:
                menuLocation = 0



if __name__ == '__main__':
    main()
