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

    $("#cbcatgen").on("change",function () {
        var idCatGen = $("#cbcatgen").val();
        $.post("ProducListarxCatGen",{idCatGen:idCatGen}, function (data) {
            $("#productos").html(data);
        });
    });

});
