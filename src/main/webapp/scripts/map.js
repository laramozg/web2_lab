$(function () {
    $(".graph").on("click", function (e) {
        let point = this.getBoundingClientRect();
        let r = $('input[name="r"]:checked').val();
        let xVal = e.clientX - point.left;
        let yVal = e.clientY - point.top;
        let x = (((xVal - 200) * r) / 120).toFixed(1);
        let y = (((200 - yVal) * r) / 120).toFixed(1);
        checkValue(y, x, r, e);
        $.get("controller",{x: x, y: y, r: r}, function (text) {
            window.document.write(text);
        } )
    });
});

