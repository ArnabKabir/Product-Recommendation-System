<?php
  session_start();
    if(isset($_GET['id'])){
      $_SESSION['id']=$_GET['id'];
    }
    include("header.php");
    include("db.php");
    $flag = 0;
    if (isset($_POST['submit'])) {
      $result=mysqli_query($con, "insert into user_products(user_id,product_name,product_rating)values('$_SESSION[id]','$_POST[product_name]','$_POST[product_rating]')");
      if($result){
        $flag=1;
      }

    }
?>

<div class="panel panel-default">

  <div class="panel-heading">
    <h1>
      <a class="btn btn-success" href="add.php"> Add Products </a>
      <a class="btn btn-info pull-right" href="index.php"> Back </a>
    </h1>
  </div>

  <?php if($flag){ ?>
    <div class="alert alert-success">Product Successfully Inserted In the Database </div>

  <?php  } ?>

  <div class="panel-body">
    <form action="add_products.php" method="post">
    <div class="form-group">
      <label for="username">Product Name</label>
      <input type="text" name="product_name" id = "product_name" class="form-control" required>
    </div>

    <div class="form-group">
      <label for="username">Product Rating</label>
      <input type="number" name="product_rating" id = "product_rating" class="form-control" required>
    </div>

  <div class="form-group">
    <input type="submit" name="submit" value="submit" class="btn btn-primary" required>
  </div>
