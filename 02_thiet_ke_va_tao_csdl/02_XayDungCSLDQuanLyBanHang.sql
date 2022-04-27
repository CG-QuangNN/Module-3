CREATE DATABASE QuanLyBanHang;
USE QuanLyBanHang;


CREATE TABLE Customer
(
	cID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(25) NOT NULL,
    cAge tinyint NOT NULL
);

CREATE TABLE Orders
(
    oID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cID INT NOT NULL,
    oDate DATETIME NOT NULL,
    oTotalPrice int,
    FOREIGN KEY (cID) REFERENCES Customer (cID)
);

CREATE TABLE Product
(
    pID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pName VARCHAR(25) NOT NULL,
    pPrice int NOT NULL
);

CREATE TABLE OrderDetail
(
    oID INT NOT NULL,
    pID INT  NOT NULL ,
    odQTY int NOT NULL,
    FOREIGN KEY (oID) REFERENCES Orders (oID),
    FOREIGN KEY (pID) REFERENCES Product (pID),
    PRIMARY KEY(oID, pID)
);