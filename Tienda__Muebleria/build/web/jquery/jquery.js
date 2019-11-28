$(function () {
    $.post("prodAgregar", {prod: 0}, function (res) {
        $("#carrito").html(res);
    })
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
    $("#cbcatProduc").on("change",function () {
        var idCatproduct = $("#cbcatProduc").val();
        $.post("SubCatProdlistarxCatProd",{idCatProd:idCatproduct}, function (data) {
            $("#cbSubcatProduc").html(data);
        });
    });
    
    $("#cbSubcatProduc").on("change",function () {
        var idSubCatProduc = $("#cbSubcatProduc").val();
        $.post("ProdlistarxSubCatProdu",{idSubCatProd:idSubCatProduc}, function (data) {
            $("#productos").html(data);
        });
    });
    
    $("#txtbusqueda").keyup(function () {
        var nomproduct = $("#txtbusqueda").val();
        $.post("ProdlistarxBusqueda",{nomProd:nomproduct}, function (data) {
            $("#productos").html(data);
        });
    });
    $("#btnregistrarusuer").click(function () {
        
        $.ajax({
            url: "nuevo",
            type: 'POST',
            data: $("#formx").serialize(),
            success: function (res){
                $("#usuarioossesion").html(res)
            }
        })
    });

});
