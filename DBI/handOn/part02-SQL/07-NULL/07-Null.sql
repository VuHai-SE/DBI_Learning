--I. Lý thuyết
--Dữ liệu trong thực tế có đôi khi cso tình trạng không xác định được chính xác value cảu nó là gì
--ví dụ: khi thi cuối kì bạn kí tên vào ds thi sinh viên dự thi, trong ds này có cột điểm này lúc đang thi thì không có value,
--mình biết kiểu dữ liệu của nó là gì nhưng không biết value nó là gì, undefined
--gọi là trạng thái NULL (undefined)
--vì nó vô định không rõ ràng nên không thể so sánh được => tức là mình không thể duingf toán tử đẻ so sanhh với nó được
--is null/ is not null/ not (...is null)

-------------------------------------------------------
--II. THỰC HÀNH
------------------------------------------------------
--1. Xài db Northwnd
    USE NORTHWND
--2. Liệt kê danh sách nhân viên
    SELECT *FROM Employees
--3. Liệt kê danh sách nhân viên chưa xác định đc khu vực/vùng cư ngụ/ở
    SELECT *FROM Employees WHERE Region IS NULL
--4. Liệt kê danh sách nhân viên đã xác định đc khu vực cư ngụ --5 rows 
    SELECT *FROM Employees WHERE Region  IS NOT NULL
--5. Liệt kê danh sách nhân viên đã xđ đc khu vực cư ngụ và có chức danh là đại diện kinh doanh (3 rows)
    SELECT *FROM Employees WHERE Region  IS NOT NULL AND Title = 'Sales Representative'
--6. Liệt kê danh sách khách hàng
    SELECT *FROM Customers
--7. Liệt kê danh sách khách hàng có số FAX  (69) 
    SELECT *FROM Customers WHERE Fax IS NOT NULL
--8. Liệt kê khách hàng vừa có Fax vừa có Region (20 rows) vừa có này, vừa có kia, đồng thời cả 2
    SELECT *FROM Customers WHERE Fax IS NOT NULL AND Region IS NOT NULL
--9. Liệt kê khách hàng ở Đức, Mĩ, Pháp, vừa có Fax vừa có Region (9 rows)
    SELECT *FROM Customers WHERE Fax IS NOT NULL AND Region IS NOT NULL AND Country IN ('france', 'usa', 'Germany')
--10. Khách hàng nào ở Anh quốc mà chưa xác định được khu vực --6 rows
    SELECT *FROM Customers WHERE Region IS NULL AND Country IN ('UK')