<?php

/* search.php?q='dp' */

include("../include/url_posts.php");

if(isset($_POST['submit'])) {
	$q=$_POST['q'];
	$x = explode(":", $q)[0];
	$y = explode(":", $q)[1];
} else {
	printf("No search Result found");
	$q='';
}

// $query="SELECT * 
// 		FROM posts
// 		WHERE postTitle like '%$q%' OR
// 					postTag like '%$q%' OR
// 					postDesc like '%$q%' OR
// 					postAuthor like '%$q%'
// 		";

//$query = "select * from posts where (postTitle = '$q' or postTag = '$q' or postDesc = '$q' or postAuthor = '$q')";
$arr = array("postTitle" => "tiêu đề", "postTag" => "chú thích", "postDesc" => "nội dung", "postAuthor" => "tác giả");
$arr2 = array("Tiêu đề" => "postTitle", "Chú thích" => "postTag", "Nội dung" => "postDesc", "Tác giả" => "postAuthor");
$query = "select * from posts where $arr2[$x] = '$y'";

echo "Những bài viết có {$x} cần tìm được liệt kê dưới đây:";
//$conn =mysqli_connect("localhost","root","","blog");
$result=mysqli_query($conn , $query);

if(mysqli_num_rows($result)) {
	while($post=mysqli_fetch_assoc($result)) {
		$id=$post['postID'];
		$title=$post['postTitle'];
		$desc=$post['postDesc'];
		$tags=$post['postTag'];
		$author=$post['postAuthor'];
		$time=$post['postTime'];
		$shortpost=1;  /* short post with read more  */
		$image_path=$post['postImage'];
		include("../include/frame_post.php");
	}
}

?>
