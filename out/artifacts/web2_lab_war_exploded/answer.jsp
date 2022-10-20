<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Лабораторная №1</title>
    <link rel="icon" href="https://m9snoi.net/files/forums_imgs/none.jpg"/>
    <link rel="stylesheet" type="text/css" href="./css/animation.css">
    <link rel="stylesheet" type="text/css" href="./css/styles.css">
    <link rel="stylesheet" type="text/css" href="./css/form.css">
    <link rel="stylesheet" type="text/css" href="./css/svg.css">
    <link rel="stylesheet" type="text/css" href="./css/table.css">
    <link rel="stylesheet" type="text/css" href="./css/button.css">
</head>
<body style="background-image: url(images/background.png); background-position: top center; background-size: cover;">
<header class="hat">
    Вариант 3011<br>Мозговая Лариса<br>Группа P32311
</header>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<div class="base">
    <div class="svg">
        <svg width="400" height="400" class="graph" xmlns="http://www.w3.org/2000/svg">
            <line x1="0" x2="400" y1="200" y2="200" stroke="black"></line>
            <line x1="200" x2="200" y1="0" y2="400" stroke="black"></line>
            <polygon points="200,0 194,25,206,25" stroke="black"></polygon>
            <polygon points="400,200 375,206 375,194" stroke="black"></polygon>

            <line x1="260" x2="260" y1="205" y2="195" stroke="black"></line>
            <line x1="320" x2="320" y1="205" y2="195" stroke="black"></line>

            <line x1="80" x2="80" y1="205" y2="195" stroke="black"></line>
            <line x1="140" x2="140" y1="205" y2="195" stroke="black"></line>

            <line x1="195" x2="205" y1="140" y2="140" stroke="black"></line>
            <line x1="195" x2="205" y1="80" y2="80" stroke="black"></line>

            <line x1="195" x2="205" y1="260" y2="260" stroke="black"></line>
            <line x1="195" x2="205" y1="320" y2="320" stroke="black"></line>

            <text x="250" y="190">R/2</text>
            <text x="315" y="190">R</text>

            <text x="70" y="190">-R</text>
            <text x="125" y="190">-R/2</text>

            <text x="210" y="145">R/2</text>
            <text x="210" y="85">R</text>

            <text x="210" y="265">-R/2</text>
            <text x="210" y="325">-R</text>

            <polygon class="figure" points="200,200 200,80 260,80,260,200" fill="white" fill-opacity="0.5"
                     stroke="black"></polygon>

            <path class="figure" d="M 80 200 A 130 130, 90, 0, 0, 200 320 L 200 200 Z" fill="white" fill-opacity="0.5"
                  stroke="black"></path>

            <polygon class="figure" points="200,200 260,200 200,320" fill="white" fill-opacity="0.5"
                     stroke="black"></polygon>
            <circle r="5" cx="<%= Double.parseDouble(((String[]) request.getAttribute("table"))[0]) * 120 /  Double.parseDouble(((String[]) request.getAttribute("table"))[2]) + 200%>"
                        cy="<%= Double.parseDouble(((String[]) request.getAttribute("table"))[1]) * -120 / Double.parseDouble(((String[]) request.getAttribute("table"))[2]) + 200%>" fill="#DEAB9CFF">
            </circle>
            <circle r="5" cx="0.1 * 120 / 0.1 + 200"
                    cy="0.1 * -120 / 0.1 + 200" fill="#DEAB9CFF">
            </circle>
        </svg>
    </div>
    <table class="result">
        <tr class="result_head">
            <th>X</th>
            <th>Y</th>
            <th>R</th>
            <th>Результат</th>
            <th>Время выполнения</th>
            <th>Текущее время</th>
        </tr>
        <tr class="result_php">
            <th><%= ((String[]) request.getAttribute("table"))[0] %></th>
            <th><%= ((String[]) request.getAttribute("table"))[1] %></th>
            <th><%= ((String[]) request.getAttribute("table"))[2] %></th>
            <th><%= ((String[]) request.getAttribute("table"))[3] %></th>
            <th><%= ((String[]) request.getAttribute("table"))[4] %></th>
            <th><%= ((String[]) request.getAttribute("table"))[5] %> мс</th>
        </tr>
    </table>
    <div>
        <button type="button" id="back_but" onclick="location.href='/web2_lab_war/controller'"><span class="back_but_text">Вернуться</span></button>
    </div>
</div>
</body>
<script type="text/javascript" src="./scripts/script.js"></script>
<script type="text/javascript" src="./scripts/map.js"></script>
</html>
