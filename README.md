# Centralized College Database Management System

A professional DBMS mini-project that implements a **Centralized College Database** using an ER-model-driven relational schema.

This project provides a Flask + MySQL application to manage core college entities such as:
- Students
- Departments
- Staff
- Courses
- Marks

## Project Objective

Build a centralized database platform where academic and administrative data can be stored, linked, and managed from one system using proper relational design.

## Core Features

- Add, view, update, and delete student records
- MySQL schema designed from ER diagram concepts
- Sample data for quick demonstration
- Clean Flask routes + Jinja templates
- Separate SQL scripts for schema and sample records

## Suggested Project Title (for report/submission)

**Centralized College Database Management System Based on ER Diagram Design**

Alternative titles:
1. **Design and Implementation of a Centralized College DBMS**
2. **ER-Driven College Information Management System Using Flask and MySQL**
3. **Centralized Academic Database for Students, Staff, Courses, and Marks**

## Technology Stack

- **Backend:** Python (Flask)
- **Database:** MySQL
- **Frontend:** HTML, CSS, Jinja templates
- **Tools:** XAMPP/phpMyAdmin (optional for local MySQL management)

## Database Setup

1. Start MySQL server (XAMPP or standalone MySQL).
2. Create a database named `CentralizedCollegeDB`.
3. Import:
   - `database/schema.sql`
   - `database/sample_data.sql`
4. Update DB credentials in `app.py` if needed.

## Run the Application

```bash
pip install -r requirements.txt
python app.py
```

Open in browser:

```text
http://127.0.0.1:5000
```

## GitHub Integration (ready-to-use commands)

```bash
# go to your project folder
cd centralized_college_management

# initialize git (first time only)
git init

# stage files
git add .

# commit
git commit -m "Initial commit - Centralized College Database Management System"

# connect your repo
git remote add origin https://github.com/<your-username>/centralized_college_management.git

# push to main
git branch -M main
git push -u origin main
```

## Suggested Viva/Presentation Abstract

This project presents a Centralized College Database Management System designed from an ER diagram and implemented using MySQL and Flask. The system models key institutional entities such as students, staff, departments, courses, and marks, and connects them through relational constraints. It demonstrates how ER-to-relational mapping improves data consistency, reduces redundancy, and supports academic operations like student record maintenance and performance tracking.
