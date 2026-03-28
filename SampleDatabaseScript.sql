
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
