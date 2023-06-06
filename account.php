<?php
session_start();
if($_SESSION['login']!= 'oui'){
  header('Location: login.php');

}

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
    <!-- <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css"> -->
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
    <?php include 'tophead.php' ?>
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
                                      <li><a href=""></a>
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
                              <li><a href="">Ajouter un Hotel</a>
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
                <h1>Mon Profile</h1>

            <div class="profile">
              <img class="profile-image1" src="<?php echo'../admin-ver/'.$_SESSION['photoprofile']?>" alt="Admin Profile Picture">
              <div class="profile-info1">
                <label>Name:</label>
                <span><?php echo$_SESSION['nom'] ?></span>
                <label>Email:</label>
                <span><?php echo $_SESSION['email']?></span>
                <label>Role:</label>
                <span>Administrator</span>
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