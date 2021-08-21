<?php
include("../include/url_posts.php");

/* If not logged in then redirect to login page */
if(!isset($_SESSION['username']))
{
	header("location:../users/login.php");
}

if(isset($_POST['submit'])) {

	$postTitle=$_POST['postTitle'];
	$postDesc=$_POST['postDesc'];
	$postTag=$_POST['postTag'];
	$postAuthor=$_SESSION['username'];
	//Ảnh
	$image = $_FILES['image']['name'];
	if($image){
		$target = "../assets/images/".basename($image);
	}else{
		$target = null;
	}
	//printf($target);
	include("../db/dbconnect.php");

	/* CHECK if same user or email exists or not ? */
	$query="INSERT INTO posts_buffer (postTitle , postDesc , postTag , postAuthor, postImage)
			VALUES ('$postTitle' , '$postDesc' , '$postTag' , '$postAuthor', '$target') ";
	mysqli_query($conn , $query);
	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
		$msg = "Image uploaded successfully";
	}else{
		$msg = "Failed to upload image";
	}
	echo($msg);
	printf("Successfully posted your post\n");
	header("location:posts.php");

}

/* * * * * POST Form * * * * */
else {
	/*
	echo "
		<form action='newpost.php' method='POST' >
			Title : <input type='text' name='title'></br>
			Description : <input type='text' name='description'></br>
			Tags : <input type='text' name='tag'></br>
			<input type='submit' name='submit' value='Publish'></br>
		</form>
	";*/

	include("../include/frame_newpost.php");

}


?>
