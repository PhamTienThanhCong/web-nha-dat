# Trang Web Môi Giới Nhà Đất

## Công nghệ sử dụng:
- laravel 9
- mySQL

## Mô tả đối tượng sử dụng

### Người dùng, tài khoản khách
- Trang chủ
- Xem, tìm kiếm bất động sản
- Xem chi tiết bất động sản.
- Xem thông tin môi giới
- Để lại lời nhắn tư vấn
### Môi giới
- Đăng kí, đăng nhập đăng xuất
- Xem chỉnh sửa thông tin tài khoản
- Đăng thông tin bất động sản
- Chỉnh sửa thông tin về bất động sản
- Danh sách khách hàng muốn tư vấn
### Admin
-	Đăng nhập, đăng xuất, đổi mật khẩu
-	Xác nhận, xóa, chặn tài khoản môi giới
-	Duyệt thông tin bất động sản

### Cơ sở dữ liệu
- Môi giới

| Stt | Tên | Loại dữ liệu | Mô tả |
| :----: | :----: | :----: | :---- |
| 1 | id | bigint | mã tự động tăng | 
| 2 | name | varchar(50) | Tên người dùng | 
| 3 | email | varchar(100) | Địa chỉ email duy nhất | 
| 4 | phone_number | varchar(20) | Số điện thoại | 
| 5 | gender | tinyint | Giới tính: 0->nam, 1->nữ | 
| 6 | avatar | varchar(50) | Tên ảnh |
| 7 | address | varchar(250) | Địa chỉ nơi ở | 
| 8 | company | varchar(250) | Công ty | 
| 9 | password | varchar(100) | Mật khẩu mã hóa | 
| 10 | lever | tinyint | Cấp: 1 đang chờ, 2 đã duyệt, 3 admin, 0 đã chặn | 

- Thể loại nhà đất

| Stt | Tên | Loại dữ liệu | Mô tả |
| :----: | :----: | :----: | :---- |
| 1 | id | bigint | mã tự động tăng | 
| 2 | link_name | varchar(100) | Tên Loại | 
| 3 | link | varchar(100) | Đường dẫn |

- Tin nhà đất
 
| Stt | Tên | Loại dữ liệu | Mô tả |
| :----: | :----: | :----: | :---- |
| 1 | id | bigint | mã tự động tăng | 
| 2 | admins_id | bigint | nối tới bảng môi giới | 
| 3 | title | varchar(250) | Tên Loại | 
| 4 | price | float | Giá tiền |
| 5 | price_type | tinyint | Loại tiền: 1-triệu, 2-tỷ |
| 6 | address | varchar(100) | Địa chỉ |
| 7 | description1 | varchar(250) | Mô tả ngắn |
| 8 | description2 | varchar(100) | Mô tả chi tiết |
| 9 | type | tinyint | Loại bất động sản: 1 : mua, 2 : bán |
| 10 | done | tinyint | Tình trạng bất động sản: 1 : đang chờ, 2 : đã duyệt, 3 : đã hết, 0 đã xóa |

- Ảnh mô tả

| Stt | Tên | Loại dữ liệu | Mô tả |
| :----: | :----: | :----: | :---- |
| 1 | id | bigint | mã tự động tăng | 
| 2 | posts_id | bigint | nối tới bảng tin nhà đất | 
| 3 | img | varchar(50) | Tên ảnh mô tả | 

- Thẻ Tag

| Stt | Tên | Loại dữ liệu | Mô tả |
| :----: | :----: | :----: | :---- |
| 1 | id | bigint | mã tự động tăng | 
| 2 | posts_id | bigint | nối tới bảng tin nhà đất | 
| 3 | tags_id | bigint | Nối tới bảng thể loại nhà đất |

