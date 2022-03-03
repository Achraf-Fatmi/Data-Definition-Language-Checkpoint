CREATE TABLE Customer (
    Customer_id VARCHAR2(20) CONSTRAINT Customer_id_key PRIMARY KEY,
    Customer_Name VARCHAR2(20) CONSTRAINT Customer_Name_not_null NOT NULL,
    Customer_Tel NUMBER,
);

CREATE TABLE Product (
    Product_id VARCHAR2(20) CONSTRAINT Product_id_key PRIMARY KEY,
    Product_Name VARCHAR2(20) CONSTRAINT Product_Name_not_null NOT NULL, 
    Price NUMBER CONSTRAINT Price_positive CHECK (Price > 0),

);

CREATE TABLE Orders (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity NUMBER, 
    Total_amount NUMBER, 
    CONSTRAINT CustomerID FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id),
    CONSTRAINT ProductID FOREIGN KEY (Product_id) REFERENCES Product (Product_id),
);


ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE Orders ADD OrderDate DATE DEFAULT 'SYSDATE';