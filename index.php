<style media="screen">

.bg {
/*background: url('http://previews.123rf.com/images/studiom1/studiom11102/studiom1110201497/8891078-BLOG-Word-collage-on-white-background-Vector-illustration-Illustration-with-different-association-te-Stock-Vector.jpg');*/
background: url('https://images4.content-hci.com/commimg/myhotcourses/blog-inline/myhc_56022.jpg');
background-repeat: no-repeat;
background-position: center;
background-size: center;
height: 500px;
}
</style>

<?php
$index_url='index.php';
$posts_url='posts/posts.php';
$top_posts_url='posts/topposts.php';
$post_url='posts/post.php';
$newpost_url='posts/newpost.php';
$login_url='users/login.php';
$logout_url='users/logout.php';
$register_url='users/register.php';
$search_url='posts/search.php';
$contact_us_url='users/contact_us.php';
$instruction_url = 'include/instruction.php';

session_start();

include("include/navbar.php");
include("include/bootstrap_cdn.php");

if(isset($_SESSION['username'])) {
	//header("location:posts/posts.php");
	header("location:posts/interface.php");
}

?>

<div class="row">
	<div class="bg"></div>
</div>
