
Create Database CompanyDB;
GO

Use CompanyDB;


-- Create the Departments Table
CREATE TABLE Departments (
    DepartmentId INT PRIMARY KEY,
    Name VARCHAR(50) UNIQUE
);

-- Insert sample data into Departments
INSERT INTO Departments (DepartmentId, Name) VALUES (1, 'Human Resources');
INSERT INTO Departments (DepartmentId, Name) VALUES (2, 'Marketing');
INSERT INTO Departments (DepartmentId, Name) VALUES (3, 'Sales');
INSERT INTO Departments (DepartmentId, Name) VALUES (4, 'IT');

GO

--Create the Employees Table
CREATE TABLE Employees (
    EmployeeId INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentId INT,
    HireDate DATE,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentId)
);

GO

-- Insert sample data into Employees
INSERT INTO Employees (EmployeeId, Name, DepartmentId, HireDate) VALUES (1, 'John Smith', 3, '2023-01-10');
INSERT INTO Employees (EmployeeId, Name, DepartmentId, HireDate) VALUES (2, 'Jane Doe', 3, '2023-02-15');
INSERT INTO Employees (EmployeeId, Name, DepartmentId, HireDate) VALUES (3, 'Emily Davis', 2, '2023-03-20');
INSERT INTO Employees (EmployeeId, Name, DepartmentId, HireDate) VALUES (4, 'Michael Brown', 1, '2022-11-05');
INSERT INTO Employees (EmployeeId, Name, DepartmentId, HireDate) VALUES (5, 'Sarah Miller', 4, '2023-01-05');


-- Insert sample data into Sales
CREATE TABLE Sales (
    SaleId INT PRIMARY KEY,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2)
);

-- Inserting sample data into Sales
INSERT INTO Sales (SaleId, SaleDate, SaleAmount) VALUES (1, '2023-06-01', 150.00);
INSERT INTO Sales (SaleId, SaleDate, SaleAmount) VALUES (2, '2023-06-03', 200.00);
INSERT INTO Sales (SaleId, SaleDate, SaleAmount) VALUES (3, '2023-06-05', 50.00);
INSERT INTO Sales (SaleId, SaleDate, SaleAmount) VALUES (4, '2023-07-10', 300.00);
INSERT INTO Sales (SaleId, SaleDate, SaleAmount) VALUES (5, '2023-07-11', 250.00);


-- Inserting sample data into EmployeeAttendance
CREATE TABLE EmployeeAttendance (
    RecordId INT IdENTITY(1,1) PRIMARY KEY,
    EmployeeId INT,
    AttendanceDate DATE,
    Status VARCHAR(10) -- Values could be 'Present', 'Absent', 'Leave'
    CONSTRAINT FK_EmployeeAttendance_EmployeeId FOREIGN KEY(EmployeeId)
    REFERENCES Employees(EmployeeId)
);

-- Inserting sample data into EmployeeAttendance
INSERT INTO EmployeeAttendance (EmployeeId, AttendanceDate, Status) VALUES (1, '2023-07-01', 'Present');
INSERT INTO EmployeeAttendance (EmployeeId, AttendanceDate, Status) VALUES (2, '2023-07-01', 'Absent');
INSERT INTO EmployeeAttendance (EmployeeId, AttendanceDate, Status) VALUES (3, '2023-07-01', 'Leave');
INSERT INTO EmployeeAttendance (EmployeeId, AttendanceDate, Status) VALUES (4, '2023-07-02', 'Present');
INSERT INTO EmployeeAttendance (EmployeeId, AttendanceDate, Status) VALUES (5, '2023-07-02', 'Present');


-- Creating Customers table
CREATE TABLE Customers (
    CustomerId INT IdENTITY(1, 1) PRIMARY KEY,
    Name VARCHAR(50),
    LoyaltyPoints INT
);

-- Inserting sample data into Customers
INSERT INTO Customers (Name, LoyaltyPoints) VALUES ('John Doe', 0);
INSERT INTO Customers (Name, LoyaltyPoints) VALUES ('Jane Smith', 0);
INSERT INTO Customers (Name, LoyaltyPoints) VALUES ('Emily White', 0);


-- Creating Purchases table
CREATE TABLE Purchases (
    PurchaseId INT IdENTITY(1, 1) PRIMARY KEY,
    CustomerId INT,
    PurchaseDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);

-- Inserting sample data into Purchases
INSERT INTO Purchases (CustomerId, PurchaseDate, Amount) VALUES (1, '2023-07-01', 120.00);
INSERT INTO Purchases (CustomerId, PurchaseDate, Amount) VALUES (2, '2023-07-02', 60.00);
INSERT INTO Purchases (CustomerId, PurchaseDate, Amount) VALUES (1, '2023-07-03', 30.00);


CREATE TABLE Employees2 (
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    PerformanceRating INT
);

-- Create Accounts Table
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    Balance DECIMAL(10, 2)
);


-- Create Transactions Table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY IDENTITY(1,1),
    FromAccount INT,
    ToAccount INT,
    Amount DECIMAL(10, 2),
    Date DATETIME
);


-- Insert Sample Data into Accounts
INSERT INTO Accounts (AccountID, Balance) VALUES (1, 500.00); -- Account 1
INSERT INTO Accounts (AccountID, Balance) VALUES (2, 300.00); -- Account 2

INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 1', 'Marketing', 90651, 81);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 2', 'Marketing', 62945, 75);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 3', 'HR', 59665, 80);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 4', 'HR', 93279, 64);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 5', 'IT', 111884, 72);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 6', 'HR', 63199, 96);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 7', 'Marketing', 96372, 74);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 8', 'HR', 106907, 75);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 9', 'HR', 91444, 69);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 10', 'IT', 76801, 94);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 11', 'Marketing', 112522, 88);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 12', 'IT', 108024, 65);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 13', 'HR', 118334, 65);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 14', 'Marketing', 84143, 80);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 15', 'IT', 58163, 92);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 16', 'HR', 51840, 91);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 17', 'Marketing', 62225, 66);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 18', 'Marketing', 102274, 79);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 19', 'Marketing', 50149, 95);
INSERT INTO Employees2 (Name, Department, Salary, PerformanceRating) VALUES ('Employee 20', 'Marketing', 114694, 78);
