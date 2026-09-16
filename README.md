# 💰 Loan Portfolio Analysis — PostgreSQL SQL Project

> **A hands-on SQL analytics project for exploring a loan portfolio using PostgreSQL.**

This project contains a complete **Loan Management dataset + 80 SQL analysis questions and queries** covering filtering, aggregation, `GROUP BY`, `HAVING`, `CASE`, KPIs, date analysis, subqueries, and advanced business questions.

It is designed as a practical portfolio project for **Data Analyst / SQL Developer beginners**.

---

## 📌 Project Overview

The project analyzes loan and customer information such as:

- 👤 Customer details
- 💼 Employment type
- 💰 Annual income
- 🏦 Loan type and loan amount
- 📈 Interest rate
- 📅 Application, approval and disbursement dates
- ✅ Loan status
- ⭐ Credit score
- 💳 Monthly EMI
- 💵 Amount paid
- 📊 Outstanding amount
- ⚠️ Overdue amount
- 💸 Payment status

The SQL script creates the `loan` table, inserts sample loan records, and contains **80 analysis questions with SQL solutions**.

---

## 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| 🐘 PostgreSQL | Database & SQL analysis |
| 🖥️ pgAdmin | SQL development environment |
| 📊 SQL | Data querying and analysis |
| 🧠 GitHub | Project portfolio & version control |

---

## 🗂️ Project Structure

```text
loan-analysis/
│
├── loan_analyze_project.sql   # Database, table, data & 80 SQL queries
└── README.md                  # Project documentation
```

---

# 🧱 Database Schema

The project uses a single table:

```sql
LOAN
```

### Main Columns

| Column | Description |
|---|---|
| `Loan_ID` | Unique loan identifier |
| `Customer_ID` | Customer identifier |
| `Customer_Name` | Customer name |
| `Gender` | Customer gender |
| `Age` | Customer age |
| `City` | Customer city |
| `State` | Customer state |
| `Employment_Type` | Employment category |
| `Annual_Income` | Annual customer income |
| `Loan_Type` | Home, Personal, Car, Education or Business |
| `Loan_Amount` | Requested loan amount |
| `Interest_Rate` | Loan interest rate |
| `Loan_Term` | Loan term |
| `Application_Date` | Loan application date |
| `Approval_Date` | Loan approval date |
| `Disbursement_Date` | Loan disbursement date |
| `Loan_Status` | Applied, Approved, Rejected, Disbursed or Closed |
| `Credit_Score` | Customer credit score |
| `Monthly_EMI` | Monthly EMI |
| `Amount_Paid` | Amount paid |
| `Outstanding_Amount` | Remaining outstanding amount |
| `Overdue_Amount` | Overdue amount |
| `Payment_Status` | Paid, Pending, Overdue or Default |
| `Risk_Category` | Calculated risk classification |

---

# 📚 SQL Concepts Covered

This project progresses from **basic SQL to advanced analytical queries**.

### 1. 🔎 Basic SQL Analysis

Examples:

```sql
SELECT *
FROM loan;
```

```sql
SELECT customer_name,
       city,
       loan_type,
       loan_amount
FROM loan;
```

Filtering with:

- `WHERE`
- `BETWEEN`
- `IN`
- `NOT IN`
- `ILIKE`
- Comparison operators

---

### 2. ↕️ Filtering & Sorting

The project includes queries for:

- Largest loans
- Highest credit scores
- Loan amounts
- Interest rates
- Customer ages
- Name and city pattern matching
- Loan statuses
- Payment statuses

Example:

```sql
SELECT loan_id,
       loan_amount
FROM loan
ORDER BY loan_amount DESC
LIMIT 10;
```

---

### 3. 📊 Aggregate Analysis

Important aggregate functions used:

```text
COUNT()
SUM()
AVG()
MAX()
MIN()
```

Examples include:

- Total loan applications
- Total approved loans
- Total requested amount
- Total disbursed amount
- Total outstanding amount
- Total overdue amount
- Average loan amount
- Average interest rate
- Average credit score

---

### 4. 🧮 GROUP BY Analysis

The project analyzes the portfolio by:

- Loan type
- City
- State
- Employment type
- Payment status
- Risk category

Example:

```sql
SELECT loan_type,
       SUM(loan_amount) AS total_loan_amount
FROM loan
GROUP BY loan_type;
```

---

### 5. 🎯 HAVING Clause

Examples:

```sql
SELECT loan_type,
       COUNT(*) AS total_loans
FROM loan
GROUP BY loan_type
HAVING COUNT(*) > 5;
```

Business questions include:

- Loan types with more than 5 loans
- Cities with high disbursement
- Loan types with high average loan amounts
- Cities with high overdue amounts
- Employment groups with many borrowers

---

# ⚠️ Risk Classification

The project creates a calculated `Risk_Category` using credit score.

### Business Rules

| Credit Score | Risk Category |
|---:|---|
| 750+ | 🟢 Low Risk |
| 650–749 | 🟡 Medium Risk |
| 550–649 | 🟠 High Risk |
| Below 550 | 🔴 Very High Risk |

Implemented using a `CASE` statement:

```sql
CASE
    WHEN credit_score >= 750 THEN 'Low Risk'
    WHEN credit_score >= 650 THEN 'Medium Risk'
    WHEN credit_score >= 550 THEN 'High Risk'
    ELSE 'Very High Risk'
END
```

---

# 📈 Business KPI Analysis

The project calculates important loan portfolio KPIs including:

- Loan Approval Rate
- Loan Rejection Rate
- Disbursed Rate
- Average Loan Amount
- Total Disbursed Amount
- Total Outstanding Amount
- Total Overdue Amount
- Average Credit Score
- Default Customer Count
- Percentage of Overdue Loans

Example:

```sql
SELECT ROUND(
    SUM(CASE
            WHEN loan_status = 'Approved' THEN 1
            ELSE 0
        END)::numeric
    / COUNT(*) * 100,
    0
)::text || '%' AS approval_rate
FROM loan;
```

---

# 📅 Date Analysis

The project uses PostgreSQL date functions such as:

```sql
EXTRACT(YEAR FROM application_date)
```

and analyzes:

- Loans applied in a particular year
- Loans approved in a particular month
- Number of loans by year
- Total disbursed amount by year
- Approved but not yet disbursed loans
- Number of loans approved each month
- Average days between application and approval

Example:

```sql
SELECT ROUND(
    AVG(approval_date - application_date),
    0
) AS avg_days
FROM loan;
```

---

# 🧠 Subquery Challenges

The project includes practical subquery questions such as:

### Loan amount above average

```sql
SELECT customer_id,
       customer_name,
       loan_amount
FROM loan
WHERE loan_amount > (
    SELECT AVG(loan_amount)
    FROM loan
);
```

### Highest loan amount

```sql
SELECT customer_name,
       customer_id,
       loan_amount
FROM loan
WHERE loan_amount = (
    SELECT MAX(loan_amount)
    FROM loan
);
```

### Customers with closed and active/disbursed loans

```sql
SELECT DISTINCT customer_id
FROM loan
WHERE loan_status = 'Disbursed'
  AND customer_id IN (
      SELECT customer_id
      FROM loan
      WHERE loan_status = 'Closed'
  );
```

This demonstrates how a subquery can be used to compare customers across different loan statuses.

---

# 🚀 Advanced SQL Business Questions

The final section focuses on management-style questions, including:

1. Top 5 customers by loan amount
2. Top 3 cities by total loan disbursement
3. Top 3 loan types by outstanding amount
4. Customers with credit score below 650 and overdue amount above ₹50,000
5. Customers whose loan amount is high compared with annual income
6. Customers with multiple loans
7. Customers with a closed previous loan and another disbursed loan

These questions are closer to the type of **business-oriented SQL analysis** used in real Data Analyst work.

---

# 🧪 Sample Analysis

### Find the loan type with the highest total loan amount

```sql
SELECT loan_type,
       SUM(loan_amount) AS total_loan_amount
FROM loan
GROUP BY loan_type
ORDER BY total_loan_amount DESC
LIMIT 1;
```

### Find customers with overdue payments

```sql
SELECT customer_id,
       customer_name
FROM loan
WHERE payment_status = 'Overdue';
```

### Find the top 3 loan types by outstanding amount

```sql
SELECT loan_type,
       SUM(outstanding_amount) AS outstanding_amount
FROM loan
GROUP BY loan_type
ORDER BY outstanding_amount DESC
LIMIT 3;
```

---

# 🎯 Learning Outcomes

By completing this project, the following SQL skills are practiced:

- ✅ `SELECT`
- ✅ `WHERE`
- ✅ `ORDER BY`
- ✅ `LIMIT`
- ✅ `DISTINCT`
- ✅ `BETWEEN`
- ✅ `IN`
- ✅ `NOT IN`
- ✅ `ILIKE`
- ✅ `COUNT`
- ✅ `SUM`
- ✅ `AVG`
- ✅ `MAX`
- ✅ `MIN`
- ✅ `GROUP BY`
- ✅ `HAVING`
- ✅ `CASE`
- ✅ CTEs
- ✅ Subqueries
- ✅ Date functions
- ✅ Conditional aggregation
- ✅ KPI calculations
- ✅ Business-oriented SQL analysis

---

# ▶️ How to Run the Project

### 1. Install PostgreSQL

Make sure PostgreSQL and pgAdmin are installed.

### 2. Create a database

Create a database named:

```text
loan
```

### 3. Open Query Tool

Open the Query Tool for the `loan` database in pgAdmin.

### 4. Run the SQL script

Open:

```text
loan_analyze_project.sql
```

Run the script to:

1. Create the `loan` table
2. Insert the sample records
3. Execute the analysis queries

### 5. Explore the queries

The SQL file is organized into sections from **Basic SQL Analysis → Advanced SQL Business Questions**.

---

# 💼 Portfolio Value

This project demonstrates practical SQL skills through a realistic **loan portfolio analysis** scenario.

It can be used as a portfolio project to demonstrate:

> **Data Cleaning & Preparation → SQL Querying → Aggregation → Business KPIs → Risk Analysis → Business Insights**

For a Data Analyst portfolio, this project can be combined with **Excel / Power BI / Python** projects to demonstrate a broader analytics skill set.

---

# 📌 Dataset Notes

The SQL file contains the table definition, sample records, business questions, and SQL solutions in one script.

The defined loan statuses are:

```text
Applied
Approved
Rejected
Disbursed
Closed
```

The defined payment statuses are:

```text
Paid
Pending
Overdue
Default
```

The defined loan types are:

```text
Home
Personal
Car
Education
Business
```

---

# 👨‍💻 Author

**Mohd Arif**

**B.Tech — Computer Science & Engineering**

Skills demonstrated in this project:

`PostgreSQL` `SQL` `Data Analysis` `Business Analytics`

---

## ⭐ If you found this project useful

Feel free to explore the SQL queries, experiment with the dataset, and extend the project with:

- 📊 Power BI dashboard
- 🐍 Python exploratory data analysis
- 📈 Advanced SQL window functions
- 📉 Loan portfolio visualizations
- 🏦 Customer risk analysis

---

**Built with PostgreSQL & SQL | Data Analytics Portfolio Project**
