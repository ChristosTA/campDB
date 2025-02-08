-- ??????? ???????
CREATE TABLE Customers (
    custCode INT PRIMARY KEY,
    custName VARCHAR(30),
    custSurname VARCHAR(30),
    custPhone VARCHAR(20)
);

-- ??????? ?????????
CREATE TABLE Employees (
    staffNo INT PRIMARY KEY,
    staffName VARCHAR(30),
    staffSurname VARCHAR(30)
);

-- ??????? ????????
CREATE TABLE Payments (
    payCode INT PRIMARY KEY,
    payMethod CHAR(2)
);

-- ??????? ?????????????
CREATE TABLE Campsites (
    campCode CHAR(3) PRIMARY KEY,
    campName VARCHAR(50),
    numOfEmp INT
);

-- ??????? ?????????? ??????
CREATE TABLE Categories (
    catCode CHAR(1) PRIMARY KEY,
    areaM2 INT,
    unitCost DECIMAL(4,2)
);

-- ??????? ?????? ????????????
CREATE TABLE Emplacements (
    campCode CHAR(3),
    empNo INT,
    catCode CHAR(1),
    PRIMARY KEY (campCode, empNo),
    FOREIGN KEY (campCode) REFERENCES Campsites(campCode),
    FOREIGN KEY (catCode) REFERENCES Categories(catCode)
);

-- ??????? ?????????
CREATE TABLE Bookings (
    bookCode INT PRIMARY KEY,
    bookDt DATE,
    payCode INT,
    custCode INT,
    staffNo INT,
    FOREIGN KEY (payCode) REFERENCES Payments(payCode),
    FOREIGN KEY (custCode) REFERENCES Customers(custCode),
    FOREIGN KEY (staffNo) REFERENCES Employees(staffNo)
);

-- ??????? ???????????? ????????
CREATE TABLE BookingDetails (
    bookCode INT,
    campCode CHAR(3),
    empNo INT,
    startDt DATE,
    endDt DATE,
    noPers INT,
    PRIMARY KEY (bookCode, campCode, empNo, startDt),
    FOREIGN KEY (bookCode) REFERENCES Bookings(bookCode),
    FOREIGN KEY (campCode, empNo) REFERENCES Emplacements(campCode, empNo)
);