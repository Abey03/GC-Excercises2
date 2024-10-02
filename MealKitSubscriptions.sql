CREATE TABLE customers (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    subscription_level VARCHAR(50),
    subscription_start_date DATE,
    subscription_end_date DATE,
    state VARCHAR(100)
);

INSERT INTO customers (full_name, email, subscription_level, subscription_start_date, subscription_end_date, state) 
VALUES ('Aisha Khan', 'aisha.khan@yahoo.com', 'Premium', '2024-01-01', '2024-12-31', 'NY'),
('Carlos Ramirez', 'carlos.ramirez@yahoo.com', 'Standard', '2024-01-10', '2024-12-31', 'CA'),
('Liam Brown', 'liam.brown@gmail.com', 'Premium', '2024-03-01', NULL, 'WA'),
('Sophia Chen', 'sophia.chen@umich.edu', 'Standard', '2024-02-15', NULL, 'WA'),
('Chad Murphy', 'chad.murphy@gmail.com', 'Premium', '2024-04-01', NULL, 'IL'),
('Siobhan Byrne', 'siobhan.byrne@gmail.com', 'Standard', '2024-04-01', NULL, 'MA'),
('Ashley Zahra', 'ashley.zahra@gmail.com', 'Premium', '2024-05-01', '2024-12-31', 'AZ'),
('Chris Miller', 'chris.miller@yahoo.com', 'Standard', '2024-06-01', NULL, 'WA'),
('Ravi Singh', 'ravi.singh@gmail.com', 'Premium', '2024-05-01', NULL, 'NY'),
('Emma Johnson', 'emma.johnson@gmail.com', 'Standard', '2024-06-01', NULL, 'IL'),
('Hiroshi Nakamura', 'hiroshi.nakamura@gmail.com', 'Premium', '2024-07-01', NULL, 'WA'),
('Isabella Rossi', 'isabella.rossi@gmail.com', 'Standard', '2024-01-01', '2024-05-01', 'CA'),
('Sean Connor', 'sean.connor@gmail.com', 'Premium', '2024-01-01', '2024-12-31', 'WA'),
('Brittney Kelly', 'brittney.kelly@gmail.com', 'Standard', '2024-01-15', NULL, 'IL'),
('Patrick Murphy', 'patrick.murphy@gmail.com', 'Premium', '2024-02-01', NULL, 'AZ'),
('Fiona Walsh', 'fiona.walsh@gmail.com', 'Standard', '2024-03-01', NULL, 'MA'),
('Anna Schmidt', 'anna.schmidt@gmail.com', 'Premium', '2024-04-01', '2024-12-31', 'IL'),
('Max Weber', 'max.weber@gmail.com', 'Standard', '2024-05-01', NULL, 'WA'),
('Greta Fischer', 'greta.fischer@gmail.com', 'Premium', '2024-06-01', '2025-05-31', 'WA'),
('Ahmed Al-Farsi', 'ahmed.alfarsi@gmail.com', 'Premium', '2024-07-01', '2024-12-31', 'AZ'),
('Maya Patel', 'maya.patel@gmail.com', 'Standard', '2024-01-20', NULL, 'CA'),
('Jacob Lee', 'jacob.lee@gmail.com', 'Premium', '2024-02-01', '2024-12-31', 'NY'),
('Olivia Nguyen', 'olivia.nguyen@msu.edu', 'Standard', '2024-03-01', NULL, 'WA'),
('James Davis', 'james.davis@yahoo.com', 'Premium', '2024-03-15', NULL, 'TX'),
('Emma Collins', 'emma.collins@gmail.com', 'Standard', '2024-04-01', NULL, 'CA'),
('Benjamin Clark', 'benjamin.clark@gmail.com', 'Premium', '2024-04-10', '2024-12-31', 'WA'),
('Sophia Gonzalez', 'sophia.gonzalez@gmail.com', 'Standard', '2024-05-01', NULL, 'NY'),
('Ethan Moore', 'ethan.moore@wmu.edu', 'Premium', '2024-05-15', NULL, 'IL'),
('Isabella Kim', 'isabella.kim@gmail.com', 'Standard', '2024-06-01', NULL, 'TX'),
('Lucas Brown', 'lucas.brown@gmail.com', 'Premium', '2024-06-15', NULL, 'NY'),
('Zoe Martinez', 'zoe.martinez@gmail.com', 'Standard', '2024-07-01', NULL, 'AZ'),
('Oliver White', 'oliver.white@gmail.com', 'Premium', '2024-07-15', NULL, 'WA'),
('Lily Adams', 'lily.adams@gmail.com', 'Standard', '2024-08-01', NULL, 'NY'),
('Mason Turner', 'mason.turner@yahoo.com', 'Premium', '2024-08-15', NULL, 'IL'),
('Ava Robinson', 'ava.robinson@gmail.com', 'Standard', '2024-09-01', '2025-09-01', 'TX'),
('Jackson Lewis', 'jackson.lewis@yahoo.com', 'Premium', '2024-09-15', '2024-12-31', 'NY'),
('Mia Johnson', 'mia.johnson@gmail.com', 'Standard', '2024-10-01', NULL, 'WA'),
('Henry Walker', 'henry.walker@gmail.com', 'Premium', '2024-10-15', NULL, 'AZ'),
('Charlotte Hall', 'charlotte.hall@gmail.com', 'Standard', '2024-11-01', NULL, 'NY'),
('Daniel Young', 'daniel.young@yahoo.com', 'Premium', '2024-11-15', NULL, 'IL');
-- Select all the records from the customers table.
SELECT *
FROM customers;
-- Find all customers who have a Premium subscription.
SELECT * FROM customers WHERE subscription_level = 'Premium';
-- Get distinct states from the customers table. Sort alphabetically. (Hint: research the DISTINCT keyword. Notice the difference with and without DISTINCT.)
SElECT DISTINCT state FROM customers ORDER BY state;
-- Count the number of customers from the state of NY.
SELECT COUNT(state) FROM customers WHERE state = 'NY';
-- List the customer name and email data for customers with no subscription end date.
SELECT full_name, email FROM customers WHERE subscription_end_date = NULL;
-- Create an index on the state column
SELECT state FROM customers;
-- Insert a new customer into the customers table.
INSERT INTO customers (full_name, email, subscription_level, subscription_start_date, subscription_end_date, state) 
VALUES ('Abe Molina', 'abemolina03@gmail.com', 'Premium', '2024-11-15', NULL, 'MI');
-- Update Emma Collins to a Premium subscription.
UPDATE customers SET subscription_level = 'Premium' WHERE full_name = 'Emma Collins';
-- Count the number of accounts who have an .edu email address. (Hint: research the LIKE operator.)
SELECT COUNT(email) FROM customers WHERE email LIKE '%edu';
-- Delete all customers whose subscription has expired (assume the date today is August 1, 2024).
DELETE FROM customers WHERE subscription_end_date > '2024-8-1';
-- Select all premium customers in New York, listing their name and email address. Sort by name in ascending order.
SELECT full_name, email FROM customers WHERE state = 'NY'
ORDER BY state ASC;

-- NEW TABLE 
CREATE TABLE meals (
	meal_id SERIAL PRIMARY KEY,
	meal_name VARCHAR(255) NOT NULL,
	calories INT,
	price DECIMAL(10, 2),
	is_vegetarian BOOLEAN,
	subscription_level VARCHAR(50)
);
-- Insert 3 meals into the meals table.
INSERT INTO meals (meal_name, calories, price, is_vegetarian, subscription_level)
VALUES ('Lasagna', 250, 12.99, FALSE, 'Standard'),
('Apple Pie', 160, 7.99, TRUE, 'Premium'),
('Stir Fry', 240, 15.99, FALSE, 'Premium'),
('Vegetable Quiche', 500, 11.00, TRUE, 'Standard'),
('Roasted Duck Breast', 700, 22.50, FALSE, 'Premium'),
('Mushroom Stroganoff', 500, 12.00, TRUE, 'Standard'),
('Filet Mignon', 700, 30.00, FALSE, 'Premium'),
('Greek Salad', 500, 9.00, TRUE, 'Standard'),
('Wild Mushroom Soup', 500, 14.00, TRUE, 'Premium'),
('Chicken Parmesan', 700, 13.50, FALSE, 'Standard'),
('Seafood Paella', 900, 26.00, FALSE, 'Premium');
-- List the meal names of the first 5 meals that are vegetarian. 
SELECT * FROM meals WHERE is_vegetarian = TRUE;
-- Get all meals sorted by calories in descending order and then by price in ascending order.
SELECT * FROM meals
ORDER BY calories DESC, price ASC;
-- Update the price of all meals with subscription_level 'Premium' to increase by 5.00.
UPDATE meals SET price = price + 5.00 WHERE subscription_level = 'Premium';
-- Calculate the average, max, and min of the price in the meals table.
SELECT AVG(price) FROM meals;
SELECT MIN(price) FROM meals;
SELECT MAX(price) FROM meals;
-- Get all meals that have a price between 10.00 and 20.00. (Hint: research the BETWEEN keyword.)
SELECT * FROM meals WHERE price BETWEEN 10 AND 20;
-- BONUS: Add a new INT column named star_rating to meals, initialized to NULL. (Hint: Use an ALTER TABLE statement.)
ALTER TABLE meals
ADD star_rating INT NULL;
-- Create a table called "oops" with columns id (SERIAL PRIMARY KEY) and foo (INT). Drop the "oops" table.
CREATE TABLE oops (
	columns_id SERIAL PRIMARY KEY,
	foo INT 
);
-- Drop Table
DROP TABLE oops;

-- PART TWO (Group By, Having)

-- Find the number of meals at each subscription_level
SELECT COUNT(subscription_level), subscription_level FROM meals
GROUP BY subscription_level;
-- Find the average price for meals at each subscription_level.
SELECT AVG(price), subscription_level FROM meals
GROUP BY subscription_level;
-- Find the average calories for vegetarian and non-vegetarian meals.
SELECT AVG(calories), is_vegetarian FROM meals
GROUP BY is_vegetarian;
-- Find the cheapest meal price at each subscription level
SELECT MIN(price), subscription_level FROM meals
GROUP BY subscription_level;
-- Find the number of customers in each state. Sort alphabetically by state.
SELECT COUNT(state), state FROM customers
GROUP BY state
ORDER BY state;
-- Find the number of customers in each state. Sort by number of customers, highest first. Only show the states with at least 5 customers.
SELECT COUNT(state), state FROM customers
GROUP BY state
HAVING COUNT(state) > 5
ORDER BY COUNT(state) DESC;
	



