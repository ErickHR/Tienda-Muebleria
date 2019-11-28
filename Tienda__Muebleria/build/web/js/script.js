$("#menu-toggle").click(function (e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
});

$(document).on('click', '.menu-has-children i', function (e) {
    $(this).next().toggleClass('menu-item-active');
    $(this).nextAll('ul').eq(0).slideToggle();
    $(this).toggleClass("fa-chevron-up fa-chevron-down");
});
/*//mapa
 function initialize(){
 
 let latlng = new google.maps.LatLng(-12.110306, -77.014074);
 let myOptions = {
 zoom = 17, center: latlng,
 mapTypeId: google.maps.MapTypeId.HYBRID
 };
 let map = new google.maps.Map(document.getElementById("mapa"), myOptions);
 
 //let image = 'http://www.xn--romaa-rta.pe/pelota.gif';
 let myLatLng = new google.maps.LatLng(-12.109983, -77.014847);
 let beachMarker = new google.maps.Marker({
 //position: myLatLng,
 map: map, 
 //icon: image,
 //animation: google.maps.Animation.BOUNCE, 
 //title: "Muebleria M&M"
 });
 
 }
 initialize()
 //fin mapa*/

function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: -12.2010632, lng: -76.9356382},
        zoom: 17,
    });
    var marker = new google.maps.Marker({
        position: {lat: -12.2010632, lng: -76.9356382},
        map: map,
        title: 'Muebleria M&M'
    });
}

function openVentana() {
    $(".caja-logeo").slideDown("slow");
    //$(".todo").css("display", "none");
    document.getElementById("todo").style.display = "none"
}
function closeVentana() {
    $(".caja-logeo").slideUp("slow");
    document.getElementById("todo").style.display = "block"
}
function btn() {
    $(".btnAgregar").slideDown("slow");
}
function agregar(json) {

    $.post("prodAgregar", {prod: json}, function (res) {
        $("#carrito").html(res);
    })

}
function borrar(id) {

    $.post("prodBorrar", {idpr: id}, function (res) {
        $("#carrito").html(res);
    })

}
function borrarTabla(id) {

    $.post("prodBorrarTabla", {idpr: id}, function (res) {
        $("#tablacarrito").html(res);
    })

}
