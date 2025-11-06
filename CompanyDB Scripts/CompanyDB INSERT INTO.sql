USE CompanyDB;

-- Department(Number, Name)
INSERT INTO Department (Number, Name) VALUES
(10, 'Human Resources'),
(20, 'Engineering'),
(30, 'Sales');

-- Employee(SSN, Fname, Minit, Lname, Address, Salary, Sex)
INSERT INTO Employee (SSN, Fname, Minit, Lname, Address, Salary, Sex) VALUES
('111223333', 'Aarav', 'K', 'Patel', '1234 Kingsway, Vancouver, BC', 72000.00, 'M'),
('222334444', 'Mei', 'L', 'Zhang', '88 Fraser St, Burnaby, BC', 115000.00, 'F'),
('333445555', 'Omar', 'H', 'Haddad', '4500 No.3 Rd, Richmond, BC', 98000.00, 'M'),
('444556666', 'Lucia', 'M', 'Garcia', '200 72 Ave, Langley, BC', 86000.00, 'F'),
('555667777', 'Noah', 'J', 'Smith', '101 Robson St, Vancouver, BC', 90000.00, 'M'),
('666778888', 'Fatemeh', 'A', 'Karimi', '5000 152 St, Surrey, BC', 125000.00, 'F'),
('777889999', 'Jean', 'P', 'Dubois', '17 4 St SW, Calgary, AB', 118000.00, 'M'),
('888990000', 'Priya', 'R', 'Kumar', '9001 Lougheed Hwy, Burnaby, BC', 94000.00, 'F'),
('999001111', 'Carlos', 'E', 'Santos', '120 Granville St, Vancouver, BC', 83000.00, 'M'),
('000112222', 'Sofia', 'N', 'Rossi', '6000 Westminster Hwy, Richmond, BC', 78000.00, 'F');

-- Project(Number, Name, Location, Dept_Number)
INSERT INTO Project (Number, Name, Location, Dept_Number) VALUES
(201, 'Campus WiFi Upgrade', 'Vancouver', 20),
(202, 'Student Portal Revamp', 'Burnaby', 20),
(203, 'Western Sales Push', 'Surrey', 30),
(204, 'HR Onboarding Automation', 'Richmond', 10);

-- Department_Locations(Dept_Number, Locations)
INSERT INTO Department_Locations (Dept_Number, Locations) VALUES
(10, 'Vancouver'),
(10, 'Richmond'),
(20, 'Burnaby'),
(20, 'Surrey'),
(30, 'Langley'),
(30, 'Calgary');

-- Employee_WorksFor_Department(SSN, Dept_Number)
INSERT INTO Employee_WorksFor_Department (SSN, Dept_Number) VALUES
('111223333', 10),
('222334444', 20),
('333445555', 20),
('444556666', 30),
('555667777', 20),
('666778888', 10),
('777889999', 30),
('888990000', 20),
('999001111', 30),
('000112222', 10);

-- Employee_Manages_Department(SSN, Dept_Number, Start_date)
INSERT INTO Employee_Manages_Department (SSN, Dept_Number, Start_date) VALUES
('666778888', 10, '2022-01-15'),
('222334444', 20, '2021-07-01'),
('777889999', 30, '2023-03-20');

-- Employee_Dependent(SSN, Name, Sex, Birth_date, Relationship)
INSERT INTO Employee_Dependent (SSN, Name, Sex, Birth_date, Relationship) VALUES
('111223333', 'Neel', 'M', '2015-06-12', 'Son'),
('111223333', 'Anaya', 'F', '2018-09-03', 'Daughter'),
('222334444', 'Li Wei', 'M', '2012-11-20', 'Son'),
('333445555', 'Sara', 'F', '2016-02-28', 'Daughter'),
('444556666', 'Miguel', 'M', '2014-08-10', 'Son'),
('666778888', 'Arman', 'M', '2010-04-17', 'Son'),
('777889999', 'Élodie', 'F', '2013-12-05', 'Daughter'),
('888990000', 'Riya', 'F', '2019-01-22', 'Daughter'),
('999001111', 'Camila', 'F', '2011-07-14', 'Daughter'),
('000112222', 'Luca', 'M', '2017-05-30', 'Son');

-- Employee_WorksOn_Project(SSN, Number, Hours)
INSERT INTO Employee_WorksOn_Project (SSN, Number, Hours) VALUES
('222334444', 201, 12.50),
('222334444', 202, 10.00),
('333445555', 201, 15.00),
('333445555', 202, 8.00),
('555667777', 201, 14.00),
('555667777', 202, 12.00),
('888990000', 202, 16.00),
('777889999', 203, 18.00),
('444556666', 203, 20.00),
('999001111', 203, 9.50),
('666778888', 204, 10.00),
('111223333', 204, 18.00),
('000112222', 204, 12.00);

-- Supervisor_Supervises_Supervisee(SSN, Supervisor_SSN)
-- (Each employee reports to their department manager; managers report upward for illustration.)
INSERT INTO Supervisor_Supervises_Supervisee (SSN, Supervisor_SSN) VALUES
-- HR (10): manager 666778888
('111223333', '666778888'),
('000112222', '666778888'),
-- Engineering (20): manager 222334444
('333445555', '222334444'),
('555667777', '222334444'),
('888990000', '222334444'),
-- Sales (30): manager 777889999
('444556666', '777889999'),
('999001111', '777889999'),
-- Managers upward chain
('666778888', '222334444'),
('222334444', '777889999');
