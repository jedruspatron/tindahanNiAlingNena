<?php require_once '../partials/layout.php'; ?>

<?php function get_page_content() {
if(isset($_SESSION['user']) && $_SESSION['user']['roles_id'] == 1) { 
		global $conn;

$item_id = $_GET['id'];
$sql = "SELECT * FROM items WHERE id='$item_id'";
$result = mysqli_query($conn, $sql);
$item = mysqli_fetch_assoc($result);

?>

<div class="container">
	<div class="row">
		<div class="col-sm-8 offser-sm-2">
			<form action="../controllers/process_edit_item.php" method="POST">
				<div class="form-group">
					<label for="name">Name:</label>
					<input type="text" name="name" class="form-control" value="<?php echo $item['name']; ?>" required>
				</div>

				<div class="form-group">
					<label for="price">Price:</label>
					<input type="text" name="price" class="form-control" value="<?php echo $item['price']; ?>" required>
				</div>				

				<div class="form-group">
					<label for="description">Description:</label>
					<textarea name="description" class="form-control col-8" id="description" rows="5"><?php echo $item['description'];?></textarea> 
				</div>				

				<div class="form-group">
					<label for="categories">Categories:</label>
					<select name="category_id" class="form-control col-8" id="category" required>
					<?php

					$sql = "SELECT * FROM categories";
					$categories = mysqli_query($conn, $sql);
					foreach ($categories as $category) {
					 	extract($category);

					 	//ternary operator
					 	$selected = $item['category_id'] == $id ? 'selected': '';
					 	echo "<option value='$id' $selected>$name</option>"; 
					 } 
						?>
					</select> 
				</div>

				<input type="hidden" name="id" value="<?php echo $item['id'] ?>">
				<button type="submit" class="btn btn-primary">Update Changes</button>

			</form>
		</div>
	</div>
</div>

<?php } else {
	header('Location:./error.php');
} ?>



<?php }?>