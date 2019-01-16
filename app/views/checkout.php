<?php require_once '../partials/layout.php'; ?>

<?php function get_page_content() { 
	global $conn;
?>

<?php 
	if(!isset($_SESSION['user'])) {
		header("Location: ./login.php");
	}

?>

<h1>Hello, Welcome to your checkout page</h1>
<form method="POST" action="../controllers/placeorder.php">
	<div class="container mt-4">
		<div class="row">
			<div class="col-8">
				<h4>Shipping Address</h4>
				<div class="form-group">
				<input type="text" class="form-control" name="addressLine1" value="<?php echo $_SESSION['user']['address']; ?>">
			</div>
			</div>
			<!-- end of col -->
		</div>
		<!-- end of row -->
		<h4>Order Summary</h4>  
		<div class="row">
			<div class="col-sm-6">
				<p> Total </p>
			</div>
			<div class="col-sm-6" id="total_price">
				<?php 
					$cart_total = 0;
					foreach($_SESSION['cart'] as $id => $qty) {
						$sql = "SELECT * FROM items WHERE id =$id";
						$result = mysqli_query($conn, $sql);
						$item = mysqli_fetch_assoc($result);
						$subTotal = $_SESSION['cart'][$id] * $item['price'];
						$cart_total += $subTotal;
					}

					echo $cart_total;  ?>
			</div> 
			<!-- end of total price -->
		</div>
		<!-- end of row -->
		<hr>
		<button type="submit" class="btn btn-primary btn-block"> Place Order Now</button>
		<div class="row cart-items mt-4">
			<div class="table-responsive">
				<table class="table table-striped table-bordered" id="cart-items">
					<thead>
						<tr class="text-center">
							<th colspan="2">Item Name</th>
							<th>Item Price</th>
							<th>Item Quantity</th>
							<th>Item Subtotal</th>
						</tr>
					</thead>

					<tbody>
						
						<?php 

						foreach($_SESSION['cart'] as $id => $qty) {
							$sql2 = "SELECT * FROM items WHERE id=$id;";
							$result = mysqli_query($conn, $sql2);
							//var_dump($result);
							$item = mysqli_fetch_assoc($result);
							//var_dump($item);
						 ?>

						<tr class="text-center">
						<td colspan="2"><?php echo $item['name']; ?></td>
						<td><?php echo $item['price']; ?></td>
						<td><?php echo $qty; ?></td>
						<td><?php echo $qty * $item['price']; ?></td>
					<?php  } ?>
						</tr>
					</tbody>
				</table>
				
			</div>
		</div>

	</div> 
	<!-- end of container -->
</form>


<?php } ?>