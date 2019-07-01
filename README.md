# Books_Analysis_Assigment
Book analysis assigment to find out Top popular book, longest book to read and popular books per languages.
##### Developed using pyhton for data analysis and PHP to create easily consume JSON REST API

## PreRequirements
* [Pycharm](https://www.jetbrains.com/help/pycharm/installation-guide.html?section=Windows)
* [MySQL](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/) (recommended [xampp](https://www.wikihow.com/Install-XAMPP-for-Windows))
* [PHP](https://www.wikihow.com/Install-XAMPP-for-Windows)
* [Book data](https://www.kaggle.com/jealousleopard/goodreadsbooks)

## Getting Started
### Pycharm
This project require [Pycharm](https://www.jetbrains.com/help/pycharm/installation-guide.html?section=Windows) installed on your system.
Please follow link to getting started https://www.jetbrains.com/help/pycharm/installation-guide.html?section=Windows.

### MySQL
For storing of data [MySQL](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/) needed.
Please follow link to install MySQL https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/.
##### Recommended XAMPP
Intallation Guide for [xampp](https://www.wikihow.com/Install-XAMPP-for-Windows).
* Comes with PHP, MySQL, PhpMyAdmin

# Deployment
## In Pycharm and MySQL 
For installing this project to system.
* Step-1 : Clone this project to system, unzip file.
* Step-2 : Open Pycharm and cloned unziped folder.
* Step-3 : Open file settings -> project name -> interpreter -> add Pandas, pyMysql, SQLalchemy.
* Step-4 : Open MySQL database copy database in PhpMyAdmin or other.
* Step-5 : Give path of CSV data and DB connection (check username and password for MySql) to each file.
* Step-6 : Run each file
##### Output Stored in database using Pandas.

## In PHP
For running PHP file
* Step-1 : Copy Book folder in xampp htdocs, for other copy php file to your farmework.
* Step-2 : Start xampp server
* Step-3 : Open browser localhost 
* Step-4 : Give each php file endpoints e.g. using xampp localhost/book/popular.php
##### Output is in JSON format

![alt text]()

# API Documentation
[Book-Analysis](https://documenter.getpostman.com/view/7986828/S1a7V5k7?version=latest) Rest API documention link
https://documenter.getpostman.com/view/7986828/S1a7V5k7?version=latest 

# Author
* Kartik Shende
