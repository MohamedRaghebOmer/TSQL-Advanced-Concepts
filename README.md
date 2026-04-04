# 📘 T-SQL Advanced Concepts

A comprehensive collection of **T-SQL scripts** covering advanced SQL Server programming concepts. This repository serves as a practical learning resource and reference guide for mastering T-SQL fundamentals and advanced techniques.

![SQL Server](https://img.shields.io/badge/SQL%20Server-T--SQL-CC2927?style=flat&logo=microsoftsqlserver&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Learning](https://img.shields.io/badge/Purpose-Learning-blue)

---

## 📋 Overview

This repository contains **15 structured modules** with hands-on T-SQL scripts that progressively cover SQL Server programming—from basic variable declaration to advanced topics like recursive CTEs, triggers, and dynamic SQL. Each module includes multiple practical examples with clear comments and real-world scenarios.

---

## 🎯 Course Context / Learning Purpose

This project was developed as part of my journey to master **advanced T-SQL programming**. It represents practical implementations of concepts learned, focusing on:

- Building a strong foundation in SQL Server procedural programming
- Understanding database programming patterns used in enterprise applications
- Developing skills for writing efficient, maintainable, and secure T-SQL code
- Preparing for real-world database development scenarios

> **Note:** This is an educational repository designed for learning and reference purposes, not a production application.

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| **Microsoft SQL Server** | Database engine |
| **T-SQL** | Query and programming language |
| **SQL Server Management Studio (SSMS)** | Development environment |

---

## 📁 Project Structure

```
TSQL-Advanced-Concepts/
│
├── 01_Variables/                    # Variable declaration and assignment
├── 02_IfStatment/                   # Conditional logic with IF statements
├── 03_CaseStatement/                # CASE expressions and conditional queries
├── 04_WhileLoop/                    # Iterative processing with WHILE loops
├── 05_ErrorHandling_TryCatch/       # Exception handling and error management
├── 06_Transactions/                 # Transaction control and ACID compliance
├── 07_TempTable/                    # Temporary tables and table variables
├── 08_StoredProcedures/             # Creating and managing stored procedures
├── 09_BuiltInFunctions/             # String, date, and aggregate functions
├── 10_WindowFunctions/              # ROW_NUMBER, RANK, LAG/LEAD, pagination
├── 11_ScalarAndTableValuedFunctions/ # User-defined functions (UDFs)
├── 12_DynamicSqlAndSqlInjection/    # Dynamic SQL and security awareness
├── 13_Triggers/                     # AFTER and INSTEAD OF triggers
├── 14_Cursors/                      # Cursor types and row-by-row processing
├── 15_CTE/                          # Common Table Expressions and recursion
│
├── SampleDatabaseBackup/            # Sample database backup file (.bak)
├── LICENSE                          # MIT License
└── README.md                        # This file
```

---

## 📚 Main Features / Modules

### 1. Variables
- Declaration and assignment using `SET` and `SELECT`
- Practical examples: Employee reports, sales summaries, loyalty points calculation

### 2. IF Statements
- Simple, nested, and compound conditional logic
- Integration with `EXISTS`, `AND`, `OR`, `NOT` operators
- Error handling patterns with IF

### 3. CASE Statements
- Simple CASE as switch-like expressions
- CASE in `ORDER BY` for custom sorting
- Conditional updates and aggregations with `GROUP BY`

### 4. WHILE Loops
- Counters, table iteration, and conditional exits
- Nested loops (multiplication tables)
- `BREAK` and `CONTINUE` control flow

### 5. Error Handling (TRY...CATCH)
- Exception handling syntax and best practices
- Error functions: `ERROR_NUMBER()`, `ERROR_MESSAGE()`, `ERROR_STATE()`
- Custom error throwing with `THROW`
- `@@ERROR` and `@@ROWCOUNT` system variables

### 6. Transactions
- Bank transfer simulation with full validation
- Production-level transaction handling
- Commit and rollback patterns

### 7. Temporary Tables
- Table variables vs. temporary tables
- Scope and performance considerations

### 8. Stored Procedures
- CRUD operations with stored procedures
- Input/output parameters and return values
- Using `sp_helptext` for procedure inspection

### 9. Built-in Functions
- String manipulation functions
- Date/time functions
- Aggregate functions

### 10. Window Functions
- Ranking: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`
- Partitioning with `PARTITION BY`
- Analytics: `LAG()` and `LEAD()`
- Pagination with `OFFSET FETCH`

### 11. User-Defined Functions
- Scalar functions
- Inline table-valued functions
- Multi-statement table-valued functions

### 12. Dynamic SQL & SQL Injection
- Building and executing dynamic queries
- **SQL injection demonstration** for security awareness

### 13. Triggers
- `AFTER INSERT/UPDATE/DELETE` triggers
- `INSTEAD OF` triggers for complex logic
- Audit logging patterns

### 14. Cursors
- Static, dynamic, forward-only, and scrollable cursors
- Understanding cursor types and their use cases

### 15. Common Table Expressions (CTEs)
- Basic CTE syntax
- **Recursive CTEs** for hierarchical data
- Practical examples: Employee hierarchies, date series generation, duplicate detection, ranking

---

## 📖 What I Learned / What I Practiced

Through building this repository, I developed proficiency in:

| Skill | Description |
|-------|-------------|
| **Procedural T-SQL** | Writing efficient control flow with variables, loops, and conditions |
| **Error Handling** | Implementing robust TRY...CATCH blocks and custom error management |
| **Transaction Management** | Ensuring data integrity with proper commit/rollback patterns |
| **Performance Optimization** | Understanding when to use temp tables, CTEs, and window functions |
| **Security Awareness** | Recognizing SQL injection vulnerabilities and prevention techniques |
| **Modular Code** | Creating reusable stored procedures and functions |
| **Advanced Queries** | Leveraging window functions, CTEs, and dynamic SQL |
| **Database Triggers** | Implementing audit trails and business rule enforcement |

---

## ⚙️ Setup / Installation

### Prerequisites
- **Microsoft SQL Server** (2016 or later recommended)
- **SQL Server Management Studio (SSMS)** or **Azure Data Studio**

### Getting Started
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/TSQL-Advanced-Concepts.git
   ```
2. Open SSMS and connect to your SQL Server instance
3. Navigate to any module folder and open the `.sql` files

---

## ▶️ How to Run the Project

1. Open any `.sql` file in SSMS or Azure Data Studio
2. Connect to your SQL Server instance
3. Execute scripts in numerical order within each module
4. Review the comments for explanations and expected results

> **Tip:** Each script is self-contained with comments explaining the concept being demonstrated.

---

## 🗄️ Database Setup

### Option 1: Restore Sample Database (Recommended)

A ready-to-use sample database backup is included in the `SampleDatabaseBackup/` folder. This is the easiest way to get started:

1. Locate the backup file in `SampleDatabaseBackup/SampleDatabaseBackup`
2. Restore the database using SSMS:
   - Right-click **Databases** → **Restore Database...**
   - Select **Device** → Click **...** → **Add** → Browse to the backup file
   - Click **OK** to restore
3. Or use T-SQL:
   ```sql
   RESTORE DATABASE SampleDB
   FROM DISK = 'C:\Path\To\SampleDatabaseBackup\SampleDatabaseBackup'
   WITH MOVE 'SampleDB' TO 'C:\SQL\Data\SampleDB.mdf',
        MOVE 'SampleDB_log' TO 'C:\SQL\Data\SampleDB_log.ldf',
        REPLACE;
   ```

> **Note:** Adjust the file paths according to your SQL Server installation.

### Option 2: Create Tables Manually

If you prefer to create tables manually, use these sample structures:

```sql
-- Example: Students table used in multiple modules
CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50),
    Subject NVARCHAR(50),
    Grade INT
);

-- Example: Employees table
CREATE TABLE Employees (
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    DepartmentId INT,
    ManagerID INT NULL
);

-- Example: Accounts table for transaction demos
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    Balance DECIMAL(10,2)
);
```

> **Note:** Specific table structures may vary per script. Refer to individual scripts for exact requirements.

---

## 📝 Notes / Limitations

- Scripts are designed for **learning purposes** and may require adaptation for production use
- Sample data and table structures should be created before running certain scripts
- Some modules reference tables like `Students`, `Employees`, `Departments`, and `Accounts`
- The SQL injection example in Module 12 is for **educational awareness only**—never use such patterns in production

---

## ✅ Conclusion

This repository represents my practical journey through advanced T-SQL programming. Each module builds upon the previous, creating a comprehensive reference for SQL Server development patterns.

Whether you're learning T-SQL, preparing for interviews, or looking for quick reference examples, I hope this collection proves useful.

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Mohamed Ragheb**

---

<p align="center">
  <i>⭐ If you find this repository helpful, please consider giving it a star!</i>
</p>
