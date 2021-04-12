--I Lýthuyeets
--Có rất nhiều dạng db, 2 dạng nổi tiếng hiện nay là RDBMS: relationship db mângement
--ở đó các table là đơn vị chính, có dây mơ rễ má vơi snhau
-- 2 là NoSQL: Blockchain

--1.Table là gì? là tập hợp dữ liệu về một nhóm object/ thing nào đó mà được mô tả thông qua đặc tính chung
--student (id, name, yob, point)
--subject (id, name, credit)

--những đặc điểm column/field/attribute/property
--1 dòng chinghs là object
--table giống nhưu cái mảng chứa nhiều object
--trong 1 table thường có 1 cột mà value của cột này không bao giờ trùng trên tất cả các dòng
--tại sao phải cần cái cột đó:
--mục đích của cột này là không cho 2 hàng bất kì trùng nhau 100%, đảm bảo viêvj truy xuất dữ liệu, cột này gọi là primary key (khoá chính-pk)

--2.Database là gì:
--Là tập hợp nhiều table của cùng một chủ đề,m một bài toán cần phải quản lý
--lưu trữ thông tin:
--quản lý bán hàng (product, supplier, custumer, employee, shipper, orders,...)
--quản lý bệnh viện (doctors, nurses, ...)
--các table này có sự liển kết vơi snhau thông qua các mối quan hệ
--quan hệ (1-1, 1-n, n-n)

--3.Để xem, thêm, xoá, sửa dữ liệu từ table ta phải
--gửi lệnh DE engine
--nhóm lệnh dùng để thao tác với dữ liệu có tên là:
--DML: data manipulation language
--các lệnh thao tác với DB ENGINE thì gọi là SQL và DML 1 nhánh trong SQL
--DDL   DCL

--II. Thực hành
--Để lấy dữ liệu từ table tta dùng lệnh SELECT có cú pháp đầy đủ như sau:
--SELECT...FROM...WHERE...GROUP BY...HAVING...ORDEER BY...
--khi thao tác lấy dữ liệu ta cũng cần biết rằngminhf đang lấy dữ liệu từ db nào
--xài lệnh use db_name hoặc chọn trực tiếp từ drop down phía trái màn hình

USE NORTHWND
--trên màn hình 
use NORTHWND
--1. Liệt kê danh sách nhân viên (9 rows)
--σ (Employees) 
    SELECT *FROM Employees
--2. Liệt kê danh sách nhân viên, ta chỉ xem 1 vài cột thoy
--liệt kê cột cần xem ngay sau từ select
--output: id, name, birthdate
--πEmpID,LastName,FirstName,Birthdate (Employees)
--πA1,A2,…,An (R)
    SELECT EmployeeID, LastName, FirstName, BirthDate FROM Employees
--3. Ghép tên thành cột FullName
    SELECT 'FullName'=FirstName+' '+LastName FROM Employees
--4. In ra năm sinh
    SELECT YEAR(BirthDate) FROM Employees
--5. Tính tuổi nhân viên
    SELECT 'FullName'=FirstName+' '+LastName, 'Old'= YEAR(GETDATE()) - YEAR(BirthDate)  FROM Employees
--6. In ra thông tin của các nhà cung cấp (29 rows)
    SELECT *FROM Suppliers
--7. In ra thông tin của các nhà vận chuyển
    SELECT *FROM Shippers
--8. In ra thông tin của các đơn hàng đã bán
    SELECT *FROM Orders
--9. In ra thông tin của các sản phẩm đang bán, đang có trong kho
    SELECT *FROM Products
--10. In ra thông tin chi tiết bán hàng (mua món nào, số lượng bao nhiêu) và tính tiền từng món đã mua
    SELECT *FROM [Order Details]
    SELECT ProductID, Quantity, 'Price' = UnitPrice*Quantity*(1-Discount) FROM [Order Details]
    SELECT *,UnitPrice*Quantity*(1-Discount)as price FROM [Order Details]