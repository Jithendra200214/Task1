# E-Commerce Database Project

## Overview
This project demonstrates the creation of a well-structured **e-commerce database** using SQL. The database is designed to store information about customers, products, orders, and order items while maintaining data integrity and minimizing redundancy.

---

## Database Schema
The database includes the following tables:

1. **Customers**  
   Stores customer information.  
   - `CustomerID` (Primary Key)  
   - `Name`  
   - `Email`  
   - `Phone`  

2. **Products**  
   Stores product information.  
   - `ProductID` (Primary Key)  
   - `Name`  
   - `Price`  
   - `Stock`  

3. **Orders**  
   Stores order information linked to customers.  
   - `OrderID` (Primary Key)  
   - `CustomerID` (Foreign Key referencing `Customers`)  
   - `OrderDate`  
   - `TotalAmount`  

4. **OrderItems**  
   Stores individual items in each order.  
   - `OrderItemID` (Primary Key)  
   - `OrderID` (Foreign Key referencing `Orders`)  
   - `ProductID` (Foreign Key referencing `Products`)  
   - `Quantity`  
   - `Price`  

---

## Steps Taken

1. **Database Design**  
   - Analyzed the e-commerce requirements and identified entities: Customers, Products, Orders, OrderItems.  
   - Created a **well-structured schema** to avoid redundancy and ensure relationships between tables.  

2. **SQL Table Creation**  
   - Defined each table with proper **columns, data types, primary keys, and foreign keys**.  
   - Ensured **referential integrity** using foreign key constraints.  

3. **Data Insertion**  
   - Added sample data for testing queries, including customers, products, and orders.  

4. **SQL Queries**  
   - Wrote queries for common e-commerce operations, such as:  
     - shows products under each order
     - show sales transactions with payment details 
     - Show total revenue grouped by payment method 
      

5. **Validation**  
   - Tested all queries to ensure accurate results and consistency with the schema.  

---

## Outcome
- A **well-structured relational database** suitable for an e-commerce application.  
- Tables are **normalized**, relationships are defined, and queries demonstrate data retrieval and analysis.

---

## Future Improvements 
- Implement stored procedures for automated reporting.  
- Add indexes for faster query performance on large datasets.
