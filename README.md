# MySQL Practice Questions & Answers (Chapter-Wise)

A structured collection of **MySQL practice questions with answers**, organized chapter-wise.  
Useful for **beginners, interview preparation, exams, and hands-on SQL practice**.

---

## 📘 Chapter 1: MySQL Basics

**Q1. What is MySQL?**  
**A:** MySQL is an open-source Relational Database Management System (RDBMS) that uses SQL to manage data.

**Q2. What is a database?**  
**A:** A structured collection of data stored electronically and managed using a DBMS.

**Q3. Difference between SQL and MySQL?**  
- **SQL** → Query language  
- **MySQL** → Database system that uses SQL

**Q4. What are tables?**  
**A:** Tables store data in rows and columns.

---

## 📘 Chapter 2: Data Types

**Q1. Common MySQL data types?**  
- **Numeric:** `INT`, `FLOAT`, `DECIMAL`  
- **String:** `VARCHAR`, `CHAR`, `TEXT`  
- **Date/Time:** `DATE`, `DATETIME`, `TIMESTAMP`

**Q2. Difference between CHAR and VARCHAR?**  
- `CHAR` → Fixed length  
- `VARCHAR` → Variable length (memory efficient)

---

## 📘 Chapter 3: DDL (Data Definition Language)

**Q1. Create a table**
```sql
CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100)
);
```
## 📘 Chapter 3: DDL (Data Definition Language)

**Q2. DROP vs TRUNCATE?**

- `DROP` → Deletes table structure and data  
- `TRUNCATE` → Deletes all data (faster)

**Q3. Add a column**
```sql
ALTER TABLE users ADD age INT;
```


