<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
    $("#searchInput").keyup(function() {
        var query = $(this).val(); // Lấy từ khóa tìm kiếm từ input
        $.ajax({
            type: "POST",
            url: "test_search.php",
            data: {
                query: query
            },
            success: function(data) {
                $("#searchResults").html(data);
            }
        });
    });
});
</script>

<body class="sticky-header">
    <a href="#top" class="back-to-top" id="backto-top"><i class="fal fa-arrow-up"></i></a>
    <!-- Start Mainmenu Area  -->
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
                    <!-- Start Mainmanu Nav -->
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
                            <li class="menu-item-has-children">
                                <a href="#">CLOTHES</a>
                                <ul class="axil-submenu">
                                    <?php
                        foreach($catalog_use as $catalog){
                          if($catalog['display_ctl']==1){
                            echo '
                            <li><a href="fashionApp.php?act=product_catalog_user&id='.$catalog['id_catalog_k'].'">'.$catalog['catalog_name'].'</a></li>
                          ';
                          }
                        }
                      ?>
                                </ul>
                            </li>
                            <li><a href="fashionApp.php?act=about">ABOUT</a></li>
                        </ul>
                    </nav>
                    <!-- End Mainmanu Nav -->
                </div>
                <div class="header-action">
                    <ul class="action-list">
                        
                        <!-- end search -->
                        <li class="shopping-cart">
                            <a id="cart_click" href="#" class="cart-dropdown-btn">
                                <span id="cart-count" class="cart-count"></span>
                                <i class="flaticon-shopping-cart"></i>
                            </a>
                        </li>
                        <script>
                        setInterval(function() {
                            var xhr = new XMLHttpRequest();
                            xhr.open('GET', 'get_cart_count.php', true);
                            xhr.onreadystatechange = function() {
                                if (xhr.readyState === 4 && xhr.status === 200) {
                                    document.getElementById('cart-count').textContent = xhr
                                        .responseText;
                                }
                            };
                            xhr.send();
                        }, 200); // Thời gian cập nhật (2 giây)
                        </script>
                        <script>
                        var input = document.getElementById('cart_click');
                        input.onclick = function() {
                            window.location.href = 'fashionApp.php?act=cart';
                        };
                        </script>


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
    <!-- End Mainmenu Area -->
    </header>
</body>

</html>