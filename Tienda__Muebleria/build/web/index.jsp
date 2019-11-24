<%-- 
    Document   : index
    Created on : 12/11/2019, 08:03:47 PM
    Author     : PARIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <link href="img/logo/logomm.png" rel="icon">
        <title>Muebleria</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900" rel="stylesheet">

        <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet">

        <link href="lib/nivo-slider/css/nivo-slider.css" rel="stylesheet">
        <link href="lib/owlcarousel/owl.carousel.css" rel="stylesheet">
        <link href="lib/owlcarousel/owl.transitions.css" rel="stylesheet">
        <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/venobox/venobox.css" rel="stylesheet">

        <link href="css/simple-sidebar.css" rel="stylesheet">

        <link href="css/nivo-slider-theme.css" rel="stylesheet">
        <!--librerias de cajas-->

        <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <!--librerias de cajas-->

        <link href="css/style.css" rel="stylesheet">



    </head>

    <body data-spy="scroll" data-target="#navbar-example" class="body_cuerpo">
        <div class="loguearme">
            <div class="caja-logeo">
                <div class="logeo">

                    <a href="javascript:closeVentana()"><img src="img/close/cancel.png" id="img-logeo"></a>
                    <div class="todo-logeo">
                        <div class="cabeza-logeo">
                            <h1>Ingresar Datos</h1>
                        </div>
                        <div class="cuerpo-logeo">
                            <table id="tabla-logeo">
                                <tr>
                                    <td>Usuario</td>
                                    <td><input type="text"></td>
                                </tr>
                                <tr>
                                    <td>Contraseña</td>
                                    <td><input type="text"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="todo">
            <header>
                <div id="sticker" class="header-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <nav class="navbar navbar-default">
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                                data-target=".bs-example-navbar-collapse-1" aria-expanded="false">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                        <a class="navbar-brand page-scroll sticky-logo" href="index.html">
                                            <h1><img src="img/logo/logomm.png" class="logo"></h1>
                                        </a>
                                    </div>
                                    <div class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1"
                                         id="navbar-example">
                                        <ul class="nav navbar-nav navbar-right">
                                            <li class="active">
                                                <a class="page-scroll" href="#home">Inicio</a>
                                            </li>
                                            <li>
                                                <a class="page-scroll" href="#about">About</a>
                                            </li>
                                            <li>
                                                <a class="page-scroll" href="#services">Services</a>
                                            </li>
                                            <li>
                                                <a class="page-scroll" href="#team">Team</a>
                                            </li>
                                            <li>
                                                <a class="page-scroll" href="#portfolio">Portfolio</a>
                                            </li>

                                            <li class="dropdown"><a href="#" class="dropdown-toggle"
                                                                    data-toggle="dropdown">Drop
                                                    Down<span class="caret"></span></a>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href=#>Drop Down 1</a></li>
                                                    <li><a href=#>Drop Down 2</a></li>
                                                </ul>
                                            </li>


                                            <li>
                                                <a class="page-scroll" href="#blog">Blog</a>
                                            </li>
                                            <li>
                                                <a class="page-scroll" href="#contact">Contact</a>
                                            </li>
                                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                    <img src="img/carrito/shopping-cart (2).png" width="30px" height="30px">
                                                    <span class="caret"></span>
                                                </a>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href=#>Drop Down 1</a></li>
                                                    <li><a href=#>Drop Down 2</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="javascript:openVentana()">logearme</a>
                                            </li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <div id="home" class="slider-area">
                <div class="bend niceties preview-2">
                    <div id="ensign-nivoslider" class="slides">
                        <img src="img/slider/slider1.jpg" alt="" title="#slider-direction-1" />
                        <img src="img/slider/slider2.jpg" alt="" title="#slider-direction-2" />
                        <img src="img/slider/slider3.jpg" alt="" title="#slider-direction-3" />
                    </div>

                    <div id="slider-direction-1" class="slider-direction slider-one">
                        <div class="container">
                            <div class="row">
                                <div class="slider-content">
                                    <div class="layer-1-1 hidden-xs wow slideInDown" data-wow-duration="2s"
                                         data-wow-delay=".2s">
                                        <h2 class="title1">The Best Business Information </h2>
                                    </div>
                                    <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                                        <h1 class="title2">We're In The Business Of Helping You Start Your Business</h1>
                                    </div>
                                    <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s"
                                         data-wow-delay=".2s">
                                        <a class="ready-btn right-btn page-scroll" href="#services">See Services</a>
                                        <a class="ready-btn page-scroll" href="#about">Learn More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="slider-direction-2" class="slider-direction slider-two">
                        <div class="container">
                            <div class="row">
                                <div class="slider-content text-center">
                                    <div class="layer-1-1 hidden-xs wow slideInUp" data-wow-duration="2s"
                                         data-wow-delay=".2s">
                                        <h2 class="title1">The Best Business Information </h2>
                                    </div>
                                    <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                                        <h1 class="title2">We're In The Business Of Get Quality Business Service</h1>
                                    </div>
                                    <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s"
                                         data-wow-delay=".2s">
                                        <a class="ready-btn right-btn page-scroll" href="#services">See Services</a>
                                        <a class="ready-btn page-scroll" href="#about">Learn More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="slider-direction-3" class="slider-direction slider-two">
                        <div class="container">
                            <div class="row">
                                <div class="slider-content">
                                    <div class="layer-1-1 hidden-xs wow slideInUp" data-wow-duration="2s"
                                         data-wow-delay=".2s">
                                        <h2 class="title1">The Best business Information </h2>
                                    </div>
                                    <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                                        <h1 class="title2">Helping Business Security & Peace of Mind for Your Family</h1>
                                    </div>
                                    <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s"
                                         data-wow-delay=".2s">
                                        <a class="ready-btn right-btn page-scroll" href="#services">See Services</a>
                                        <a class="ready-btn page-scroll" href="#about">Learn More</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="d-flex" id="wrapper">

                <div class="bg-light border-right" id="sidebar-wrapper">
                    <div class="list-group list-group-flush">
                        <div class="list-group-item list-group-item-action bg-light">Categoria
                            <select>
                                <option>todos</option>
                                <option>camas</option>
                                <option>reposteria</option>
                            </select>
                        </div>
                        <a href="#" class="list-group-item list-group-item-action bg-light">Shortcuts</a>
                        <a href="#" class="list-group-item list-group-item-action bg-light">Overview</a>
                        <a href="#" class="list-group-item list-group-item-action bg-light">Events</a>
                        <a href="#" class="list-group-item list-group-item-action bg-light">Profile</a>

                    </div>
                </div>
                <div id="page-content-wrapper">

                    <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                        <button class="btn btn-primary" id="menu-toggle"></button>



                    </nav>

                    <div class="container-fluid">
                        <h1 class="mt-4">Productos</h1>
                        <div class="widget-sidebar sidebar-search">
                            <h5 class="sidebar-title">buscar</h5>
                            <div class="sidebar-content">
                                <form>
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Productos"
                                               aria-label="Search for...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-secondary btn-search" type="button">
                                                <span class="ion-android-search"></span>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <section id="work" class="portfolio-mf sect-pt4 route">
                            <div class="container">
                                <!--productos cuerpo cajas-->
                                <section id="work" class="portfolio-mf sect-pt4 route">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="title-box text-center">
                                                    <h3 class="title-a">
                                                        sillas
                                                    </h3>
                                                    <p class="subtitle-a">
                                                        Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                                    </p>
                                                    <div class="line-mf"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">


                                            <div class="col-md-4">
                                                <div class="work-box">

                                                    <div class="work-img">

                                                        <a href="img/work-1.jpg" data-lightbox="gallery-mf">
                                                            <img src="img/work-1.jpg" alt="" class="img-fluid">
                                                        </a>
                                                    </div>
                                                    <div class="work-content">
                                                        <div class="row">
                                                            <div class="col-sm-8">
                                                                <h2 class="w-title">Lorem impsum dolor</h2>
                                                                <div class="w-more">
                                                                    <span class="w-ctegory">Web Design</span> / <span
                                                                        class="w-date">18 Sep. 2018</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-4">
                                                                <div class="w-like">
                                                                    <span class="ion-ios-plus-outline"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="text-center btnAgregar"><button>Añadir</button></div>
                                                </div>
                                            </div>


                                            <div class="col-md-4">
                                                <div class="work-box">
                                                    <a href="img/work-2.jpg" data-lightbox="gallery-mf">
                                                        <div class="work-img">
                                                            <img src="img/work-2.jpg" alt="" class="img-fluid">
                                                        </div>
                                                        <div class="work-content">
                                                            <div class="row">
                                                                <div class="col-sm-8">
                                                                    <h2 class="w-title">Loreda Cuno Nere</h2>
                                                                    <div class="w-more">
                                                                        <span class="w-ctegory">Web Design</span> / <span
                                                                            class="w-date">18 Sep. 2018</span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="w-like">
                                                                        <span class="ion-ios-plus-outline"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="work-box">
                                                    <a href="img/work-3.jpg" data-lightbox="gallery-mf">
                                                        <div class="work-img">
                                                            <img src="img/work-3.jpg" alt="" class="img-fluid">
                                                        </div>
                                                        <div class="work-content">
                                                            <div class="row">
                                                                <div class="col-sm-8">
                                                                    <h2 class="w-title">Mavrito Lana Dere</h2>
                                                                    <div class="w-more">
                                                                        <span class="w-ctegory">Web Design</span> / <span
                                                                            class="w-date">18 Sep. 2018</span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="w-like">
                                                                        <span class="ion-ios-plus-outline"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="work-box">
                                                    <a href="img/work-4.jpg" data-lightbox="gallery-mf">
                                                        <div class="work-img">
                                                            <img src="img/work-4.jpg" alt="" class="img-fluid">
                                                        </div>
                                                        <div class="work-content">
                                                            <div class="row">
                                                                <div class="col-sm-8">
                                                                    <h2 class="w-title">Bindo Laro Cado</h2>
                                                                    <div class="w-more">
                                                                        <span class="w-ctegory">Web Design</span> / <span
                                                                            class="w-date">18 Sep. 2018</span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="w-like">
                                                                        <span class="ion-ios-plus-outline"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="work-box">
                                                    <a href="img/work-5.jpg" data-lightbox="gallery-mf">
                                                        <div class="work-img">
                                                            <img src="img/work-5.jpg" alt="" class="img-fluid">
                                                        </div>
                                                        <div class="work-content">
                                                            <div class="row">
                                                                <div class="col-sm-8">
                                                                    <h2 class="w-title">Studio Lena Mado</h2>
                                                                    <div class="w-more">
                                                                        <span class="w-ctegory">Web Design</span> / <span
                                                                            class="w-date">18 Sep. 2018</span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="w-like">
                                                                        <span class="ion-ios-plus-outline"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="work-box">
                                                    <a href="img/work-6.jpg" data-lightbox="gallery-mf">
                                                        <div class="work-img">
                                                            <img src="img/work-6.jpg" alt="" class="img-fluid">
                                                        </div>
                                                        <div class="work-content">
                                                            <div class="row">
                                                                <div class="col-sm-8">
                                                                    <h2 class="w-title">Studio Big Bang</h2>
                                                                    <div class="w-more">
                                                                        <span class="w-ctegory">Web Design</span> / <span
                                                                            class="w-date">18 Sep. 2017</span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <div class="w-like">
                                                                        <span class="ion-ios-plus-outline"></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </section>

                                <!--productos cuerpo cajas-->

                            </div>
                        </section>
                    </div>



                </div>

            </div>

            <div class="wellcome-area">
                <div class="well-bg">
                    <div class="test-overly"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="wellcome-text">
                                    <div class="well-text text-center">
                                        <h2>tienda de muebles</h2>
                                        <p>
                                            Gracias por su compra desea contactarno
                                        </p>
                                        <div class="subs-feilds">
                                            <div class="suscribe-input">
                                                <input type="email" class="email form-control width-80" id="sus_email"
                                                       placeholder="Email">
                                                <button type="submit" id="sus_submit"
                                                        class="add-btn width-20">Subscribe</button>
                                                <div id="msg_Submit" class="h3 text-center hidden"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--            <div id="contact" class="contact-area">
                            <div class="contact-inner area-padding">
                                <div class="contact-overly"></div>
                                <div class="container ">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="section-headline text-center">
                                                <h2>Contact us</h2>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
            <!-- Start contact icon column -9->
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="contact-icon text-center">
                    <div class="single-icon">
                        <i class="fa fa-mobile"></i>
                        <p>
                            Call: +1 5589 55488 55<br>
                            <span>Monday-Friday (9am-5pm)</span>
                        </p>
                    </div>
                </div>
            </div>
            <!-- Start contact icon column --8>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="contact-icon text-center">
                    <div class="single-icon">
                        <i class="fa fa-envelope-o"></i>
                        <p>
                            Email: info@example.com<br>
                            <span>Web: www.example.com</span>
                        </p>
                    </div>
                </div>
            </div>
            <!-- Start contact icon column --8>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="contact-icon text-center">
                    <div class="single-icon">
                        <i class="fa fa-map-marker"></i>
                        <p>
                            Location: A108 Adam Street<br>
                            <span>NY 535022, USA</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <!-- Start Google Map -8->
            <div class="col-md-6 col-sm-6 col-xs-12">
            <!-- Start Map 
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22864.11283411948!2d-73.96468908098944!3d40.630720240038435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sbg!4v1540447494452"
            width="100%" height="380" frameborder="0" style="border:0" allowfullscreen></iframe>
        End Map --8>
        </div>
            <!-- End Google Map --8>

            <!-- Start  contact --8>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form contact-form">
                    <div id="sendmessage">Your message has been sent. Thank you!</div>
                    <div id="errormessage"></div>
                    <form action="" method="post" role="form" class="contactForm">
                        <div class="form-group">
                            <input type="text" name="name" class="form-control" id="name"
                                   placeholder="Your Name" data-rule="minlen:4"
                                   data-msg="Please enter at least 4 chars" />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" id="email"
                                   placeholder="Your Email" data-rule="email"
                                   data-msg="Please enter a valid email" />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="subject" id="subject"
                                   placeholder="Subject" data-rule="minlen:4"
                                   data-msg="Please enter at least 8 chars of subject" />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="message" rows="5" data-rule="required"
                                      data-msg="Please write something for us" placeholder="Message"></textarea>
                            <div class="validation"></div>
                        </div>
                        <div class="text-center"><button type="submit">Send Message</button></div>
                    </form>
                </div>
            </div>
            <!-- End Left contact --8>
        </div>
    </div>
</div>
</div>
            -->
            <footer>
                <div class="footer-area">
                    <div class="container">
                        <div class="row" id="contact">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="section-headline text-center">
                                    <h2>Contactanos</h2>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <!-- end single footer -->
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="footer-content">
                                    <div class="footer-head">
                                        <h4>Información</h4>
                                        <p>
                                            Calle Unión Mz.J Lt. 07, Prcela II - Parque Industrial Villa El Salvador
                                        </p>
                                        <div class="footer-contacts">
                                            <p><span>Celular:</span> +51 979 126 324</p>
                                            <p><span>E-mail:</span> maribelcarranzag0508@hotmail.com</p>
                                            <p><span>Abierto:</span> 9am-5pm</p>
                                            <div class="footer-icons">
                                                <ul>
                                                    <li>
                                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                                    </li>
                                                    <li>
                                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end single footer -->
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <div class="footer-content">
                                    <div class="footer-head">
                                        <div id="map"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-area-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="copyright text-center">
                                    <p>
                                        &copy; Copyright <strong>eBusiness</strong>. All Rights Reserved
                                    </p>
                                </div>
                                <div class="credits"> Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>



        <script src="lib/jquery/jquery.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/venobox/venobox.min.js"></script>
        <script src="lib/knob/jquery.knob.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/parallax/parallax.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="lib/appear/jquery.appear.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>

        <script src="contactform/contactform.js"></script>


        <!--nuevas librerias-->
        <script src="lib/jquery/jquery-migrate.min.js"></script>
        <script src="lib/popper/popper.min.js"></script>
        <script src="lib/counterup/jquery.waypoints.min.js"></script>
        <script src="lib/counterup/jquery.counterup.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        <script src="lib/typed/typed.min.js"></script>


        <script src="js/main.js"></script>
        <script src="js/script.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDDkAe1kWy0MJLRxYgRQK-qb5ZScX80sVg&callback=initMap"
        async defer></script>
    </body>

</html>
