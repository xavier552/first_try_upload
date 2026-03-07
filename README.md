<div align="center">

```
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░  ███████╗ ██████╗  ██╗                            ░
░  ██╔════╝██╔═══██╗ ██║                            ░
░  ███████╗██║   ██║ ██║                            ░
░  ╚════██║██║▄▄ ██║ ██║                            ░
░  ███████║╚██████╔╝ ███████╗                       ░
░  ╚══════╝ ╚══▀▀═╝  ╚══════╝                       ░
░        L E A R N I N G   J O U R N E Y            ░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
```

### 🗄️ Queries · Joins · Aggregations · DDL & DML · From Zero to Data



</div>

---

<div align="center">

## 🗂️ What's Inside

</div>

```
SQL_Learning/
│
├── 📁 basics/
│   ├── 🔰 select-queries/       → SELECT, WHERE, ORDER BY, LIMIT
│   ├── 🔤 string-functions/     → UPPER, LOWER, CONCAT, LENGTH
│   └── 🔢 numeric-functions/    → ROUND, CEIL, FLOOR, MOD
│
├── 📁 joins/
│   ├── 🔗 inner-join/           → Matching rows from both tables
│   ├── ⬅️  left-join/           → All rows from left + matched right
│   ├── ➡️  right-join/          → All rows from right + matched left
│   └── 🔄 full-outer-join/      → All rows from both tables
│
├── 📁 aggregations/
│   ├── 📊 group-by/             → GROUP BY, HAVING
│   └── 🔢 functions/            → COUNT, SUM, AVG, MIN, MAX
│
├── 📁 subqueries/               → Nested & Correlated Subqueries
│
├── 📁 ddl-dml/
│   ├── 🏗️  ddl/                 → CREATE, ALTER, DROP, TRUNCATE
│   └── ✏️  dml/                 → INSERT, UPDATE, DELETE
│
└── 📄 README.md
```

---

<div align="center">

## 📚 Topics Covered

</div>

<table align="center">
  <tr>
    <td align="center">🔰<br><b>SELECT Queries</b><br><sub>SELECT · WHERE · LIKE<br>ORDER BY · LIMIT · DISTINCT</sub></td>
    <td align="center">🔗<br><b>Joins</b><br><sub>INNER · LEFT · RIGHT<br>FULL OUTER · SELF JOIN<br>CROSS JOIN</sub></td>
    <td align="center">📊<br><b>Aggregations</b><br><sub>COUNT · SUM · AVG<br>MIN · MAX · GROUP BY<br>HAVING</sub></td>
  </tr>
  <tr>
    <td align="center">🔍<br><b>Subqueries</b><br><sub>Nested Queries<br>Correlated Subqueries<br>EXISTS · IN · ANY · ALL</sub></td>
    <td align="center">🏗️<br><b>DDL</b><br><sub>CREATE TABLE · ALTER<br>DROP · TRUNCATE<br>Constraints</sub></td>
    <td align="center">✏️<br><b>DML</b><br><sub>INSERT · UPDATE · DELETE<br>MERGE · UPSERT</sub></td>
  </tr>
  <tr>
    <td align="center">🔑<br><b>Constraints</b><br><sub>PRIMARY KEY · FOREIGN KEY<br>UNIQUE · NOT NULL<br>CHECK · DEFAULT</sub></td>
    <td align="center">🔤<br><b>Functions</b><br><sub>String · Date · Numeric<br>IFNULL · COALESCE<br>CASE WHEN</sub></td>
    <td align="center">🗃️<br><b>Views & Indexes</b><br><sub>CREATE VIEW<br>CREATE INDEX<br>Stored Procedures</sub></td>
  </tr>
</table>

---

<div align="center">

## 💡 Sample Query Snippets

</div>

**🔗 JOIN Example**
```sql
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.id
WHERE d.department_name = 'Engineering';
```

**📊 Aggregation Example**
```sql
SELECT department, COUNT(*) AS total_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000
ORDER BY avg_salary DESC;
```

**🔍 Subquery Example**
```sql
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
```

---

<div align="center">

## 📈 Learning Progress

</div>

```
SELECT & Filtering     ████████████████████  100% ✅
ORDER BY & LIMIT       ████████████████████  100% ✅
Joins                  ██████████████████░░   90% ✅
Aggregations           ████████████████░░░░   80% 🔄
Subqueries             ██████████████░░░░░░   70% 🔄
DDL (CREATE/ALTER)     ████████████░░░░░░░░   60% 🔄
DML (INSERT/UPDATE)    ████████████░░░░░░░░   60% 🔄
Functions              ██████████░░░░░░░░░░   50% 🔄
Views & Indexes        ██████░░░░░░░░░░░░░░   30% 🔄
Stored Procedures      ████░░░░░░░░░░░░░░░░   20% 🔄
```

---

<div align="center">

## 🛠️ Tools Used

</div>

<div align="center">

| Tool                      | Purpose                            |
|---------------------------|------------------------------------|
| 🔴 Oracle SQL Developer   | Writing & running SQL queries      |
| 📋 SQL*Plus (Oracle CLI)  | Command line database interaction  |
| 🐙 GitHub                 | Version control & portfolio        |

</div>

---

<div align="center">

## 👤 About Me

**Xavier Varghese** — Associate QA Engineer from India 🇮🇳

Learning Oracle SQL to strengthen my data querying skills for QA, test data management & automation.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/xavier-varghese-0b617624a)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/xavier552)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:xaviervarghese468@gmail.com)

---



</div>
