<?php 
$paypal = new \PayPal\Rest\ApiContext(
	new \PayPal\Auth\OAuthTokenCredential(
		"AeWyGRXK5Y0e2Ie_dK0ltac7ghF9b1Fj0QWfKW-0ZsCM8oPCyq6uG0HU4Wf9QbAWBtARgn98FZc3Psma", 
		"EG9MCbiSigTS2cbnj2lt7SpIaajxF7OMNL6x1jNEpWMdBu1ChrV3YkUlpa0Vcr0cusOuCgk62QUnwZZG")
);

//(client id, secret)
?>