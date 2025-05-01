<!-- product_product.php -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="axil-best-seller-product-area bg-color-white axil-section-gap pb--0">
        <div class="container">
            <div class="product-area pb--50">
                <div class="row row--20 isotope-list">
                    <?php
                    foreach ($all_product as $result) :
                        $detailUrl = 'fashionApp.php?act=detail_product&id=' . urlencode($result['id_product']);
                    ?>
                        <div class="col-xl-3 col-lg-4 col-sm-6 col-12 mb--30 product <?= htmlspecialchars($result['catalog_id'], ENT_QUOTES, 'UTF-8') ?>">
                            <div class="axil-product product-style-one">
                                <div class="thumbnail">
                                    <a href="<?= $detailUrl ?>">
                                        <img class="conform-img" data-sal="fade" w-[100%] data-sal-delay="100" data-sal-duration="1500"
                                            src="../uploads/<?= htmlspecialchars($result['product_img'], ENT_QUOTES, 'UTF-8') ?>"
                                            alt="<?= htmlspecialchars($result['product_name'], ENT_QUOTES, 'UTF-8') ?>" />
                                    </a>
                                    <div class="product-hover-action">
                                        <ul class="cart-action">
                                            <li class="select-option">
                                                <a href="<?= $detailUrl ?>">Buy Product</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="inner">
                                        <h5 class="title">
                                            <a href="<?= $detailUrl ?>">
                                                <?= htmlspecialchars($result['product_name'], ENT_QUOTES, 'UTF-8') ?>
                                            </a>
                                        </h5>
                                        <div class="product-price-variant">
                                            <span class="price current-price">
                                                <?= number_format($result['product_prices']) ?> EGP
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</body>
</html>