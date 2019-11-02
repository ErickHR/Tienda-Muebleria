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
        //title: "pichanga: La once"
    });

}
initialize()
//fin mapa*/

let map
function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: -12.202067, lng: -76.935332 },
        zoom: 17,
    });
    var marker = new google.maps.Marker({
        position: { lat: -12.202067, lng: -76.935332 },
        map: map,
        title: 'Muebleria M&m'
    });
}
