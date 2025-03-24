CREATE DATABASE e_commerce;
USE e_commerce;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    e_mail VARCHAR(50) UNIQUE,
    user_password VARCHAR(40) UNIQUE
);

INSERT INTO users (id, first_name, last_name, e_mail, user_password)
VALUES (1, 'Alice', 'Wonderland', 'alice@example.com', 'secretpassword');

SELECT * FROM users;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL,
    ImageURL VARCHAR(255),
    Category VARCHAR(50) 
);

INSERT INTO Products (ProductName, Price, Quantity, Category, ImageURL)
VALUES ('semo', 15.00, 10, 'food', '***');

SELECT * FROM Products;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    OrderStatus VARCHAR(50) DEFAULT 'Pending',
    Address VARCHAR(255),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);


INSERT INTO Orders (UserID, TotalAmount, OrderStatus, Address)
VALUES (1, 50.00, 'Shipped', '277 borno way');

select * from Orders,users,Products;
