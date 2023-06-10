



<?php 


ob_start();
session_start();
if($_SESSION['login']!= 'oui'){
    header('Location: login.php');

}
include 'connection.php';


@$id_resh = $_GET['modi'];

$sql = 'SELECT *
        FROM `reserver-hotel` JOIN `client`  ON (`reserver-hotel`.`id-client` = `reserver-hotel`.`id-client`)
        WHERE `reserver-hotel`.`id-resh` = :id_resh';

$statement = $pdo->prepare($sql);
$statement->bindValue(':id_resh', $id_resh);
$statement->execute();

$resreve = $statement->fetchAll(PDO::FETCH_ASSOC);

    


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
   <!-- Google Fonts
		============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
            ============================================ -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
        <!-- font awesome CSS
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
        <!-- wave CSS
            ============================================ -->
        <link rel="stylesheet" href="css/wave/waves.min.css">
        <link rel="stylesheet" href="css/wave/button.css">
        <!-- mCustomScrollbar CSS
            ============================================ -->
        <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- Notika icon CSS
            ============================================ -->
        <link rel="stylesheet" href="css/notika-custom-icon.css">
        <!-- Data Table JS
            ============================================ -->
        <link rel="stylesheet" href="css/jquery.dataTables.min.css">
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
        <!-- summernote CSS
		============================================ -->
    <link rel="stylesheet" href="css/summernote/summernote.css">
        
</head>

<body>
    
 <!-- Start Header Top Area -->
 <div class="">
    <?php include 'tophead.php' ?>
</div>
    <!-- End Header Top Area -->
    <!-- Mobile Menu start -->
    <div class="mobile-menu-area">
    <?php include 'mobile-menu-area.html' ?>
    </div>
    <!-- Mobile Menu end -->
    <!-- Main Menu area start-->
    <div class="main-menu-area mg-tb-40">
    <?php include 'main-menu-area.html' ?>
    </div>
    <!-- Main Menu area End-->
    <!-- Start Status area -->
    <div class="notika-status-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Ajouter Moussem</h1>
                    <hr>
                    <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data">
                      <div class="form-row">
                          <div class="col-md-6">
                            <label for="title">Email</label>
                            <input type="text" class="form-control" name="email" value="<?php echo$resreve[0]['email']; ?>" placeholder="Email">
                          </div>
                          <div class="col-md-6">
                            <label for="ville">Phone</label>
                            <input type="text" class="form-control" name="phone" value="<?php echo$resreve[0]['phone']; ?>"  placeholder="phone">
                          </div>
                        </div>
                        
                        <div class="form-row">
                              
                              <div class="col-md-6">
                                <label for="">Date debut:</label>
                                <input type="date" class="form-control" name="date_debut" value="<?php echo$resreve[0]['date-debut']; ?>" >
                              </div>
                              <div class="col-md-6">
                                <label for="">Date fin:</label>
                                <input type="date" class="form-control" name='date_fin' value="<?php echo$resreve[0]['date-fin']; ?>" >
                             
                            </div>
                         </div>
                         <div class="form-row" style="margin-top: 10px;">
                              
                              <div class="col-md-6">
                        
                                    <label for="">Status</label>
                                    <select class="form-select" aria-label="Default select example" name='statu'>
                                     
                                     <option value="Acceptée">Acceptée</option>
                                     <option value="Refusée">Refusée</option>
                                    </select>
                              </div>
                            </div>
              
                            
                        
                       
                      <div class="text-right">
                        
                      <input type="text" name="id" value="<?php echo$resreve[0]['id-resh']; ?>" hidden>
                        <button type="submit" class="btn btn-primary" name='update'>update</button>
                        <button type="button" class="btn btn-secondary">Cancel</button>
                      </div>
                      
                    </form>
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
        <!-- sparkline JS
            ============================================ -->
        <script src="js/sparkline/jquery.sparkline.min.js"></script>
        <script src="js/sparkline/sparkline-active.js"></script>
        <!-- flot JS
            ============================================ -->
        <script src="js/flot/jquery.flot.js"></script>
        <script src="js/flot/jquery.flot.resize.js"></script>
        <script src="js/flot/flot-active.js"></script>
        <!-- knob JS
            ============================================ -->
        <script src="js/knob/jquery.knob.js"></script>
        <script src="js/knob/jquery.appear.js"></script>
        <script src="js/knob/knob-active.js"></script>
        <!--  Chat JS
            ============================================ -->
        <script src="js/chat/jquery.chat.js"></script>
        <!--  todo JS
            ============================================ -->
        <script src="js/todo/jquery.todo.js"></script>
        <!--  wave JS
            ============================================ -->
        <script src="js/wave/waves.min.js"></script>
        <script src="js/wave/wave-active.js"></script>
        <!-- plugins JS
            ============================================ -->
        <script src="js/plugins.js"></script>
        <!-- Data Table JS
            ============================================ -->
        <script src="js/data-table/jquery.dataTables.min.js"></script>
        <script src="js/data-table/data-table-act.js"></script>
        <!-- main JS
            ============================================ -->
        <script src="js/main.js"></script>

        <!--  summernote JS
		============================================ -->
    <script src="js/summernote/summernote-updated.min.js"></script>
    <script src="js/summernote/summernote-active.js"></script>
    
</body>

</html>

<?php 


if((isset($_POST['update']))){
    foreach($_POST as $key => $value){
        ${$key} = $value;
    }
      
        $ins = $pdo->prepare("UPDATE  `reserver-hotel`  set   `phone`=?, `date-debut`=?, `date-fin`=? ,`statu`=? WHERE `reserver-hotel`.`id-resh`=$id");
        $ins->execute(array($phone,$date_debut,$date_fin,$statu));
        if ($ins) {
            header("Location: affiche-reservehtl.php?success=Reservation a été modifiée avec succès");
           
        }else{

            header("Location: affiche-reservehtl.php?error=Reservation n'a pas été modifiée avec succès!");
        }
    }
    ?>