USE CompanyDB;

DROP TABLE IF EXISTS Employee_WorksOn_Project;
DROP TABLE IF EXISTS Employee_Manages_Department;
DROP TABLE IF EXISTS Employee_WorksFor_Department;
DROP TABLE IF EXISTS Employee_Dependent;
DROP TABLE IF EXISTS Supervisor_Supervises_Supervisee;
DROP TABLE IF EXISTS Department_Locations;
DROP TABLE IF EXISTS Project;
DROP TABLE IF EXISTS Department;
DROP TABLE IF EXISTS Employee;

-- for MS SQL SERVER, Make sure you have selected master or another database in the status bar, **not CompanyDB**. Otherwise, it throws error.
DROP DATABASE CompanyDB;