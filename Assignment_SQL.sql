use Assignment;

-- Create Contact Table
create table contact(
ContactID int primary key,
CompanyID int,
FirstName varchar(45),
LastName varchar(45),
Street varchar(45),
City varchar(45),
State varchar(2),
Zip varchar(10),
IsMain boolean,
Email varchar(45),
Phone varchar(12)
);

-- Create Employeee Table
create table Employee(
EmployeeID int primary key,
FirstName varchar(45),
LastName varchar(45),
salary decimal(10,2),
HireDate Date,
JobTitle varchar(25),
Email varchar(45),
Phone varchar(12)
);

-- Create ComtactEmployee Table
create table ContactEmployee(
contactEmployeeID int primary key,
contactID int,
EmployeeID int,
Contact Date,
Description varchar(100)
);

-- Create Company Table
create table Company(
CompanyID int primary key,
CompanyName varchar(45),
Street varchar(45),
City varchar(45),
state varchar(2),
zip varchar(10)
);

INSERT INTO Contact 
(ContactID, CompanyID, FirstName, LastName, Street, City, State, Zip, IsMain, Email, Phone)
VALUES
(1, 101, 'Rahul', 'Sharma', 'MG Road', 'Surat', 'GJ', '395007', TRUE, 'rahul.sharma@email.com', '987-654-3210'),
(2, 102, 'Priya', 'Patel', 'Ring Road', 'Ahmedabad', 'GJ', '380001', TRUE, 'priya.patel@email.com', '987-650-1234'),
(3, 103, 'Amit', 'Verma', 'Station Road', 'Mumbai', 'MH', '400001', FALSE, 'amit.verma@email.com', '912-345-6780'),
(4, 101, 'Neha', 'Kapoor', 'City Light', 'Surat', 'GJ', '395007', FALSE, 'neha.kapoor@email.com', '998-877-6655'),
(5, 104, 'Lesley Bland', 'Malhotra', 'Linking Road', 'Mumbai', 'MH', '400050', TRUE, 'karan.m@email.com', '901-234-5678'),
(6, 105, 'Anjali', 'Desai', 'SG Highway', 'Ahmedabad', 'GJ', '380015', TRUE, 'anjali.desai@email.com', '909-090-9090'),
(7, 106, 'Vikram', 'Joshi', 'FC Road', 'Pune', 'MH', '411005', FALSE, 'vikram.j@email.com', '987-123-4567'),
(8, 107, 'Riya', 'Shah', 'Paldi', 'Ahmedabad', 'GJ', '380007', TRUE, 'riya.shah@email.com', '981-111-1111'),
(9, 108, 'Manish', 'Gupta', 'Connaught Place', 'Delhi', 'DL', '110001', TRUE, 'manish.g@email.com', '982-222-2222'),
(10, 109, 'Sonal', 'Agarwal', 'Banjara Hills', 'Hyderabad', 'TS', '500034', FALSE, 'sonal.a@email.com', '983-333-3333');


INSERT INTO Employee 
(EmployeeID, FirstName, LastName, Salary, HireDate, JobTitle, Email, Phone)
VALUES
(1, 'Anil', 'Mehta', 55000.00, '2022-01-15', 'Manager', 'anil.mehta@company.com', '900-001-1111'),
(2, 'Sneha', 'Iyer', 42000.00, '2023-03-10', 'Sales Executive', 'sneha.iyer@company.com', '900-002-2222'),
(3, 'Ravi', 'Kumar', 38000.00, '2021-07-22', 'Support Engineer', 'ravi.kumar@company.com', '900-003-3333'),
(4, 'Pooja', 'Singh', 60000.00, '2020-11-05', 'HR Manager', 'pooja.singh@company.com', '900-004-4444'),
(5, 'Lesley Bland', 'Reddy', 47000.00, '2022-06-18', 'Developer', 'arjun.reddy@company.com', '900-005-5555'),
(6, 'Meera', 'Nair', 52000.00, '2021-09-25', 'Business Analyst', 'meera.nair@company.com', '900-006-6666'),
(7, 'Suresh', 'Yadav', 36000.00, '2023-01-12', 'Sales Associate', 'suresh.yadav@company.com', '900-007-7777'),
(8, 'Kavita', 'Joshi', 58000.00, '2019-04-30', 'Team Lead', 'kavita.joshi@company.com', '900-008-8888'),
(9, 'Deepak', 'Chauhan', 40000.00, '2022-08-14', 'QA Engineer', 'deepak.c@company.com', '900-009-9999'),
(10, 'Nisha', 'Gupta', 62000.00, '2018-12-01', 'Director', 'nisha.g@company.com', '900-001-2345');

INSERT INTO ContactEmployee
(ContactEmployeeID, ContactID, EmployeeID, Contact, Description)
VALUES
(1, 1, 2, '2024-04-01', 'Product discussion'),
(2, 2, 1, '2024-04-03', 'Contract negotiation'),
(3, 3, 3, '2024-04-05', 'Technical support call'),
(4, 4, 4, '2024-04-07', 'HR onboarding discussion'),
(5, 5, 5, '2024-04-08', 'Software demo'),
(6, 6, 6, '2024-04-10', 'Requirement gathering'),
(7, 7, 7, '2024-04-11', 'Sales follow-up'),
(8, 8, 8, '2024-04-12', 'Project planning'),
(9, 9, 9, '2024-04-13', 'Testing discussion'),
(10, 10, 10, '2024-04-14', 'Executive meeting');

INSERT INTO Company
(CompanyID, CompanyName, Street, City, State, Zip)
VALUES
(101, 'TechNova Pvt Ltd', 'MG Road', 'Surat', 'GJ', '395007'),
(102, 'Urban Outfitters, Inc.', 'CG Road', 'Ahmedabad', 'GJ', '380009'),
(103, 'NextGen Systems', 'Andheri East', 'Mumbai', 'MH', '400069'),
(104, 'Bright Future Corp', 'Linking Road', 'Mumbai', 'MH', '400050'),
(105, 'Urban Outfitters, Inc.', 'SG Highway', 'Ahmedabad', 'GJ', '380015'),
(106, 'Toll Brother', 'FC Road', 'Pune', 'MH', '411005'),
(107, 'Visionary Labs', 'Paldi', 'Ahmedabad', 'GJ', '380007'),
(108, 'GlobalSoft Pvt Ltd', 'Connaught Place', 'Delhi', 'DL', '110001'),
(109, 'Toll Brother', 'Banjara Hills', 'Hyderabad', 'TS', '500034'),
(110, 'PrimeEdge Technologies', 'Electronic City', 'Bangalore', 'KA', '560100');

-- In the Employee table, the statement that changes Lesley Bland’s phone number
-- to 215-555-8800 
update employee
set phone = '215-555-8800'
where firstname = 'Lesley' and lastname = 'Bland';


-- In the Company table, the statement that changes the name of “Urban
-- Outfitters, Inc.” to “Urban Outfitters” . 
update Company
set CompanyName = 'Urban Outfitters'
where CompanyName = 'Urban Outfitters, Inc.';


-- In ContactEmployee table, the statement that removes Dianne Connor’s contact
-- event with Jack Lee (one statement) 
DELETE ce 
FROM ContactEmployee ce
JOIN Employee e ON ce.EmployeeID = e.EmployeeID
JOIN Contact c ON ce.ContactID = c.ContactID
WHERE e.FirstName = 'Dianne' AND e.LastName = 'Connor'
  AND c.FirstName = 'Jack' AND c.LastName = 'Lee';
  
  
-- Write the SQL SELECT query that displays the names of the employees that
-- have contacted Toll Brothers (one statement). Run the SQL SELECT query in
-- MySQL Workbench. Copy the results below as well. 

select concat(c.FirstName," ",c.LastName) as Full_Name from contact c
inner join company c1
on c.companyID = c1.companyID
where c1.companyName = "Toll Brother";
