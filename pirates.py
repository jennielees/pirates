# Don't forget to create pirates.db first.
# sqlite3 pirates.db < pirates.sql

import sqlite3

DBFILE = 'pirates.db'

def connect_to_db():
    """ Get a connection and a cursor. """
    conn = sqlite3.connect(DBFILE)
    db = conn.cursor()
    return (conn, db)


def list_ingredients(db):
    query = """SELECT * FROM pirates;"""
    db.execute(query)
    results = db.fetchall()
    print "Pirate Roll Call:"
    for result in results:
        print result[1]


def main():
    (conn, db) = connect_to_db()
    list_ingredients(db)
    conn.close()


if __name__=="__main__":
    main()
