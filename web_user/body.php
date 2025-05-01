<main class="main-wrapper">
    <div class="axil-main-slider-area main-slider-style-3">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6">
                    <div class="main-slider-content">
                        <span class="subtitle"><i class="fas fa-fire"></i>Buy now before run off 🌟</span>
                        <h1 class="title">Where there is will, there is way</h1>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Hot Product -->
    <div class="axil-best-seller-product-area bg-color-white axil-section-gap pb--0">
        <div class="container">
            <div class="product-area pb--50">
                <div class="section-title-wrapper">
                    <span class="title-highlighter highlighter-primary">
                        <i class="fas fa-shopping-basket"></i>This Month</span>
                    <h2 class="title">Hot products</h2>
                </div>
                <div class="row row--15">
                    <?php
                    $i = 0;
                    foreach ($product as $pd) {
                        if ($i >= 4) break;
                        echo '
        <div class="col-lg-3 col-md-4 col-sm-6 mb--30">
            <div class="axil-product product-style-six">
                <div class="thumbnail">
                    <a href="fashionApp.php?act=detail_product&id=' . $pd['id_product'] . '">
                        <img
                            class="conform-img"
                            data-sal="fade"
                            data-sal-delay="100"
                            data-sal-duration="1500"
                            src="../uploads/' . $pd['product_img'] . '"
                            alt="Product Images"
                        />
                    </a>
                </div>
                <div class="product-content">
                    <div class="inner">
                        <div class="product-price-variant">
                            <span class="price current-price">' . number_format($pd['product_prices']) . ' EGP</span>
                        </div>
                        <h5 class="title text-center">
                            <a href="fashionApp.php?act=detail_product&id=' . $pd['id_product'] . '">
                                ' . $pd['product_name'] . ' 
                                <span class="verified-icon"><i class="fas fa-check-circle"></i></span>
                            </a>
                        </h5>
                        <ul class="cart-action">
                            <li class="select-option">
                                <a href="fashionApp.php?act=detail_product&id=' . $pd['id_product'] . '">Buy product</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>';
                        $i++;
                    }

                    if ($i === 0) {
                        echo '<div class="col-12"><p class="text-center">No hot products available at the moment.</p></div>';
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
    <!-- New Products -->
    <div class="axil-product-area bg-color-white axil-section-gap pb--0">
        <div class="container">
            <div class="product-area pb--20">
                <div class="axil-isotope-wrapper">
                    <div class="product-isotope-heading">
                        <div class="section-title-wrapper">
                            <span class="title-highlighter highlighter-primary">
                                <i class="fas fa-shopping-basket"></i> Our New Products
                            </span>
                            <h2 class="title">New Products</h2>
                        </div>
                    </div>
                </div>
                <div class="row row--15 isotope-list">
                    <?php
                    if (count($new_products) > 0) {
                        foreach ($new_products as $product) {
                            echo '                
                        <div class="col-xl-3 col-lg-4 col-sm-6 col-12 mb--30 product ' . $product['catalog_id'] . '">
                            <div class="axil-product product-style-one">
                                <div class="thumbnail">
                                    <a href="fashionApp.php?act=detail_product&id=' . $product['id_product'] . '">
                                        <img class="conform-img" data-sal="fade" data-sal-delay="100" 
                                             data-sal-duration="1500" src="../uploads/' . $product['product_img'] . '"
                                             alt="' . htmlspecialchars($product['product_name']) . '" />
                                    </a>
                                    <div class="product-hover-action">
                                        <ul class="cart-action">
                                            <li class="select-option">
                                                <a href="fashionApp.php?act=detail_product&id=' . $product['id_product'] . '">Buy Product</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="inner">
                                        <h5 class="title">
                                            <a href="fashionApp.php?act=detail_product&id=' . $product['id_product'] . '">
                                                ' . htmlspecialchars($product['product_name']) . '
                                                <span class="verified-icon">
                                                    <i class="fa fa-check-circle"></i>
                                                </span>
                                            </a>
                                        </h5>
                                        <div class="product-price-variant">
                                            <span class="price current-price">' . number_format($product['product_prices']) . ' EGP</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>';
                        }
                    } else {
                        echo '<div class="col-12"><p class="text-center">No new products available at the moment.</p></div>';
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</main>