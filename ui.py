from tkinter.constants import TRUE
import PySimpleGUI as ui
import sqlite3
from sqlite3 import Error
from PySimpleGUI.PySimpleGUI import WIN_CLOSED

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
        bulletHeaders = ['Caliber', 'Name', 'Damage', 'Penetration Power', 'Armor Damage', 'Accuracy Modifier', 'Recoil Modifier', 'Fragmentation Chance', 'Riccohet Chance', 'Light Bleed Modifier', 'Heavy Bleed Modifier', 'Velocity', 'Special', 'Vendors']

        bulletData = _conn.execute("SELECT * FROM BulletData")

        bulletDat = bulletData.fetchall()
        
        layout = [
            [ui.Text('Escape from Tarkov Forum and Loadout')],
            [ui.Table(bulletDat, headings=bulletHeaders, justification='left', key= "-BulletData-")],
            [ui.Button('Next'), ui.Button('Exit')]
        ]

        return layout
    except Error as e:
        print(e)

def getLayout(_conn, _query):
    try:
        #bulletHeaders = ['Caliber', 'Name', 'Damage', 'Penetration Power', 'Armor Damage', 'Accuracy Modifier', 'Recoil Modifier', 'Fragmentation Chance', 'Riccohet Chance', 'Light Bleed Modifier', 'Heavy Bleed Modifier', 'Velocity', 'Special', 'Vendors']

        db = _conn.execute(_query)

        headers = [description[0] for description in db.description]

        layoutForm = db.fetchall()

        layout = [
            [ui.Text('Escape from Tarkov Bullets and Stuff')],
            [ui.Table(layoutForm, headings=headers, justification='left', key= "-BulletData-")],
            [ui.Button('Next'), ui.Button('Exit')]
        ]

        return layout
    except Error as e:
        print(e)


def main():

    database = r"gunDB.sqlite"

    conn = openConnection(database)

    #query = "SELECT * FROM BulletData"

    query = """
        SELECT  v_codeName, b_caliburKey, b_dmg, p_price
        FROM    Vendors, BulletData, Prices, Caliburs
        WHERE   v_vendorKey = p_vendorKey
        AND     p_calName = b_name
        AND     c_caliburKey = b_caliburKey
        AND     c_gunType != "SG"
        ORDER BY    CAST(b_dmg AS INT) DESC;
    """

    layout = getLayout(conn, query)

    window = ui.Window('Escape from Tarkov B&S', layout, finalize=True)

    while True:
        event, values = window.read()
        if event == ui.WIN_CLOSED or event=='Exit':
            break
        
        if event == "Next":
            window['-BulletData-'].update("Hello")
        print(event, values)
        # if event == 'Next':
        #     #Resizes the output Window
        #     window['-OUTPUT-'].set_size((20,10))
        #     window['-OUTPUT-'].update("Hi")
    
    window.close()

if __name__ == '__main__':
    main()
