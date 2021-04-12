--03-Distinct.sql
----------------------------------------------
--LÍ THUYẾT
----------------------------------------------
--Một table thường sẽ có 1 cột (nhiều cột) mà
--value của nó ko trùng lại trên toàn bộ table, cột
--nhiều cột này đc gọi là PK (primary key)
--Câu lệnh select *  from sẽ luôn trả ra các dòng khác nhau
--Tuy nhiên nếu ta chỉ select trên 1 vài cột, thì có
--khả năng kết quả trả về bị trùng nhau 
--(Chiếu trên 1 vài cột thì có các tuple, bộ trùng nhau)
--XÀI keyword DISTINCT để loại bỏ đi những dòng bị trùng 
--dòng nào trùng chỉ lấy 1 value
--Distinct nằm sát ngay sau select

---------------------------------------------------
--II. THỰC HÀNH
--------------------------------------------------- 
--1. In ra danh sách nhân viên, toàn bộ info luôn
    SELECT *FROM Employees
--2. In ra tỉnh/tp của các nhân viên
    SELECT DISTINCT City FROM Employees
--3. Liệt kê các quốc gia mà đơn hàng đc gửi tới
    SELECT DISTINCT ShipCountry FROM Orders