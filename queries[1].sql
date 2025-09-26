-- queries.sql
-- Common Analysis Queries for Employee Management System

-- 1. Count total employees
SELECT COUNT(emp_ID) AS Total_Employees FROM Employee;

-- 2. List all employees with their department
SELECT e.emp_ID, e.firstname, e.lastname, jd.jobdept
FROM Employee e
JOIN JobDepartment jd ON e.Job_ID = jd.Job_ID;

-- 3. Find top 5 highest paid employees
SELECT e.emp_ID, e.firstname, e.lastname, jd.jobdept, sb.amount
FROM Employee e
JOIN SalaryBonus sb ON e.Job_ID = sb.Job_ID
JOIN JobDepartment jd ON e.Job_ID = jd.Job_ID
ORDER BY sb.amount DESC
LIMIT 5;

-- 4. Find department-wise employee count
SELECT jd.jobdept, COUNT(e.emp_ID) AS Employee_Count
FROM JobDepartment jd
LEFT JOIN Employee e ON jd.Job_ID = e.Job_ID
GROUP BY jd.jobdept;

-- 5. Show employees who took leaves
SELECT e.emp_ID, e.firstname, e.lastname, l.Leavestype, l.fromdate, l.todate
FROM Employee e
JOIN Leaves l ON e.emp_ID = l.Emp_ID;

-- 6. Payroll details of employees
SELECT e.emp_ID, e.firstname, jd.jobdept, sb.amount, l.Leavestype
FROM Payroll p
JOIN Employee e ON p.Emp_ID = e.emp_ID
JOIN JobDepartment jd ON p.Job_ID = jd.Job_ID
JOIN SalaryBonus sb ON p.Salary_ID = sb.salary_ID
JOIN Leaves l ON p.Leave_ID = l.L_ID;
