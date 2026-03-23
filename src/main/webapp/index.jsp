<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>3.23</title>
        <style>
            body {
                background-color: #f0fff0;
                font-family: "Microsoft YaHei", "PingFang SC", sans-serif;
                font-size: 14px;
                color: #333;
            }
            h3 {
                color: #019858;
                font-size: 22px;
                letter-spacing: 4px;
                text-align: center;
                margin: 24px 0 16px;
            }
            .nav-table {
                border-collapse: separate;
                border-spacing: 6px;
                width: 660px;
                margin: 0 auto;
            }
            .nav-table td {
                background-color: #fff;
                border: 1px solid #c8ecd8;
                border-radius: 6px;
                padding: 8px 14px;
                text-align: center;
                white-space: nowrap;
            }
            .nav-table td:hover {
                background-color: #e6f7ef;
            }
            .nav-table a {
                color: #019858;
                text-decoration: none;
                font-size: 13px;
                display: flex;
                align-items: center;
                gap: 5px;
                justify-content: center;
            }
            .nav-table a:hover {
                color: #016a3e;
                font-weight: bold;
            }
            .nav-table img.icon {
                width: 15px;
                height: 15px;
                vertical-align: middle;
            }
        </style>
    </head>

    <body>
        <h3>welcome</h3>
        <table class="nav-table">
            <tr>
                <td><a href=""><img class="icon" src="icons/login.svg" alt="">登录</a></td>
                <td><a href=""><img class="icon" src="icons/register.svg" alt="">注册</a></td>
                <td><a href=""><img class="icon" src="icons/browse.svg" alt="">浏览化妆品</a></td>
                <td><a href=""><img class="icon" src="icons/product.svg" alt="">查看化妆品</a></td>
                <td><a href=""><img class="icon" src="icons/cart.svg" alt="">查看购物车</a></td>
                <td><a href=""><img class="icon" src="icons/logout.svg" alt="">退出</a></td>
                <td><a href="/"><img class="icon" src="icons/home.svg" alt="">主页</a></td>
            </tr>
        </table>
    </body>

</html>
