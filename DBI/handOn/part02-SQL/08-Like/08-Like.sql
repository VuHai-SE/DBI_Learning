--I. Lý thuyết:
--khi cần lọc/filter/search các dòng nào đó ta dùng where
--vd:tìm sv quê ở Đồng Nai
--lôi từng sv ra, nếu đứa nào có city ='đồng nai' thì lấy 
--tức là phải đúng tuyệt đối (đồng tháp=>không)
--nhưng người ta lại muốn mình lấy ra những đứa mà trong tên của quê
-- có chứa từ đồng ở đầu or ở cuối or ở đâu trong tên cũng được.
--=>DB Engine cho ta một toán tử mới là like (giống, same)
--khi dùng like ta có 2 ký tự kèm theo:
--  %:sẽ là đại diện cho 1 nhóm ký tự bất kì
--  _:sẽ là đại diện cho một ký tự bất kì

--vd: trong tên có chữ Hà
--name like '%Hà%'
--name like '%Hà' hà ở cuối
--name like 'Hà%' Hà ở đầu
--name like '_____ ' (tên cso 5 ký tự)
--nhớ rằng nếu có dấu thì phải có 'N'

------------------------------------------------------------------------
--II. THỰC HÀNH
------------------------------------------------------------------------
--1. Dùng NorthWnd
    use NORTHWND
--2. In ra danh sách nhân viên
    SELECT *FROM Employees
--3. In ra nhân viên có tên là Robert (tìm chính xác)  - 1 row
    SELECT *FROM Employees WHERE FirstName = 'robert'
--4. In ra những nhân viên có tên là A (0 row) vì tìm chính xác 
    SELECT *FROM Employees WHERE FirstName = 'a'
--5. In ra những nhân viên mà tên có chữ A đứng đầu (2 người, Andrew, Anne)
    SELECT *FROM Employees WHERE FirstName LIKE 'a%'
--6. In ra những nhân viên mà tên có chữ A đứng cuối cùng
    SELECT *FROM Employees WHERE FirstName LIKE '%a'
--7. In ra những nhân viên mà tên có chữ A (ko quan tâm chữ A đứng ở đâu trong tên)
    SELECT *FROM Employees WHERE FirstName LIKE '%A%'
--8. Những nhân viên nào có tên gồm đúng 3 kí tự --0ROW, VÌ TOÀN LÀ 4 KÍ TỰ TRỞ LÊN 
    SELECT *FROM Employees WHERE FirstName LIKE '___'
--9. Những nhân viên nào mà tên có 4 kí tự, kí tự cuối cùng là A
    SELECT *FROM Employees WHERE FirstName LIKE '___a'
--10. Những nhân viên nào mà tên có 5 kí tự, và có chứa chữ A (A ở đâu cũng đc) --3rows
    SELECT *FROM Employees WHERE FirstName LIKE '_____' AND FirstName LIKE '%a%'
--11. Tìm các khách hàng mà mã số có chứa chữ I đứng thứ 2 kể từ bên trái sang
    SELECT *FROM Customers WHERE CustomerID LIKE '_i%'
--12. Tìm các sản phẩm mà tên sản phẩm có 5 kí tự 
    SELECT *FROM Products WHERE ProductName LIKE '_____'
--13. Tìm các sản phẩm mà từ cuối cùng trong tên sản phẩm có 5 kí tự
    SELECT *FROM Products WHERE ProductName LIKE '% _____' OR ProductName LIKE '_____'