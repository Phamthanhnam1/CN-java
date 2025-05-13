<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String color = (String) session.getAttribute("color");
    if (color == null) {
        color = "#ffffff";
        session.setAttribute("color", color);
    }

    Boolean changed = (Boolean) request.getAttribute("changed");
    if (changed == null) {
        changed = false;
    }
%>

<html>
<head>
    <title>Chọn màu nền</title>
    <style>
        body {
            background-color: <%= color %>;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.85);
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #222;
        }

        select {
            padding: 10px;
            font-size: 16px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        p {
            margin-top: 20px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Chọn màu nền:</h2>

        <form action="color" method="post">
            <select name="color">
                <option value="red" <%= "red".equals(color) ? "selected" : "" %>>Đỏ</option>
                <option value="green" <%= "green".equals(color) ? "selected" : "" %>>Xanh lá</option>
                <option value="blue" <%= "blue".equals(color) ? "selected" : "" %>>Xanh dương</option>
            </select>
            <input type="submit" value="Chọn màu" />
        </form>

        <%
            if (changed) {
        %>
            <p>Bạn đã thay đổi màu nền thành: <%= color %></p>
        <%
            } else {
        %>
            <p>Chọn màu và nhấn nút để thay đổi nền.</p>
        <%
            }
        %>
    </div>
</body>
</html>
