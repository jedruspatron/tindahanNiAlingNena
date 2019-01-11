
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

				<?php if(isset($_SESSION['user'])) { ?>

				<li class="nav-item">
					<a class="nav-link"  href="../views/catalog.php"> CATALOG </a>
				</li>
				

				<li class="nav-item">
					<a class="nav-link"  href="../views/catalog.php"> <span class="badge bg-light text-dark" id="cart-count">
						<?php
						if (isset($_SESSION['cart'])) {
							echo array_sum($_SESSION['cart']);
						} else {
							echo 0;
						} ?>
					</span> CART </a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="../controllers/logout.php"> LOG OUT </a>
				</li>


			<?php } else { ?>

				<li class="nav-item">
					<a class="nav-link" href="../views/login.php"> LOG IN </a>
				</li>

				<li class="nav-item">
					<a class="nav-link" href="../views/register.php"> REGISTER </a>
				</li>

			<?php } ?>

				
			</ul>
		</div> <!-- end navbar nav -->
	</nav> <!-- end nav -->
</div>