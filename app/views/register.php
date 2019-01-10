<?php require_once '../partials/layout.php'; ?>


<?php function get_page_content() { ?>

<div class="container bg-primary rounded p-3 mt-5">
	<h1 class="text-center">REGISTER</h1>

	<!-- register form -->

	<form id="register_form" action="../controllers/register_endpoint.php" method="POST">
	  
	  <div class="form-group">
	    <label for="firstName">First Name</label>
	    <input type="text" name="firstName" class="form-control" id="firstName"  placeholder="Write your First Name">
	    <span></span>
	  </div>	

	  <div class="form-group">
	    <label for="lastName">Last Name</label>
	    <input type="text" name="lastName" class="form-control" id="lastName"  placeholder="Write your Last Name">
	    <span></span>
	  </div>


	  <div class="form-group">
	    <label for="email">Email Address</label>
	    <input type="email" name="email" class="form-control" id="email"  placeholder="Write your Email Address">
	    <span></span>
	  </div>

	  <div class="form-group">
	    <label for="address">Address</label>
	    <input type="text" name="address" class="form-control" id="lastName"  placeholder="Write your Address">
	    <span></span>
	  </div>	
	 
	  <div class="form-group">
	    <label for="userName">Username</label>
	    <input type="text" name="userName" class="form-control" id="userName"  placeholder="Write your username">
	    <span></span>
	  </div>

	  <div class="form-group">
	    <label for="password">Password</label>
	    <input type="password" name="password" class="form-control" id="password" placeholder="Write your password">
	  	<span></span>
	  </div>

	  <div class="form-group">
	    <label for="conpassword"> Confirm Password</label>
	    <input type="password" name="conpassword" class="form-control" id="conpassword" placeholder=" Write again your password">
	  	<span></span>
	  </div>

	  <button type="button" id="registerBtn" class="btn btn-outline-dark btn-block mb-5">Register</button>
	</form>

</div>

<script>
	$('#registerBtn').click( () => {
		//put validation here

		let errorFlag = false;
		const username = $('#userName').val();

		//username field is empty
		if (username == 0) {
			$('#userName').next().css('color', 'red');
			$('#userName').next().html('this field is required');
			errorFlag=true;
		} else {
		//username already exists

			$.ajax({
				url: '../controllers/check_username.php',
				method: 'POST',
				data: {username: username},
				async: false // if you set it to false you need to complete this before  proceeding
			}).done( data => {
				// if username exists, send an error. else allow it. 
				if(data == "meron") {
					$('#userName').next().css('color', 'red');
					$('#userName').next().html('username is already taken');
					errorFlag = true;
				} else {
					//username is available
					$('#userName').next().css('color', 'green');
					$('#userName').next().html('username available');
				}
			});

		}


		const password = $('#password').val();
		const conpassword = $('#conpassword').val();
		// console.log(password);

		//check if password field is empty
		if (password.length == 0) {
			$('#password').next().css('color', 'red');
			$('#password').next().html('this field is required');
			errorFlag == true;
		} else {
			$('#password').next().html(''); //removes the error msg
			//passwords do not much
			if(password !== conpassword) {
				$('#conpassword').next().css('color', 'red');
				$('#conpassword').next().html('passwords do not match');
				errorFlag = true;
			}
		}



		

		//password field is empty

		//passwords did not match


	if (errorFlag == false) {
		$("#register_form").submit();
	}

	});


</script>




<?php }; ?>
