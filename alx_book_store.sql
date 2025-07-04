--create database

CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

--create books schema
CREATE TABLE Books (
    book_id Primary Key,
    title VARCHAR(130),
    author_id (Foreign Key referencing Authors table),
    price DOUBLE,
    publication_date DATE
);

--create Authors table schema
CREATE TABLE Authors (
    author_id Primary Key,
    author_name VARCHAR(215)
);

--create Customers table schema
CREATE TABLE Customers (
    customer_id Primary Key,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

--create Orders table schema
CREATE TABLE Orders (
    order_id Primary Key,
    customer_id (Foreign Key referencing Customers table),
    order_date DATE
);

--create Order_Details
CREATE TABLE Order_Details (
    orderdetailid Primary Key,
    order_id (Foreign Key referencing Orders table),
    book_id (Foreign Key referencing Books table),
    quantity DOUBLE
);