<div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="logo-area">
                        <a href="#"><img src="img/logo/logo.png" alt="" width="200px" height="70px"/></a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="header-top-menu">
                        <ul class="nav navbar-nav notika-top-nav">
                            <li class="nav-item dropdown">
                        <div class="profile-image" data-toggle="modal" data-target="#profileModal">
                    <img class="rounded-circle mb-3" src="<?php echo'../admin-ver/'.$_SESSION['photoprofile']?>" alt="Profile Image">
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
                  <h5 class="modal-title" id="profileModalLabel"><?php echo $_SESSION['username']?></h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <img src="<?php echo'../admin-ver/'.$_SESSION['photoprofile']?>" alt="Profile Image" class="rounded-circle mb-3">
                  
                  <a href="account.php" class="btn btn-primary">View Profile</a>
                  <a href="deconection.php" class="btn btn-secondary">Logout</a>
                </div>
              </div>
            </div>
          </div>
    </div>