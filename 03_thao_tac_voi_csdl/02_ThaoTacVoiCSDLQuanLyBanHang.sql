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

INSERT INTO Customer
VALUES (1, 'Minh Quan', 10);
INSERT INTO Customer
VALUES (2, 'Ngoc Oanh', 20);
INSERT INTO Customer
VALUES (3, 'Hong Ha', 50);

INSERT INTO Orders
VALUES (1, 1, '2006-03-21', null);
INSERT INTO Orders
VALUES (2, 2, '2006-03-23', null);
INSERT INTO Orders
VALUES (3, 1, '2006-03-16', null);

INSERT INTO Product
VALUES (1, 'May Giat', 3);
INSERT INTO Product
VALUES (2, 'Tu Lanh', 5);
INSERT INTO Product
VALUES (3, 'Dieu Hoa', 7);
INSERT INTO Product
VALUES (4, 'Quat', 1);
INSERT INTO Product
VALUES (5, 'Bep Dien', 2);

INSERT INTO OrderDetail
VALUES (1, 1, 3);
INSERT INTO OrderDetail
VALUES (1, 3, 7);
INSERT INTO OrderDetail
VALUES (1, 4, 2);
INSERT INTO OrderDetail
VALUES (2, 1, 1);
INSERT INTO OrderDetail
VALUES (3, 1, 8);
INSERT INTO OrderDetail
VALUES (2, 5, 4);
INSERT INTO OrderDetail
VALUES (2, 3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT oID,
       oDate
FROM Orders;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT c.Name,
       p.pName
FROM customer c
INNER JOIN orders o ON c.cID = o.CID
INNER JOIN orderDetail od ON o.oID = od.oID
INNER JOIN product p ON od.pID = p.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT c.Name
FROM customer c
LEFT JOIN orders o ON c.cID = o.CID
LEFT JOIN orderDetail od ON o.oID = od.oID
LEFT JOIN product p ON od.pID = p.pID
WHERE p.pID IS NULL;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY*pPrice)
SELECT o.oID,
       o.oDate,
       sum(od.odQTY) * sum(p.pPrice)
FROM orders o
INNER JOIN orderDetail od ON o.oID = od.oID
INNER JOIN product p ON od.pID = p.pID
GROUP BY o.oID,
         o.oDate
