-- insert_data.sql
-- Insert sample data into Employee Management System

-- Insert Job Departments
INSERT INTO JobDepartment VALUES
(1, 'HR', 'HR Manager', 'Handles recruitment and HR policies', '$4000-$6000'),
(2, 'IT', 'Software Engineer', 'Develops applications', '$5000-$8000'),
(3, 'Finance', 'Accountant', 'Manages accounts and budgets', '$3500-$5500');

-- Insert Salary & Bonus Data
INSERT INTO SalaryBonus VALUES
(1, 1, 5000.00, 60000.00, 5000.00),
(2, 2, 7000.00, 84000.00, 7000.00),
(3, 3, 4500.00, 54000.00, 4500.00);

-- Insert Employees
INSERT INTO Employee VALUES
(101, 'John', 'Doe', 'Male', 29, 'New York', 'john.doe@email.com', 'pass123', 2),
(102, 'Jane', 'Smith', 'Female', 31, 'Los Angeles', 'jane.smith@email.com', 'pass456', 1),
(103, 'Robert', 'Brown', 'Male', 40, 'Chicago', 'robert.b@email.com', 'pass789', 3);

-- Insert Qualifications
INSERT INTO Qualification VALUES
(1, 101, 'B.Tech in Computer Science', 'Programming', 'Software Engineer'),
(2, 102, 'MBA in HR', 'Recruitment', 'HR Manager'),
(3, 103, 'M.Com in Finance', 'Accounting', 'Accountant');

-- Insert Leaves
INSERT INTO Leaves VALUES
(1, 101, 'Sick Leave', '2025-01-10', '2025-01-12', 'Fever and rest'),
(2, 102, 'Casual Leave', '2025-02-05', '2025-02-06', 'Personal work'),
(3, 103, 'Paid Leave', '2025-03-01', '2025-03-10', 'Family trip');

-- Insert Payroll Data
INSERT INTO Payroll VALUES
(1, 101, 2, 2, 1),
(2, 102, 1, 1, 2),
(3, 103, 3, 3, 3);
