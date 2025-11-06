-- For MS SQL SERVER, Run Create Database individually first, then run USE, then run all create tables 
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Employee(SSN, Fname, Minit, Lname, Address, Salary, Sex)
CREATE TABLE Employee (
    SSN CHAR(9) PRIMARY KEY,
    Fname VARCHAR(50),
    Minit CHAR(1),
    Lname VARCHAR(50),
    Address VARCHAR(200),
    Salary DECIMAL(10,2),
    Sex CHAR(1)
);

-- Department(Number, Name)
CREATE TABLE Department (
    Number INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Project(Number, Name, Location, Dept_Number)
CREATE TABLE Project (
    Number INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    Dept_Number INT,
    
    FOREIGN KEY (Dept_Number) REFERENCES Department(Number)
);

-- Employee_WorksFor_Department(SSN, Dept_Number)
CREATE TABLE Employee_WorksFor_Department (
    SSN CHAR(9),
    Dept_Number INT,
    
    PRIMARY KEY (SSN, Dept_Number),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (Dept_Number) REFERENCES Department(Number)
);

-- Employee_Manages_Department (SSN, Dept_Number, Start_date)
CREATE TABLE Employee_Manages_Department (
    SSN CHAR(9),
    Dept_Number INT,
    Start_date DATE,
    
    PRIMARY KEY (SSN, Dept_Number),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (Dept_Number) REFERENCES Department(Number)
);

-- Employee_Dependent (SSN, Name, Sex, Birth_date, Relationship)
CREATE TABLE Employee_Dependent (
    SSN CHAR(9),
    Name VARCHAR(100),
    Sex CHAR(1),
    Birth_date DATE,
    Relationship VARCHAR(50),
    
    PRIMARY KEY (SSN, Name),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN)
);

-- Employee_WorksOn_Project (SSN, Number, Hours)
CREATE TABLE Employee_WorksOn_Project (
    SSN CHAR(9),
    Number INT,
    Hours DECIMAL(4,2),
    
    PRIMARY KEY (SSN, Number),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (Number) REFERENCES Project(Number)
);

-- Supervisor_Supervises_Supervisee (SSN, Supervisor_SSN)
CREATE TABLE Supervisor_Supervises_Supervisee (
    SSN CHAR(9),
    Supervisor_SSN CHAR(9),
    
    PRIMARY KEY (SSN, Supervisor_SSN),
    FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    FOREIGN KEY (Supervisor_SSN) REFERENCES Employee(SSN)
);

-- Department_Locations(Dept_Number, Locations)
CREATE TABLE Department_Locations (
    Dept_Number INT,
    Locations VARCHAR(100),
    
    PRIMARY KEY (Dept_Number, Locations),
    FOREIGN KEY (Dept_Number) REFERENCES Department(Number)
);
