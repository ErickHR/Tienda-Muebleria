$(function () {
    $.post("catGenListar", function (data) {
        $("#cbcatgen").html(data);
    });
    $.post("catProducListar", function (data) {
        $("#cbcatProduc").html(data);
    });
    $.post("ProducListar", function (data) {
        $("#productos").html(data);
    });
});
