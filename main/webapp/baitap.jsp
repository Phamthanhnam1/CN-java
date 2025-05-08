<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bài 1 - Bảng Sinh Viên</title>

    <!-- Nhúng Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <class=register>
    <a href="register.jsp" class="btn btn-success mt-4">Chuyển đến form đăng ký</a>
    </class>

    <!-- CSS tùy chỉnh -->
    <style>
        .custom-table th {
            background-color: #007bff; /* Màu nền tiêu đề */
            color: white;              /* Màu chữ tiêu đề */
        }
        .custom-table td {
            background-color: #f9f9f9; /* Màu nền các ô */
            color: #333;               /* Màu chữ */
            border: 1px solid #dee2e6; /* Màu viền */
        }
        .custom-table {
            border: 2px solid #007bff; /* Viền ngoài bảng */
        }
    </style>
</head>
<body>

    <h1 class="text-center text-uppercase-custom text-bg-custom p-3">
        Nguyễn Văn A
    </h1>

    <!-- Bảng dữ liệu sinh viên -->
    <div class="container mt-4">
        <table class="table custom-table text-center">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Mã SV</th>
                    <th>Họ và tên</th>
                    <th>Quê quán</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>SV001</td>
                    <td>Trần Văn B</td>
                    <td>Hà Nội</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>SV002</td>
                    <td>Nguyễn Thị C</td>
                    <td>Hải Phòng</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>SV003</td>
                    <td>Lê Văn D</td>
                    <td>Đà Nẵng</td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>
