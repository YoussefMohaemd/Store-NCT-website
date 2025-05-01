<body class="sticky-header">
    <a href="#top" class="back-to-top" id="backto-top"><i class="fal fa-arrow-up"></i></a>
    <!-- Start Main menu Area  -->
    <div id="axil-sticky-placeholder"></div>
    <div class="axil-mainmenu">
        <div class="container">
            <div class="header-navbar">
                <div class="header-brand">
                    <a href="fashionApp.php?act=home">
                        <img style="  width: 231px; height: 52px;" src="../assets/images/logo/logo.png"
                            alt="Site Logo" />
                    </a>
                </div>
                <div class="header-main-nav">
                    <!-- Start Main menu Nav -->
                    <nav class="mainmenu-nav">
                        <button class="mobile-close-btn mobile-nav-toggler">
                            <i class="fas fa-times"></i>
                        </button>
                        <div class="mobile-nav-brand">
                            <a href="fashionApp.php?act=fashionApp.php?act=home" class="logo">
                                <img src="../assets/images/logo/logo5.png" alt="Site Logo" />
                            </a>
                        </div>
                        <ul class="mainmenu">
                            <li>
                                <a href="fashionApp.php?act=home">HOME</a>
                            </li>
                            <li>
                                <a href="">CLOTHES</a>
                               
                            </li>
                            <li><a href="">ABOUT</a></li>
                        </ul>
                    </nav>
                    <!-- End Mainmanu Nav -->
                </div>
                <div class="header-action">
                    <ul class="action-list">
                        <li class="my-account">
                            <a href="javascript:void(0)">
                                <i class="flaticon-person"></i>
                            </a>
                            <div class="my-account-dropdown">
                                <span style="display: block; text-align: center;" class="title"></span>
                                <ul>
                                    <?php
                        if(isset($_SESSION['username'])&&($_SESSION['username']!=""))
                        {
                          echo '

                          <div class="login-btn">
                            <a href="fashionApp.php?act=logout" class="axil-btn btn-bg-primary">Log out</a>
                          </div>
                          ';
                        } else {
                          echo '
                          <div class="login-btn">
                          <a href="fashionApp.php?act=login" class="axil-btn btn-bg-primary">Login</a>
                          </div>
                          <div class="login-btn">
                          <a href="fashionApp.php?act=insert_client_user&id=1" class="axil-btn btn-bg-primary">Sign up</a>
                          </div>';
                        }?>
                            </div>
                        </li>
                        <li class="axil-mobile-toggle">
                            <button class="menu-btn mobile-nav-toggler">
                                <i class="flaticon-menu-2"></i>
                            </button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Main menu Area -->
    </header>
</body>
</html>