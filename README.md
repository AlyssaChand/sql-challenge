# sql-challenge

These are the following sources I used to help write my code: [QuickDBD](http://www.quickdatabasediagrams.com/) , https://www.postgresql.org/docs/current/index.html, and BCS by watching our cloud recordings and working on our class activities.

## Data Modeling
I inspected the CSV files provided in the challenge to sketch an ERD (Entity Relationship Diagram) of the tables. I used [QuickDBD](http://www.quickdatabasediagrams.com/) to create the sketch. 

## Data Engineering
I used the ERD as a guide to create a table schema and then imported each of the CSV file into its corresponding SQL table.

## Data Analysis
I referred to PostgreSQL documentation and our BCS cloud recordings and class activities to help write the code to answer each queries.

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
