--I- Lý thuyết----
--Câu lệnh cơ bản để láy dữ liệu từ DB Engine là câu lệnh SELECT
--*Tương đương lệnh printf bên C, và sout bên java
--giúp ta trích xuất dữ liệu từ table(Bảng)

--câu lệnh select luoon luôn trả về kết quả dưới đạng table, có thể là 1 hàng 1 cột
--số: integer, decimal, float, double,...
--chuỗi: char(?), varchar(?), nchar(?), nvarchar(?)
--      ?: độ dài của chuỗi
--      n: dùng để lưu unicode
--lưu tiếng việt
--chuỗi phải nằm trong cụm nháy đơn 'Ahihi'
--'Hải đẹp trai'-->'H?i ??p trai'
--N'Hải đẹp trai'
--Ngày tháng năm: date, datetime,... phải nằm trong cụm nháy đơn '1999-1-1'

--Built-in function: DBEngine hỗ trợ các hàm giưps thu lại dât theo một mong muốn nào đó
--round() làm tròn
--month() lấy tháng từ data datatime
--year() lấy năm
--day() lấy ngày
--getdate() thời gian hiện hành, realtime
-----------------------------------------

--II. Thực hành
--1. In ra màn hình câu chào: DB is so easy!
SELECT 'DB is so easy'
--2. In ra tổng của 5 cộng 10
SELECT 5+10
--3. Hôm nay ngày bao nhiêu
SELECT GETDATE()
--4. Năm nay là năm nào???
SELECT YEAR(GETDATE())
--5. Bây giờ tháng mấy hỡi em
SELECT MONTH(GETDATE())
--6. In ra tên của bạn
SELECT N'Vũ Hải'
--7. In ra 2 đoạn chuỗi có format nhưu sau:
--str1 <3 str2
SELECT N'Hải' +' '+'<3'+' '+N'Ngân'

SELECT @@version