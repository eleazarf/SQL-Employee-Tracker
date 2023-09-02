# SQL Employee Tracker
A user-friendly interface for non-developers to access and manage an employee database info. The command-line app use Node.js, Inquirer & MySQL to manage a company's employee data.

## Table of Contents
* [Description](#description)
* [Install](#install)
* [Use](#use)

## Description
SQL Employee Tracker serves as a user-friendly content management system (CMS) interface designed for non-developers. This command-line application harnesses the power of Node.js, Inquirer, and a MySQL database. SQL Employee Tracker empowers business owners to seamlessly access and oversee their staff's details. Upon launching the application, users are presented with a range of options, including the following:

* View all employees
* View all roles
* View all departments
* Add a department
* Add a role
* Add an employee
* Update role for an employee
* View employees by manager
* Update employee's manager
* Delete a department
* Delete a role
* Delete an employee
* View the total utilized budget of a department

## Install
To verify Node.js installation, type "node -v" in your command line. If Node is absent, access the Node.js website for installation. Subsequently, clone this repository to your machine. Run the following line of code in your terminal to install all the needed packages: 

```
npm i
```

## Use
First you must prepare your mysql database using the .db/schema.sql and .db/seed.sql files in the repo:

* Creating database schema:
![Alt text](images/example1.gif)

* Filling database tables:

After installing all the required packages, launch your terminal and execute the following command in the command line:
```
npm start
```
![Alt text](images/image-5.png)
