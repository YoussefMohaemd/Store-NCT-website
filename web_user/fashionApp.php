<!-- fashionApp.php -->
<?php
session_start();
ob_start();
if (!isset($_SESSION['cart'])) {
  $_SESSION['cart'] = [];
}
$count_cart = count($_SESSION['cart']);
include "../model_user/connectdb_user.php";
include "../model_user/productdb_user.php";
include "../model_user/clientdb_user.php";
include 'head.php';
$product = getall_product_hot();
$product_use = getall_product_view(0, 0);
$product_view = getall_product_view(0, 1);
$new_products = getall_product_new();
include 'header.php';
if (isset($_GET['act'])) {
  switch ($_GET['act']) {
    case 'login': {
        header('location: login_user.php');
        break;
      }
    case 'login_sc': {
        header('location: login_user.php?success=1');
        break;
      }
    case 'logout': {
        if (isset($_SESSION['username'])) {
          unset($_SESSION['username']);
        }
      
        if (isset($_SESSION['iduser'])) {
          unset($_SESSION['iduser']);
        }
        header('location: fashionApp.php?act=home');
        break;
      }
    case 'login_account_user': {
        if (isset($_POST['user_check']) && ($_POST['user_check'])) {
          $user = $_POST['user'];
          $pass = $_POST['password'];
          $ban = 1;
          $kq_ban = get_userban($user, $ban);
          $kq_user = get_user($user, $pass);

        
          if ($kq_ban == 0) {
            header('location: login_user.php?error=2');
            exit();
          }
          elseif ($kq_user == 0) {
            header('location: login_user.php?error=1');
            exit();
          } else {
            $_SESSION['username'] = $kq_user[0]['user'];
            $_SESSION['iduser'] = $kq_user[0]['id'];
            header('location: fashionApp.php?act=home');
            break;
          }
        }
        break;
      }
    case 'about': {
        include 'about.php';
        break;
      }
    case 'product_product_user': {
      if (isset($_GET['id']) && ($_GET['id'] > 0)) {
          $iddm = $_GET['id'];
          $all_product = getall_product_view($iddm, 1); 
      } else {
          $all_product = getall_product_view(0, 1);
      }
      include("product_product.php");
      break;
  }
    case 'home': {
        include 'body.php';
        break;
      }
    
    case 'detail_product': {
        if (isset($_GET['id']) && ($_GET['id'] != "")) {
          $id = $_GET['id'];
          $detail_product = get_detail_product($id);
          include('detail_product.php');
        } else {
          include("fashionApp.php");
        }
        break;
      }
   
    case 'insert_client_user': {
        if (isset($_GET['id'])) {
          header('location: register.php');
          break;
        }

        if (isset($_POST['submit']) && $_POST['submit']) {
          if (isset($_POST['user_c'])) {
            $lname = $_POST['last_name_c'];
            $fname = $_POST['first_name_c'];
            $sex = $_POST['sex_c'];
            $email = $_POST['email_c'];
            $phone = $_POST['phone_c'];
            $userr = $_POST["user_c"];
            $password = $_POST['password_c'];
            $address = $_POST['address_c'];

            $check = 0; 

            if ($lname == "" || $fname == "" || $sex == "" || $email == "" || $phone == "" || $userr == "" || $password == "" || $address == "") {
              $check = 1;
            }

            $account = getall_client_user();

            foreach ($account as $us) {
              if ($us["user"] == $userr) {
                $txt_erro = "User exists, please enter another user!";
                header('location: register.php?act=sameus');
                $check = 2;
                break;
              }
            }

            if ($check == 2) {
              break;
            }

            if ($check == 1) {
              header('location: register.php?act=miss');
              break;
            } else {
              insert_client_user($lname, $fname, $sex, $email, $phone, $userr, $password, $address);
              header('location: fashionApp.php?act=login_sc');
              break;
            }
          }
        }
        break;
      }

    default: {
        include 'body.php';
        break;
      }
  }
} else {
  include 'body.php';
}
include 'footer.php';
?>