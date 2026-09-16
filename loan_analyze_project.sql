DROP table loan

CREATE TABLE LOAN (
    Loan_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Customer_Name VARCHAR(50) NOT NULL,
    Gender VARCHAR(10) CHECK (Gender IN ('Male', 'Female')),
    Age INT CHECK (Age >= 18),
    City VARCHAR(30),
    State VARCHAR(30),
    Employment_Type VARCHAR(20),
    Annual_Income DECIMAL(12,2) CHECK (Annual_Income > 0),
    Loan_Type VARCHAR(20) CHECK 
        (Loan_Type IN ('Home', 'Personal', 'Car', 'Education', 'Business')),
    Loan_Amount DECIMAL(12,2) CHECK (Loan_Amount > 0),
    Interest_Rate DECIMAL(5,2) CHECK (Interest_Rate > 0),
    Loan_Term INT,
    Application_Date DATE,
    Approval_Date DATE,
    Disbursement_Date DATE,
    Loan_Status VARCHAR(20) CHECK 
        (Loan_Status IN ('Applied', 'Approved', 'Rejected', 'Disbursed', 'Closed')),
    Credit_Score INT CHECK 
        (Credit_Score BETWEEN 300 AND 900),
    Monthly_EMI DECIMAL(10,2),
    Amount_Paid DECIMAL(12,2),
    Outstanding_Amount DECIMAL(12,2),
    Overdue_Amount DECIMAL(12,2),
    Payment_Status VARCHAR(20) CHECK 
        (Payment_Status IN ('Paid', 'Pending', 'Overdue', 'Default'))
);


INSERT INTO LOAN VALUES
(1001, 501, 'Amit Sharma', 'Male', 35, 'Delhi', 'Delhi', 'Salaried', 900000, 'Home', 5000000, 8.50, 240, '2026-01-05', '2026-01-08', '2026-01-10', 'Disbursed', 780, 43391, 500000, 4500000, 0, 'Paid'),

(1002, 502, 'Priya Verma', 'Female', 29, 'Mumbai', 'Maharashtra', 'Salaried', 650000, 'Personal', 800000, 12.50, 60, '2026-01-07', '2026-01-09', '2026-01-12', 'Disbursed', 720, 17992, 180000, 620000, 0, 'Paid'),

(1003, 503, 'Rahul Singh', 'Male', 42, 'Bangalore', 'Karnataka', 'Business', 1200000, 'Business', 2500000, 11.00, 120, '2026-01-10', '2026-01-15', '2026-01-18', 'Disbursed', 680, 34400, 300000, 2200000, 25000, 'Overdue'),

(1004, 504, 'Sneha Gupta', 'Female', 31, 'Pune', 'Maharashtra', 'Salaried', 750000, 'Car', 1200000, 9.25, 60, '2026-01-12', '2026-01-14', '2026-01-16', 'Disbursed', 810, 25000, 100000, 1100000, 0, 'Paid'),

(1005, 505, 'Vikas Kumar', 'Male', 27, 'Delhi', 'Delhi', 'Self-Employed', 550000, 'Personal', 500000, 14.50, 36, '2026-01-15', '2026-01-20', NULL, 'Approved', 640, 17200, 0, 500000, 0, 'Pending'),

(1006, 506, 'Neha Kapoor', 'Female', 24, 'Jaipur', 'Rajasthan', 'Salaried', 450000, 'Education', 600000, 10.50, 60, '2026-01-18', '2026-01-21', '2026-01-25', 'Disbursed', 750, 12900, 50000, 550000, 0, 'Paid'),

(1007, 507, 'Rohit Mehta', 'Male', 45, 'Chennai', 'Tamil Nadu', 'Business', 1500000, 'Business', 4000000, 13.00, 120, '2026-01-20', '2026-01-25', '2026-01-28', 'Disbursed', 590, 53000, 400000, 3600000, 150000, 'Default'),

(1008, 508, 'Anjali Patel', 'Female', 38, 'Ahmedabad', 'Gujarat', 'Salaried', 1000000, 'Home', 3500000, 8.75, 180, '2026-01-22', '2026-01-25', '2026-01-30', 'Disbursed', 800, 31000, 350000, 3150000, 0, 'Paid'),

(1009, 509, 'Suresh Yadav', 'Male', 52, 'Lucknow', 'Uttar Pradesh', 'Self-Employed', 700000, 'Personal', 900000, 15.00, 60, '2026-01-25', '2026-01-28', '2026-02-01', 'Disbursed', 610, 21500, 100000, 800000, 75000, 'Overdue'),

(1010, 510, 'Pooja Malhotra', 'Female', 33, 'Kolkata', 'West Bengal', 'Salaried', 850000, 'Car', 1500000, 9.75, 60, '2026-01-28', '2026-02-01', '2026-02-04', 'Disbursed', 770, 31500, 200000, 1300000, 0, 'Paid'),

(1011, 511, 'Arjun Rao', 'Male', 40, 'Hyderabad', 'Telangana', 'Business', 1100000, 'Business', 3000000, 12.00, 120, '2026-02-02', '2026-02-06', '2026-02-10', 'Disbursed', 690, 43000, 250000, 2750000, 30000, 'Overdue'),

(1012, 512, 'Kavita Joshi', 'Female', 28, 'Delhi', 'Delhi', 'Salaried', 600000, 'Education', 400000, 10.00, 48, '2026-02-05', '2026-02-08', '2026-02-12', 'Disbursed', 735, 10150, 100000, 300000, 0, 'Paid'),

(1013, 513, 'Manish Agarwal', 'Male', 36, 'Noida', 'Uttar Pradesh', 'Self-Employed', 800000, 'Home', 2800000, 9.00, 180, '2026-02-08', '2026-02-12', '2026-02-15', 'Disbursed', 760, 28300, 200000, 2600000, 0, 'Paid'),

(1014, 514, 'Riya Shah', 'Female', 30, 'Surat', 'Gujarat', 'Salaried', 500000, 'Personal', 700000, 13.50, 60, '2026-02-10', '2026-02-14', NULL, 'Approved', 670, 15900, 0, 700000, 0, 'Pending'),

(1015, 515, 'Deepak Mishra', 'Male', 48, 'Bhopal', 'Madhya Pradesh', 'Business', 950000, 'Business', 1800000, 14.00, 84, '2026-02-12', NULL, NULL, 'Rejected', 540, 0, 0, 0, 0, 'Pending'),

(1016, 516, 'Meena Iyer', 'Female', 55, 'Chennai', 'Tamil Nadu', 'Salaried', 1250000, 'Home', 4500000, 8.25, 240, '2026-02-15', '2026-02-18', '2026-02-20', 'Disbursed', 820, 38200, 450000, 4050000, 0, 'Paid'),

(1017, 517, 'Karan Bansal', 'Male', 26, 'Gurgaon', 'Haryana', 'Salaried', 480000, 'Car', 900000, 10.25, 60, '2026-02-18', '2026-02-22', '2026-02-25', 'Disbursed', 700, 19200, 50000, 850000, 10000, 'Overdue'),

(1018, 518, 'Nisha Reddy', 'Female', 34, 'Hyderabad', 'Telangana', 'Self-Employed', 720000, 'Personal', 1000000, 14.00, 60, '2026-02-20', '2026-02-24', '2026-02-28', 'Disbursed', 630, 23200, 100000, 900000, 50000, 'Overdue'),

(1019, 519, 'Sameer Khan', 'Male', 43, 'Mumbai', 'Maharashtra', 'Business', 1400000, 'Business', 5000000, 12.50, 120, '2026-02-22', '2026-02-26', '2026-03-01', 'Disbursed', 580, 70000, 500000, 4500000, 200000, 'Default'),

(1020, 520, 'Divya Nair', 'Female', 32, 'Kochi', 'Kerala', 'Salaried', 900000, 'Home', 3200000, 8.50, 180, '2026-02-25', '2026-02-28', '2026-03-03', 'Closed', 790, 28500, 3200000, 0, 0, 'Paid');


select * from loan

2. Basic SQL Analysis


Write SQL queries to:

1.	Display all loan records.

select * from loan

2.	Display only customer name, city, loan type and loan amount.

select customer_name,
	   city,
	   loan_type,
	   loan_amount
from loan

3.	Find all customers who have applied for a Personal Loan.

select customer_name,
	   customer_id,
	   loan_type
from loan
where loan_type = 'Personal'

4.	Find customers whose loan amount is greater than ₹5,00,000.

select customer_name,
	   customer_id,
	   loan_amount
from loan
where loan_amount > 500000

5.	Find customers from a particular city.

select city,
	   count(*) as no_of_cutomers
from loan
group by 1

6.	Display customers whose credit score is greater than 750.

select customer_name,
	   customer_id,
	   credit_score
from loan
where credit_score > 750

7.	Find customers whose annual income is between ₹5 lakh and ₹15 lakh.

select customer_id,
	   customer_name,
	   annual_income
from loan
where annual_income between 500000 and 1500000

8.	Display all customers whose loan status is Approved.

select customer_id,
	   customer_name
from loan
where loan_status = 'Approved'

9.	Find all customers whose payment status is Overdue.

select customer_id,
	   customer_name
from loan
where payment_status = 'Overdue'

10.	Display loans where outstanding amount is greater than ₹2,00,000.

select loan_id 
from loan
where outstanding_amount > 200000

________________________________________

3. Filtering & Sorting

Write queries to:

11.	Display the 10 largest loans.

select loan_amount,
	   loan_id
from loan
order by 1 desc
limit 10

12.	Display customers in descending order of credit score.

select customer_id,
	   customer_name,
	   credit_score
from loan
order by 3 desc

13.	Display customers in ascending order of loan amount.

select customer_id,
	   customer_name,
	   loan_amount
from loan
order by 3

14.	Find loans with interest rates greater than 10%.

select loan_id,
	   interest_rate
from loan
where interest_rate > 10

15.	Find customers between the ages of 25 and 40.

select customer_id,
	   customer_name,
	   age
from loan
where age between 25 and 40

16.	Find customers whose names start with A.

select customer_name
from loan
where customer_name ilike 'a%'

17.	Find customers whose city contains the letter a.

select customer_name,
	   customer_id,
	   city
from loan
where city ilike '%a%'

18.	Find customers who are not from a particular state.

select *
from loan
where state <> 'Delhi'

19.	Find loans that are either Approved or Disbursed.

select *
from loan
where loan_status in ('Approved','Disbursed')

20.	Find customers whose payment status is not Paid.

select *
from loan
where payment_status not in ('Paid')

4. Aggregate Analysis
Management wants summary-level information.

Write queries to find:

21.	Total number of loan applications.

select count(*) as no_of_loan_application
from loan

22.	Total number of approved loans.

select count(*) as loan_approved
from loan
where loan_status = 'Approved'

23.	Total loan amount requested

select sum(loan_amount) as total_loan_amount
from loan

24.	Total loan amount disbursed.

select sum(loan_amount) as total_loan_amount
from loan
where loan_status = 'Disbursed'

25.	Total outstanding loan amount.

select sum(outstanding_amount) as total_outstanding_amount
from loan

26.	Total overdue amount.

select sum(overdue_amount) as total_overdue_amount
from loan

27.	Average loan amount.

select avg(loan_amount) as average_loan_amount
from loan

28.	Average interest rate.

select avg(interest_rate) as average_interest_rate
from loan

29.	Maximum loan amount.

select max(loan_amount) as max_loan_amount
from loan

30.	Minimum loan amount.

select min(loan_amount) as min_loan_amount
from loan


31.	Average credit score.

select avg(credit_score) as average_credit_score
from loan

32.	Average annual income of borrowers.

select avg(annual_income) as average_annual_income
from loan

________________________________________


5. GROUP BY Analysis

Analyze the loan portfolio by different business dimensions.


33.	Find the number of loans for each loan type.

select loan_type,
	   count(*)
from loan
group by 1

34.	Find total loan amount for each loan type.

select loan_type,
	   sum(loan_amount)
from loan
group by 1


35.	Find average loan amount for each loan type.

select loan_type,
	   avg(loan_amount)
from loan
group by 1

36.	Find total loan amount by city.

select city,
	   sum(loan_amount)
from loan
group by 1

37.	Find number of customers by state.

select state,
	   count(*) as number_0f_customer
from loan
group by 1

38.	Find average credit score by loan type.

select loan_type,
	   avg(credit_score)
from loan
group by 1

39.	Find total outstanding amount by loan type.

select loan_type,
	   sum(outstanding_amount)
from loan
group by 1

40.	Find total overdue amount by city.

select city,
	   sum(overdue_amount)
from loan
group by 1

41.	Find the number of loans by payment status.

select payment_status,
	   count(*)
from loan
group by 1

42.	Find the number of loans by employment type.

select employment_type,
	   count(*)
from loan
group by 1


6. HAVING Clause


43.	Find loan types having more than 5 loans.

select loan_type,
	   count(*)
from loan
group by loan_type
having count(*) > 5

44.	Find cities where total loan disbursement is greater than ₹50 lakh.

select city,
	   sum(loan_amount)	as loan_amount 
from loan
where loan_status = 'Disbursed'
group by 1
having sum(loan_amount) > 5000000

45.	Find loan types whose average loan amount is greater than ₹3 lakh.

select loan_type,
	   avg(loan_amount)
from loan
group by 1
having avg(loan_amount) > 300000

46.	Find cities having total overdue amount greater than ₹1 lakh.

select city,
	   sum(overdue_amount)
from loan
group by 1
having sum(overdue_amount) > 100000

47.	Find employment types having more than 10 borrowers.

select loan_type,
	   count(*) as borrowers
from loan
group by 1
having count(*) > 10
________________________________________



7. CASE Statement — Risk Classification

Create a new calculated column called Risk_Category using the credit score.
Use the following business rules:
Credit Score	Risk Category
750+	Low Risk
650–749	Medium Risk
550–649	High Risk
Below 550	Very High Risk

-- Using CTE 

with loan_data as (
select *,
(case when credit_score >= 750 then 'Low Risk'
     when credit_score >= 650 then 'Medium Risk'
	 when credit_score >= 550 then 'High Risk'
	 else 'Very High Risk' end ) as Risk_Category
from loan
)
select * from loan_data


ALTER TABLE loan
ADD COLUMN risk_category VARCHAR(20);

UPDATE loan
SET risk_category =
    CASE
        WHEN credit_score >= 750 THEN 'Low Risk'
        WHEN credit_score >= 650 THEN 'Medium Risk'
        WHEN credit_score >= 550 THEN 'High Risk'
        ELSE 'Very High Risk'
    END;

48.	Display customer name, credit score and risk category.

select customer_name,
	   credit_score,
	   risk_category
from loan

49.	Count customers in each risk category.

select risk_category,
	   count(*)
from loan
group by 1

50.	Find the total outstanding amount for each risk category

select risk_category,
	   sum(outstanding_amount) as total_outstanding_amount
from loan
group by 1

51.	Find the total overdue amount for each risk category.

select risk_category,
	   sum(overdue_amount) as total_overdue_amount
from loan
group by 1

________________________________________



8. Business KPI Analysis

Calculate the following KPIs:

52.	Loan Approval Rate

select round(sum(case when loan_status = 'Approved' then 1 else 0 end)::numeric/ count(*)* 100,0)::text || '%' as Approval_rate,
       round(sum(case when loan_status = 'Disbursed' then 1 else 0 end)::numeric/ count(*)* 100,0)::text || '%' as Disbursed_rate	
from loan

53.	Loan Rejection Rate

select round(sum(case when loan_status = 'Rejected' then 1 else 0 end)::numeric/ count(*)* 100,0)::text || '%' as Approval_rate
from loan

54.	Average Loan Amount

SELECT ROUND(AVG(loan_amount), 2) AS average_loan_amount
FROM loan;

55.	Total Disbursed Amount

SELECT sum(loan_amount) as Total_Disbursed_Amount
FROM loan
where loan_status = 'Disbursed'

56.	Total Outstanding Amount

SELECT sum(outstanding_amount) as Total_outstanding_amount
FROM loan

57.	Total Overdue Amount

select sum(overdue_amount) as total_overdue_amount 
from loan

58.	Average Credit Score

select round(avg(credit_score),2) as average_credit_score
from loan

59.	Default Customer Count

select count(*) as Default_Customer_Count
from loan
where payment_status = 'Default'

60.	Percentage of Overdue Loans

select 
round(sum(case when payment_status = 'Overdue' then 1 else 0 end)/count(*)::numeric * 100,2)::text || '%' as overdue
from loan

________________________________________


9. Date Analysis


61.	Find loans applied for in a particular year.

select year_applied,
	   count(*) as Count_of_years
from
(select *,
	    extract(year from application_date) as year_applied
from loan)t1
where year_applied = 2026
group by 1


62.	Find loans approved during a particular month.

select month_applied,
	   count(*) as Count_of_months
from
(select *,
	    extract(month from application_date) as month_applied
from loan)t1
where month_applied = 1
group by 1

63.	Find the number of loans applied for each year.

select extract(year from application_date) as year_applied,
	   count(*)
from loan
group by 1

64.	Find the total loan amount disbursed each year.

select extract(year from application_date) as year_applied,
	   sum(loan_amount) as total_loan_amount
from loan
where loan_status = 'Disbursed'
group by 1

65.	Find customers whose loan was approved but not yet disbursed.

select *
from loan
where loan_status = 'Approved' and disbursement_date is null

66.	Find the number of loans approved in each month.

select extract(month from approval_date) as loan_approved_month,
	   count(*)
from loan
group by 1
order by 1

67.	Find the average number of days between application and approval.

SELECT round(AVG(approval_date - application_date),0) AS avg_days
FROM loan;

________________________________________


10. Subquery Challenges


68.	Find customers whose loan amount is greater than the average loan amount.

select customer_id,
	   customer_name,
	   loan_amount
from loan
where loan_amount > (select avg(loan_amount) from loan)

69.	Find customers whose credit score is greater than the average credit score.

select customer_id,
	   customer_name,
	   credit_score
from loan
where credit_score > (select avg(credit_score) from loan)

70.	Find the customer who has taken the highest loan amount.

select customer_name,
	   customer_id,
	   loan_amount
from loan
where loan_amount = (select max(loan_amount) from loan)

71.	Find customers who have outstanding amounts greater than the average outstanding amount.

select customer_id,
	   customer_name,
	   outstanding_amount
from loan
where outstanding_amount > (select avg(outstanding_amount) from loan)

72.	Find the loan type having the highest total loan amount.

select loan_type,
	   sum(loan_amount) as total_loan_amount
from loan
group by 1
order by 2 desc
limit 1


73.	Find customers whose annual income is greater than the average annual income.

select customer_id,
	   customer_name,
	   annual_income
from loan
where annual_income > (select avg(annual_income) from loan)

________________________________________
11. Advanced SQL — Top Management Questions

74.	Find the top 5 customers by total loan amount.

select customer_id,
	   customer_name,
	   loan_amount as total_loan_amount
from loan
order by 3 desc
limit 5

75.	Find the top 3 cities by total loan disbursement.

select city,
	   sum(loan_amount) as total_loan_amount
from loan
where loan_status = 'Disbursed'
group by 1

76.	Find the top 3 loan types by outstanding amount.

select loan_type,
	   sum(outstanding_amount) as outstanding_amount
from loan
group by 1
order by 2 desc
limit 3

77.	Find customers who have both:
•	Credit score below 650
•	Overdue amount greater than ₹50,000

select customer_id,
	   customer_name,
	   credit_score,
	   overdue_amount
from loan
where credit_score < 650
	  and
	  overdue_amount > 50000

78.	Identify customers whose loan amount is high compared with their annual income.

select customer_id,
	   customer_name,
	   loan_amount,
	   annual_income
from loan
where loan_amount > annual_income

79.	Identify customers who have multiple loans.

select customer_id,
	   count(*) as total_loan
from loan
group by 1
order by 1

80.	Find customers whose previous loan is closed but who have another active loan.

select distinct customer_id
from loan
where loan_status = 'Closed'
	  and
	  customer_id in (
	  select customer_id 
	  from loan
	  where loan_status = 'Disbursed'
	  )	
