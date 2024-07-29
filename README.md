# sql-challenge

## Introduction

In this scenario I have been hired as a new data engineer for a company to and my first task to do a project on the 
company's employees from the 1980's to the 1990's. 

I am tasked with exploring relationships visualy, generating tables to store CSV files, and subsequently exploring these 
relationships further with given perimeters. 

## Data Modeling 

* I began exploring relationships by opening up our given data in there respective CSV files, observing and noting column's titles and values for each table.

* I further took note of the Primary Key(Unique Identifier) for each table, and also the Foreign Keys which are then used to draw relationship between columns in seperate tables. 

* After identifying these factors, I created an ERD (Entity Relationship Diagram) using the QuickDataBaseDiagram application. (diagram shown below)

![](./EmployeeSQl/Data_Modeling/QuickDBD-sql-challenge.png)

## Data Engineering 

* Using my now created ERD, I was then able to manually create my tables in a new Query on PostreSQL. Although there was the option to automatically generate this Query from the QuickDataBase website, I encountered some issues with the order of the table creation. I also prefered my syntax for the table creation over QDB, as it looked cleaner with less code. 

* I created all six tables including Column Title, Primary Key, Foreign Key, and Data Types.

* Once the tables were set, I was then able to import each CSV into its respective table using the Import/Export option in PostgreSQL. This was successfully done, and I was then able to explore and manipulate the data in my next Query.


## Data Analysis 

* My assigment required the exploration of 8 seperate data analysis querys for the company employees: 

1.List the employee number, last name, first name, sex, and salary of each employee.

2.List the first name, last name, and hire date for the employees who were hired in 1986.

3.List the manager of each department along with their department number, department name, employee number, last name, and first name.

4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6.List each employee in the Sales department, including their employee number, last name, and first name.

7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

To view this Query, please click [HERE](./EmployeeSQL/Data_Analysis/Analysis_Employees.sql)


