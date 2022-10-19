function checkValue(y, x, r, event) {
    if (!r) {
        exception('<br>Вы не выбрали радиус', event);
    } else if (!y) {
        exception('<br>Вы не ввели Y', event);
    } else if (y < -4 || y > 4) {
        exception('<br>Y должен быть от -4 до 4', event);
    } else if (isNaN(x)) {
        exception('<br>X должен быть числом', event);
    } else if (!x) {
        exception('<br>Вы не ввели X', event);
    } else if (x < -5 || x > 5) {
        exception('<br>X должен быть от -5 до 5', event);
    }
}

function exception(message, event) {
    $('.error').html(message);
    point(0, 0, 2);
    event.preventDefault();
}


$(function () {
    $('#clear').on("click", (e) => {
        $.get("controller",{clear: "true"})
        });

    $('#send').on('click', function (event) {
        let y = $('.y_in').val();
        let x = $('input[name="x"]').val();
        let r = $('input[name="r"]:checked').val();
        checkValue(y, x, r, event);
    });
    $(".r_in input").on("click", function () {
        $('.r_in input').prop('checked', false);
        $(this).prop("checked", true);
    });
});

function point(x, y, r) {
    $('#pointer').attr("cx", (x * 120 / r + 200))
        .attr("cy", (y * -120 / r + 200));
}