<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div class="base">
    <p><img src="images/cattt.gif" id="cat" alt="cat"></p>
    <form class="xyr_in" method="get" action="controller">
        <div class="text">
            <label>
                <strong>Введите значение X:</strong>
                <span class="error"></span>
                <input name="x" type="text" class="x_in" placeholder="Введите число от -5 до 5">
            </label>
        </div>
        <div class="select">
            <strong>Выберете значение Y:</strong>
            <label>
                <select class="y_in" name="y">
                    <option value="-4">-4</option>
                    <option value="-3">-3</option>
                    <option value="-2">-2</option>
                    <option value="-1">-1</option>
                    <option value="0" selected>0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
            </label>
        </div>
        <div class="r_in">
            <strong>Выберете значение R:</strong><br>
            <label>
                <span class="radio_r"><input name="r" type="checkbox" value="1" checked> 1
                    <input name="r" type="checkbox" value="1.5"> 1.5
                    <input name="r" type="checkbox" value="2"> 2
                    <input name="r" type="checkbox" value="2.5"> 2.5
                    <input name="r" type="checkbox" value="3"> 3</span>
            </label>
        </div>
        <div class="send_clear_but">
            <button type="submit" id="send"><span class="send_clear">Отправить</span></button>
            <button type="reset" id="clear"><span class="send_clear">Сбросить</span></button>
        </div>
    </form>
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

            <c:forEach items="${table}" var="result">
                <circle r="3" cx="${result[0] * 120 / result[2] + 200}"
                        cy="${result[1]* -120 / result[2] + 200}" fill="#DEAB9CFF">
                </circle>
            </c:forEach>
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
        <c:forEach items="${table}" var="result">
            <tr class="result_php">
                <th>${result[0]}</th>
                <th>${result[1]}</th>
                <th>${result[2]}</th>
                <th>${result[3]}</th>
                <th>${result[4]}</th>
                <th>${result[5]}мс</th>
            </tr>
        </c:forEach>
    </table>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
<script type="text/javascript" src="./scripts/script.js"></script>
<script type="text/javascript" src="./scripts/map.js"></script>
</html>