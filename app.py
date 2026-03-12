from flask import Flask, render_template, request, redirect, url_for
import mysql.connector

app = Flask(__name__)

# Database Configuration
def get_db():
    return mysql.connector.connect(
        host="localhost",
        user="root",      
        password=" ",  # <--- Change this!
        database="CentralizedCollegeDB"
    )

@app.route('/')
def index():
    db = get_db()
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM Student")
    students = cursor.fetchall()
    db.close()
    return render_template('index.html', students=students)

@app.route('/add', methods=['POST'])
def add_student():
    sid = request.form['sid']
    name = request.form['name']
    dept = request.form['dept']
    db = get_db()
    cursor = db.cursor()
    cursor.execute("INSERT INTO Student (STUDENT_ID, NAME, DEPT_ID) VALUES (%s, %s, %s)", (sid, name, dept))
    db.commit()
    db.close()
    return redirect(url_for('index'))

@app.route('/delete/<int:id>')
def delete_student(id):
    db = get_db()
    cursor = db.cursor()
    cursor.execute("DELETE FROM Student WHERE STUDENT_ID = %s", (id,))
    db.commit()
    db.close()
    return redirect(url_for('index'))

@app.route('/update', methods=['POST'])
def update_student():
    sid = request.form['sid']
    name = request.form['name']
    db = get_db()
    cursor = db.cursor()
    cursor.execute("UPDATE Student SET NAME = %s WHERE STUDENT_ID = %s", (name, sid))
    db.commit()
    db.close()
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(debug=True)