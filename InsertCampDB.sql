INSERT INTO Payments (payCode, payMethod)
SELECT DISTINCT payCode, payMethod FROM campData;

INSERT INTO Customers (custCode, custName, custSurname, custPhone)
SELECT DISTINCT custCode, custName, custSurname, custPhone FROM campData;

INSERT INTO Employees (staffNo, staffName, staffSurname)
SELECT DISTINCT staffNo, staffName, staffSurname FROM campData;

INSERT INTO Campsites (campCode, campName, numOfEmp)
SELECT DISTINCT campCode, campName, numOfEmp FROM campData;

INSERT INTO Categories (catCode, areaM2, unitCost)
SELECT DISTINCT catCode, areaM2, unitCost FROM campData;

INSERT INTO Emplacements (campCode, empNo, catCode)
SELECT DISTINCT campCode, empNo, catCode FROM campData;

INSERT INTO Bookings (bookCode, bookDt, payCode, custCode, staffNo)
SELECT DISTINCT bookCode, bookDt, payCode, custCode, staffNo FROM campData;

INSERT INTO BookingDetails (bookCode, campCode, empNo, startDt, endDt, noPers)
SELECT bookCode, campCode, empNo, startDt, endDt, noPers FROM campData;