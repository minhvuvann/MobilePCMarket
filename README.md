# Tên Dự án

Dự án Website Bán Điện Thoại

## Giới thiệu

Dự án Web Bán Điện Thoại là một ứng dụng web được xây dựng bằng Java và JSP, cho phép người dùng xem và mua sắm các mặt hàng điện thoại. Dự án này cung cấp các chức năng như xem danh sách sản phẩm, tìm kiếm, thêm vào giỏ hàng và thanh toán.

## Yêu cầu hệ thống

- Java Development Kit (JDK) 8 trở lên
- Apache Tomcat 9
- MySQL Server

## Cài đặt

1. Sao chép dự án từ kho lưu trữ:
-  git clone https://github.com/MellowSadBoy/WEB_ecommerce.git

2. Mở dự án bằng môi trường phát triển Java (IDE) của bạn (ví dụ: Eclipse, IntelliJ IDEA).

3. Cấu hình cơ sở dữ liệu SQL Server:
- Tạo cơ sở dữ liệu mới với tên "phone_store".
- Thay đổi thông tin kết nối cơ sở dữ liệu trong tệp `src/main/resources/db.properties`.

4. Chạy ứng dụng trên máy chủ Tomcat:
- Thêm Tomcat Server vào IDE của bạn.
- Chọn dự án và chạy trên Tomcat Server.

## Cấu trúc thư mục

├── src/ # Mã nguồn Java
│ ├── com.example.phonestore.controllers # Controllers
│ ├── com.example.phonestore.models # Models
│ ├── com.example.phonestore.services # Services
│ └── com.example.phonestore.util # Các tiện ích
├── web/ # Tệp tin web
│ ├── css/ # Tệp tin CSS
│ ├── js/ # Tệp tin JavaScript
│ └── WEB-INF/ # Tệp tin cấu hình và JSP
└── README.md # Tệp mô tả dự án
## Công nghệ sử dụng
- bootraps
- JQuery
- Jstl
- Java
- JSP
- HTML
- CSS
- JavaScript
