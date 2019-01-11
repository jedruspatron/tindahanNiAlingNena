<?php require_once '../partials/layout.php'; ?>

<?php function get_page_content() { 
	global $conn; ?>

	<div class="container">
		<div class="jumbotron bg-dark text-light text-center mt-5">
			<h4>Register</h4>
		</div> 
		<!-- end of jumbotron -->

		<form id="register_form">
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label for="firstname">First Name:</label>
						<input type="text" id="firstname" class="form-control" name="firstname" placeholder="Enter your first name here">
						<span class="validation"></span>
					</div>

					<div class="form-group">
						<label for="lastname">Last Name:</label>
						<input type="text" id="lastname" class="form-control" name="lastname" placeholder="Enter your last name here">
						<span class="validation"></span>
					</div>

					<div class="form-group">
						<label for="email">Email:</label>
						<input type="email" id="email" class="form-control" name="email" placeholder="Enter your email here">
						<span class="validation"></span>
					</div>
					<div class="form-group">
						<label for="address">Address:</label>
						<input type="text" id="address" class="form-control" name="address" placeholder="Enter your address here">
						<span class="validation"></span>
					</div> 
				</div> 
				<!-- end of left side -->

				<div class="col-sm-6"> 

					<div class="form-group">
						<label for="username">User Name:</label>
						<input type="text" id="username" class="form-control" name="username" placeholder="Enter your user name here">
						<span class="validation"></span>
					</div>

					<div class="form-group">
						<label for="password">Password:</label>
						<input type="password" id="password" class="form-control" name="password" placeholder="Enter your password here">
						<span class="validation"></span>
					</div>

					<div class="form-group">
						<label for="conpass">Confirm Password:</label>
						<input type="password" id="conpass" class="form-control" name="conpass" placeholder="Confirm your password here">
						<span class="validation"></span>
					</div>


				</div>
				<!-- end of right side -->

			</div>
			<!-- end of row -->



		</form>
		<!-- end of form -->

	<div class="text-center py-4 mb-5">
		<button type="button" id="add_user" class="btn btn-outline-dark btn-block mb-5">Register</button>
		
	</div>

<?php }?>