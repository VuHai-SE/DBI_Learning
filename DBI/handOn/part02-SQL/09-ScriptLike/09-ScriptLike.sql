--Tạo 1 cái thùng (ngôi nhà)// database dùng để lưu nhiều table, mỗi table lại chứa nhiều dữ liệu
CREATE DATABASE K16_BasicSelect
USE K16_BasicSelect

--DDL
CREATE TABLE SalesRate (
    id INT PRIMARY KEY IDENTITY(1,1), --bắt đầu từ 1 tăng 1
    name NVARCHAR(30), --char lưu trên ram, truy xuất nhanh nhưng độ dài không co dãn, chèn cách
    --varchar: có thể co không dãn, khả năng truy xuất tháp hơn, lưu ở hdd
    --lưu sđt, số nhà dùng char vì khong tính toán
    title VARCHAR(30),
    email VARCHAR(50),
    commission VARCHAR(20)
)
--kỹ thuật chèn cột 3
--DML
--DML 
insert into SalesRate(name, title, email, commission) values ('Seosamh O''Conaill', 'Sales Representative', 'seo_conaill@foo.com', '5%-15%');
insert into SalesRate(name, title, email, commission) values ('Nancy C. Walker', 'Sales Representative', 'nancy-walker@foo.com', '15%');
insert into SalesRate(name, title, email, commission) values ('Gearóid O''Tuathail', 'Sales Agent', 'gear_tuat@foo.com', '10%-20%');
insert into SalesRate(name, title, email, commission) values ('O''Beefe', 'Sales Agent', 'beefe@foo.com', '20%');
insert into SalesRate(name, title, email, commission) values ('O''Reilly', 'Sales Associate', 'o_reilly@foo.com', '10%');
insert into SalesRate(name, title, email, commission) values ('Raphael Schweikert', 'Sales Associate', 'raph@foo.com', '8%-10%');
insert into SalesRate(name, title, email, commission) values ('Ann Jessie', 'Sales Manager', 'anjess@foo.com', '10.5%');
insert into SalesRate(name, title, email, commission) values ('Denis O''Brien', 'Sales Manager', 'den_brien@foo.com', 'TBA');
insert into SalesRate(name, title, email, commission) values ('Joseph O''Sullivan', 'Sales Manager', 'jo-sull@foo.com', 'TBA');

--1. In ra nhân viên mà email có chứa chữ - 
select *from SalesRate where email like '%-%'
--2. In ra nhân viên mà email có chứa chữ _
SELECT *FROM SalesRate WHERE email LIKE '%[_]%'
--3. Nhân viên nào có huê hồng bằng đúng 10%
SELECT *FROM SalesRate WHERE commission = '10%'
--4. Nhân viên nào có huê hồng chứa 10%
SELECT *FROM SalesRate WHERE commission LIKE '%10[%]%'
--5. Nhân viên nào email có chứa - và huê hồng đúng 10%
SELECT *FROM SalesRate WHERE commission = '10%' AND email LIKE '%-%'
--6. Nhân viên nào email có chứa _ và huê hồng đúng 10%
SELECT *FROM SalesRate WHERE commission = '10%' AND email LIKE '%[_]%'
--7. Nhân viên nào email chứa _ và huê hồng chứa 10%
SELECT *FROM SalesRate WHERE commission LIKE '%10[%]%' AND email LIKE '%[_]%'

--thay vì dùng [], ta có thể dùng escape character (thoát chuỗi), chuyên dùng để phế võ công của 1 cái nào đó sau chuỗi được đặt
--tức là ta sẽ quy ước 1 ký tự nào đó đẻ thay thế cho [] thường ngta sẽ dùng: #, $, ^, ~

--vd: nhân viên có email chứa _
SELECT *FROM SalesRate WHERE email LIKE '%~_%' ESCAPE '~'
--ai có hoa hồng chứa 10%
SELECT *FROM SalesRate WHERE commission LIKE '%10~%%' ESCAPE '~'
--tìm nhân viên nào mà tên có chứa '
--DB Engine có tính tà lanh, khi thấy ' lập tức nó sẽ đi tìm nháy còn lại và mặc định các thứ bên trong cặp này là chuỗi
--vì vậy nếu bạn tìm ' trong '' nó sẽ lấy cặp nháy gần nhất và bỏ nháy còn lại, nên chỉ cần double ' là được
SELECT *FROM SalesRate WHERE name LIKE '%''%'