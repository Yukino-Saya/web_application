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
            #greeting-bar {
                text-align: center;
                padding: 14px 20px;
                margin: 16px auto;
                max-width: 660px;
                border-radius: 10px;
                font-size: 15px;
                font-weight: bold;
                letter-spacing: 1px;
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
        <div id="greeting-bar"></div>
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

        <script>
            (function () {
                var h = new Date().getHours();
                var msg, bg, color;
                if (h >= 6 && h < 8) {
                    msg = "🌅 清晨好！新的一天开始了，喝杯温水，元气满满出发吧！";
                    bg = "#fff8e1"; color = "#e65100";
                } else if (h >= 8 && h < 10) {
                    msg = "☀️ 早上好！黄金时段，专注工作，效率翻倍！";
                    bg = "#e8f5e9"; color = "#2e7d32";
                } else if (h >= 10 && h < 12) {
                    msg = "🌻 上午好！保持状态，离午休越来越近啦～";
                    bg = "#e3f2fd"; color = "#1565c0";
                } else if (h >= 12 && h < 14) {
                    msg = "🍱 午间好！记得好好吃饭，饭后稍作休息再出发！";
                    bg = "#fce4ec"; color = "#c62828";
                } else if (h >= 14 && h < 16) {
                    msg = "😴 下午好！犯困了吗？站起来走走，精神抖擞继续！";
                    bg = "#ede7f6"; color = "#4527a0";
                } else if (h >= 16 && h < 18) {
                    msg = "🌤️ 傍晚将至！收尾今天的任务，给自己一个小奖励吧！";
                    bg = "#fff3e0"; color = "#bf360c";
                } else if (h >= 18 && h < 20) {
                    msg = "🌆 傍晚好！工作暂告一段落，好好享用晚餐吧！";
                    bg = "#e0f7fa"; color = "#006064";
                } else if (h >= 20 && h < 22) {
                    msg = "🌙 晚上好！放松身心，看看书或听听音乐，充实又惬意～";
                    bg = "#f3e5f5"; color = "#6a1b9a";
                } else if (h >= 22) {
                    msg = "🌛 夜深了，别忘了早点休息，明天又是美好的一天！";
                    bg = "#e8eaf6"; color = "#283593";
                } else {
                    msg = "🌟 凌晨了，还没睡？注意身体哦，好好休息吧！";
                    bg = "#e0e0e0"; color = "#424242";
                }
                var bar = document.getElementById("greeting-bar");
                bar.textContent = msg;
                bar.style.background = bg;
                bar.style.color = color;
                bar.style.border = "1px solid " + color + "55";
            })();
        </script>
    </body>

</html>
