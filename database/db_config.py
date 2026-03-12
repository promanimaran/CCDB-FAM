import mysql.connector
from mysql.connector import pooling

db_config = {
    "host": "localhost",
    "user": "root",
    "password": "",  
    "database": "CentralizedCollegeDB"
}

try:
    db_pool = mysql.connector.pooling.MySQLConnectionPool(
        pool_name="college_pool",
        pool_size=10, 
        **db_config
    )
except Exception as err:
    print(f"Error creating pool: {err}")

def get_connection():
    return db_pool.get_connection()