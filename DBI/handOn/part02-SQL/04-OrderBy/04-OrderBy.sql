--Sắp xếp
--I- Lý thuyết
--*Khi ta cần sắp xếp kết quả trả về từ câu SELECT, ta xài từ khoá ORDER BY
--*từ khoá ORDER BY bắt buộc phải dùng cuối câu lệnh SQL
--*Có 2 dạng sắp xếp: Tăng dần (asc), giảm dần (desc)
--*Quy tắc sắp xếp như sau: số so sánh bình thường, ngày so sánh bình thường, chuỗi sài hơn không có nghĩa là lớn hơn,
--so sánh nhiều cột khác nhau

--II. Bài tập
--1. In ra ds khách hàng
    USE NORTHWND
    SELECT *FROM Customers
--2. In ra ds khách hàng sắp xếp theo thành phố
    SELECT *FROM Customers ORDER BY City ASC
--3. sắp xếp khách hàng theo mã khách hàng
    SELECT *FROM Customers ORDER BY CustomerID ASC
--4. sắp xếp khách hàng theo khu vực
    SELECT *FROM Customers ORDER BY Country ASC
--5. sắp xếp kh theo thành phố và khu vực
    SELECT *FROM Customers ORDER BY City, Country ASC