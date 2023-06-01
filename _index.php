<?php 
 include "connection.php";

 $sql1 = "SELECT COUNT(*) FROM client;";
 $sql2 = "SELECT COUNT(*) FROM `reserver-hotel`;";
 $sql3 = "SELECT COUNT(*) FROM destination;";
 $sql4 = "SELECT COUNT(*) FROM restau;";
 $sql5 = "SELECT COUNT(*) FROM hotel;";
 $sql6 = "SELECT COUNT(*) FROM `admin`;";

 $statement = $pdo->query($sql1);
 $statement1 = $pdo->query($sql2);
 $statement2 = $pdo->query($sql3);
 $statement3 = $pdo->query($sql4);
 $statement4 = $pdo->query($sql5);
 $statement5 = $pdo->query($sql6);
 
 // fetch the count as an associative array
 $countClient = $statement->fetch(PDO::FETCH_ASSOC);
 $countReser = $statement1->fetch(PDO::FETCH_ASSOC);
 $countDest = $statement2->fetch(PDO::FETCH_ASSOC);
 $countRes = $statement3->fetch(PDO::FETCH_ASSOC);
 $countHotel = $statement4->fetch(PDO::FETCH_ASSOC);
 $countAdmin = $statement5->fetch(PDO::FETCH_ASSOC);
 

?>

<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Discover Draa tafilalt</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <!-- favicon
		============================================ -->
   
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- meanmenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu/meanmenu.min.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- jvectormap CSS
		============================================ -->
    <link rel="stylesheet" href="css/jvectormap/jquery-jvectormap-2.0.3.css">
    <!-- notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/notika-custom-icon.css">
    <!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="css/wave/waves.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    
    <!-- Start Header Top Area -->
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="logo-area">
                        <a href="#"><img src="img/logo/logo.png" alt="" /></a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="header-top-menu">
                        <ul class="nav navbar-nav notika-top-nav">
                            <li class="nav-item dropdown">
                        <div class="profile-image" data-toggle="modal" data-target="#profileModal">
                    <img class="rounded-circle mb-3" src="https://th.bing.com/th/id/R.3c16772dea67b7a3b52183c0652019ec?rik=xj4uxUsY3fyeJg&pid=ImgRaw&r=0" alt="Profile Image">
                  </div></li>
                        </ul>
                    </div>
                </div>
                
            </div>
        </div>
        <div class="modal fade" id="profileModal" tabindex="-1" role="dialog" aria-labelledby="profileModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="profileModalLabel">User Profile</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <img src="https://th.bing.com/th/id/R.3c16772dea67b7a3b52183c0652019ec?rik=xj4uxUsY3fyeJg&pid=ImgRaw&r=0" alt="Profile Image" class="rounded-circle mb-3">
                  
                  <a href="#" class="btn btn-primary">View Profile</a>
                  <a href="#" class="btn btn-secondary">Logout</a>
                </div>
              </div>
            </div>
          </div>
    </div>
    <!-- End Header Top Area -->
    <!-- Mobile Menu start -->
    <div class="mobile-menu-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="mobile-menu">
                        <nav id="dropdown">
                            <ul class="mobile-menu-nav">
                                <li><a data-toggle="collapse" data-target="#Charts" href="index.html">Dashboard</a>
                                   
                                </li>

                                <li><a data-toggle="collapse" data-target="#Mon-profile" href="account.html">Mon profile</a>
                                   
                                </li>
                                
                            
                                
                                <li><a data-toggle="collapse" data-target="#demoevent" href="#">Gerer les administrateurs                                </a>
                                    <ul id="demoevent" class="collapse dropdown-header-top">
                                        <li><a href="afficheadmin.html">Afficher les administrateurs</a>
                                        </li>
                                        <li><a href="ajouter-admin.html">Ajouter un administrateur</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#democrou" href="#">Gerer les clients</a>
                                    <ul id="democrou" class="collapse dropdown-header-top">
                                        <li><a href="afficheclient.html">Afficher les clients</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#demolibra" href="#">Voyage</a>
                                    <ul id="demolibra" class="collapse dropdown-header-top">
                                        <li><a href="">Afficher les Voyages</a>
                                        </li>
                                        <li><a href="ajouter-cer.html">Ajouter un Voyage</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#demodepart" href="#">Destinations</a>
                                    <ul id="demodepart" class="collapse dropdown-header-top">
                                        <li><a href="">Afficher les destinations</a>
                                        </li>
                                        <li><a href="ajouter-des.html">Ajouter un destination</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#demo" href="#">Restaurants</a>
                                    <ul id="demo" class="collapse dropdown-header-top">
                                        <li><a href="">Afficher les restaurants</a>
                                        </li>
                                        <li><a href="ajouter-res.html">Ajouter un restaurant</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#Miscellaneousmob" href="#">Hotels</a>
                                    <ul id="Miscellaneousmob" class="collapse dropdown-header-top">
                                        <li><a href="">Afficher les Hotels</a>
                                        </li>
                                        <li><a href="">Ajouter un Hotel</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#Pagemob" href="#">Spécialité Culinaire</a>
                                    <ul id="Pagemob" class="collapse dropdown-header-top">
                                        <li><a href="">Afficher les  plats</a>
                                        </li>
                                        <li><a href="">Ajouter un  plat</a>
                                        </li>
                                    </ul>
                                </li>
                               
                                
                                <li><a data-toggle="collapse" data-target="#Pagemob" href="#">Moussems</a>
                                    <ul id="Pagemob" class="collapse dropdown-header-top">
                                        <li><a href="">Afficher les  Moussems</a>
                                        </li>
                                        <li><a href="">Ajouter un  Moussem</a>
                                        </li>
                                   </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#Pagemob" href="#">Specialite Culinaire  </a>
                                    <ul id="Pagemob" class="collapse dropdown-header-top">
                                        <li><a href="">Contact</a>
                                        </li>
                                        <li><a href="">Invoice</a>
                                        </li>
                                   </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#Pagemob" href="#">Reservations</a>
                                    <ul id="Pagemob" class="collapse dropdown-header-top">
                                        <li><a href="">Les reservations d'hotels</a>
                                        </li>
                                        <li><a href="">Les reservations de voyage</a>
                                        </li>
                                   </ul>
                                </li>
                                <li><a data-toggle="collapse" data-target="#Pagemob" href="#">Messages</a>
                                    <ul id="Pagemob" class="collapse dropdown-header-top">
                                        <li><a href="">Gerer les Messages</a>
                                        </li>
                                   </ul>
                                </li>
                            </ul>
                            
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Mobile Menu end -->
    <!-- Main Menu area start-->
    <div class="main-menu-area mg-tb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
                        <li class=""><a  href="index.html#Dashboard"><i class="bi bi-grid notika-icon"></i> Dashboard</a>
                        </li>
                        <li ><a  href="account.html"><i class="notika-icon bi bi-person"></i> Mon profile</a>
                        </li>
                        <li  ><a data-toggle="tab" href="#admin"><i class="notika-icon bi bi-person-add"></i> Gerer les administrateurs  </a>
                        </li>
                        <li class=""><a data-toggle="tab" href="#client"><i class="notika-icon bi bi-people"></i> Gerer les clients</a>
                        </li>
                        <li><a data-toggle="tab" href="#Voyage"><i class="notika-icon bi bi-circle"></i> Voyage</a>
                        </li>
                        <li><a data-toggle="tab" href="#Destinations"><i class="notika-icon bi bi-pin-map "></i> Destinations</a>
                        </li>
                        <li><a data-toggle="tab" href="#restaurants"><i class="notika-icon bi bi-egg-fried"></i>Restaurants</a>
                        </li>
                        <li><a data-toggle="tab" href="#Hotels"><i class="notika-icon bi bi-building "></i> Hotels</a>
                        </li>
                        <li><a data-toggle="tab" href="#artisanats"><i class="notika-icon bi bi-cloud-fog "></i> Spécialité Culinaire</a>
                        </li>
                        <li><a data-toggle="tab" href="#Moussems"><i class="notika-icon bi bi-postcard"></i> Moussems</a>
                        </li>
                        <li><a data-toggle="tab" href="#Reservations"><i class="notika-icon bi bi-card-checklist"></i>Reservations</a>
                        </li>
                        <li><a data-toggle="tab" href="#Messages"><i class="notika-icon bi bi-chat-left-text"></i> Messages</a>
                        </li>
                        
                    </ul>
                    <div class="tab-content custom-menu-content">
                        
                        
                        <div id="admin" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li class=""><a href="afficheadmin.html">Afficher les administrateurs</a>
                                </li>
                                <li><a href="ajouter-admin.html">Ajouter un administrateur</a>
                                </li>
                               
                            </ul>
                        </div>
                        <div id="client" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="afficheclient.html">Afficher les clients</a>
                                </li>
                                
                               
                            </ul>
                        </div>
                        <div id="Voyage" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="">Afficher les Voyages</a>
                                </li>
                                <li><a href="ajouter-cer.html">Ajouter un Voyage</a>
                                </li>
                            </ul>
                        </div>
                        
                        <div id="Destinations" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="">Afficher les destinations</a>
                                </li>
                                <li><a href="ajouter-des.html">Ajouter un destination</a>
                                </li>
                            </ul>
                        </div>
                        <div id="restaurants" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="">Afficher les restaurants</a>
                                </li>
                                <li><a href="ajouter-res.html">Ajouter un restaurant</a>
                                </li>
                            </ul>
                        </div>
                        <div id="Hotels" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="">Afficher les Hotels</a>
                                </li>
                                <li><a href="ajouter-hotel.html">Ajouter un Hotel</a>
                                </li>
                            </ul>
                        </div>
                        <div id="artisanats" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="">Afficher les  plats</a>
                                </li>
                                <li><a href="">Ajouter un  plat</a>
                                </li>
                            </ul>
                        </div>
                        <div id="Moussems" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="">Afficher les  Moussems</a>
                                </li>
                                <li><a href="">Ajouter un  Moussem</a>
                                </li>
                            </ul>
                        </div>
                        <div id="Reservations" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="">Les reservations d'hotels</a>
                                </li>
                                <li><a href="">Les reservations de voyage</a>
                                </li>
                            </ul>
                        </div>
                        <div id="Messages" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="">Gerer les Messages</a>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Menu area End-->
    <!-- Start Status area -->
    <div class="notika-status-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2><span class="counter"><?php echo $countClient['COUNT(*)'] ?></span></h2>
                            <p>Client</p>
                        </div>
                        <div class="sparkline-bar-stats1">9,4,8,6,5,6,4,8,3,5,9,5</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2><span class="counter"><?php echo $countRes['COUNT(*)'] ?></span></h2>
                            <p>Reservations</p>
                        </div>
                        <div class="sparkline-bar-stats2">1,4,8,3,5,6,4,8,3,3,9,5</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2><span class="counter"><?php echo $countDest['COUNT(*)'] ?></span></h2>
                            <p>Destination</p>
                        </div>
                        <div class="sparkline-bar-stats3">4,2,8,2,5,6,3,8,3,5,9,5</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2><span class="counter"><?php echo $countRes['COUNT(*)'] ?></span></h2>
                            <p>Restaurants</p>
                        </div>
                        <div class="sparkline-bar-stats4">2,4,8,4,5,7,4,7,3,5,7,5</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2><span class="counter"><?php echo $countHotel['COUNT(*)'] ?></span></h2>
                            <p>Hotels</p>
                        </div>
                        <div class="sparkline-bar-stats5">2,4,8,4,5,7,4,7,3,5,7,5</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2><span class="counter"><?php echo $countAdmin['COUNT(*)'] ?></span></h2>
                            <p>administrateur</p>
                        </div>
                        <div class="sparkline-bar-stats6">2,4,8,4,5,7,4,7,3,5,7,5</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Status area-->
    <!-- Start Footer area-->
    <div class="footer-copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="footer-copy-right">
                        <p>Copyright © 2023 
. All rights reserved Discover Draa Tafilalt.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Footer area-->
    <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/meanmenu/jquery.meanmenu.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="js/counterup/jquery.counterup.min.js"></script>
    <script src="js/counterup/waypoints.min.js"></script>
    <script src="js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- jvectormap JS
		============================================ -->
    <script src="js/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="js/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/jvectormap/jvectormap-active.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/sparkline-active.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="js/flot/jquery.flot.js"></script>
    <script src="js/flot/jquery.flot.resize.js"></script>
    <script src="js/flot/curvedLines.js"></script>
    <script src="js/flot/flot-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="js/knob/jquery.knob.js"></script>
    <script src="js/knob/jquery.appear.js"></script>
    <script src="js/knob/knob-active.js"></script>
    <!--  wave JS
		============================================ -->
    <script src="js/wave/waves.min.js"></script>
    <script src="js/wave/wave-active.js"></script>
    <!--  todo JS
		============================================ -->
    <script src="js/todo/jquery.todo.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
	<!--  Chat JS
		============================================ -->
    <script src="js/chat/moment.min.js"></script>
    <script src="js/chat/jquery.chat.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
	<!-- tawk chat JS
		============================================ 
    <script src="js/tawk-chat.js"></script>-->
</body>

</html>