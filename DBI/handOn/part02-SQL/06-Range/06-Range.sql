--I. Lý thuyết
--khi ta cần filter/ lọc/ where các dòng nào đso trong 1 table và có đk lọc liên quan đến một khoản nào đó
--where year(birthday) >= 1999
--Func between ... and ...
--where year(birthday) between 1990 and 1999
--Bên cạnh đó mình còn có một loại nữa là tập giá trị
--where shipCountry IN ('USA', 'UK')

--II. THỰC HÀNH
------------------------------------------------------------------------
USE NORTHWND
--1. Liệt kê các đơn hàng gửi tới Anh Pháp Mĩ Đức (377)
    SELECT *FROM Orders WHERE ShipCountry IN ('france', 'usa', 'Germany', 'UK')
--ShipCountry rơi vào 1 trong những giá trị sau
--NHỚ KĨ CÂU NÀY, DÍNH ĐẾN CHƯƠNG 2 - NÓI VỀ SUB-QUERY, QUERY LỒNG
--NESTED QUERY 
--2. Liệt kê các đơn hàng KHÔNG gửi tới Anh Pháp Mĩ Đức (337)
    SELECT *FROM Orders WHERE ShipCountry NOT IN ('France', 'USA', 'Germany', 'UK')
--3. Liệt kê các đơn hàng có trọng lượng từ 50 đến 100 pound
-- filter 1 đoạn, ta xài < and >, between (173)
    SELECT *FROM Orders WHERE Freight BETWEEN 50 and 100
-- ko xài between, còn cách khác, dùng not 

--between là đẹp nhất
--4. Liệt kê các đơn hàng trong năm 1996 ngoại trừ các tháng 6 7 8 9 (82 rows)
    SELECT *FROM Orders WHERE YEAR(OrderDate) IN ('1996') AND MONTH(OrderDate) NOT IN ('6','7','8','9')