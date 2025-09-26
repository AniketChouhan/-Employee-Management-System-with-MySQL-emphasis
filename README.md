# Employee Management System Database (MySQL)

## 📌 Project Overview
The **Employee Management System Database** is designed to help organizations manage and analyze employee-related data efficiently.  
It simplifies HR operations by tracking employees, job departments, salaries, qualifications, leave records, and payroll processing.  

This project ensures **data integrity** through relational constraints and provides **insights** with SQL queries for decision-making.  

---

## 🎯 Objectives
- Maintain accurate employee records  
- Manage job departments, roles, and salaries  
- Automate payroll calculation with leave considerations  
- Track employee qualifications and requirements  
- Analyze workforce, salary distribution, and leave patterns  

---

## 🗂️ Database Structure

### **Tables & Relationships**
1. **JobDepartment** – Stores job roles, salary ranges, and descriptions  
2. **SalaryBonus** – Defines salary, annual pay, and bonuses (linked to JobDepartment)  
3. **Employee** – Holds employee personal & job details (linked to JobDepartment)  
4. **Qualification** – Tracks employee qualifications (linked to Employee)  
5. **Leaves** – Records employee leave data (linked to Employee)  
6. **Payroll** – Generates payroll by combining employee, salary, and leave data  

---

## 📂 Project Files
- **schema.sql** → Database schema with table creation scripts  
- **insert_data.sql** → Sample records for testing  
- **queries.sql** → Analytical queries with comments  

---

## 🔍 Example Analysis Queries
- Find top 5 highest-paid employees  
- Calculate total salary expenditure across departments  
- Track which year had the most employee leaves  
- Show department-wise average bonus allocation  
- Correlate leave days with payroll deductions  

---

## 🚀 Getting Started
1. Clone the repository  
   ```bash
   git clone https://github.com/your-username/Employee-Management-System-Database.git
   cd Employee-Management-System-Database
   ```
2. Import schema  
   ```sql
   SOURCE schema.sql;
   ```
3. Insert sample data  
   ```sql
   SOURCE insert_data.sql;
   ```
4. Run analysis queries  
   ```sql
   SOURCE queries.sql;
   ```

---

## 📊 Insights & Use Cases
- HR teams can monitor **employee distribution & performance**  
- Finance can analyze **salary allocations & payroll trends**  
- Management can plan **resource utilization & cost optimization**  

---

## 🤝 Contribution
Feel free to fork, raise issues, or submit pull requests for improvements.

