
<div>
	<nav id="sevy" class="navbar navbar-expand-lg navbar-dark">
		<a class="navbar-brand" href="#">
			<i class="far fa-hand-peace">Tindahan ni Aling Nena</i> 
		</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-nav">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div id="navbar-nav" class="collapse navbar-collapse">
			<ul class="navbar-nav ml-auto">

				<?php if(!isset($_SESSION['user'])) { ?>

					<li class="nav-item">
					<a class="nav-link" href="../views/login.php"> LOG IN </a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="../views/register.php"> REGISTER </a>
				</li>

				<li class="nav-item">
					<a class="nav-link"  href="../views/catalog.php"> CATALOG </a>
				</li>				

				<li class="nav-item">
					<a class="nav-link"  href="../views/cart.php"> <span class="badge bg-light text-dark" id="cart-count">
						<?php
						if (isset($_SESSION['cart'])) {
							echo array_sum($_SESSION['cart']);
						} else {
							echo 0;
						} ?>
					</span> CART </a>
				</li>

					

				<?php } else if (isset($_SESSION['user']) && ($_SESSION['user']['roles_id']) == 2 ) { ?>

				<li class="nav-item">
					<a class="nav-link" href="../views/profile.php"> Welcome, <?php  echo $_SESSION['user']['firstname']; ?> </a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="../controllers/logout.php"> LOG OUT </a>
				</li>

				<li class="nav-item">
					<a class="nav-link"  href="../views/catalog.php"> CATALOG </a>
				</li>				

				<li class="nav-item">
					<a class="nav-link"  href="../views/cart.php"> <span class="badge bg-light text-dark" id="cart-count">
						<?php
						if (isset($_SESSION['cart'])) {
							echo array_sum($_SESSION['cart']);
						} else {
							echo 0;
						} ?>
					</span> CART </a>

			<?php } else { ?>

				<li class="nav-item">
						<a class="nav-link" href="../views/profile.php"> Welcome, <?php  echo $_SESSION['user']['firstname']; ?> </a>
					</li>

					<li class="nav-item">
						<a class="nav-link"  href="../views/users.php"> USERS </a>
					</li>

					<li class="nav-item">
						<a class="nav-link"  href="../views/items.php"> ITEMS </a>
					</li>

					<li class="nav-item">
						<a class="nav-link"  href="../views/orders.php"> ORDERS </a>
					</li>

					<li class="nav-item">
						<a class="nav-link" href="../controllers/logout.php"> LOG OUT </a>
					</li>	

			<?php } ?>
			

				
			</ul>
		</div> <!-- end navbar nav -->
	</nav> <!-- end nav -->
</div>