<?php
	include("bootstrap_cdn.php");
?>

<head>
	  	<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
	  	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	  	<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
</head>

<div class="container">
	<div class="row">
	<div class="panel panel-default">
			    <div class="panel-heading">Bài đăng mới</div>
			    <div class="panel-body">

			     <!-- FORM STARTS HERE --> 
			      <form role="form" method="POST" action="newpost.php" enctype="multipart/form-data">
					  <div class="form-group">
					    <label class="control-label">Tiêu đề</label>
					    <input type="text" class="form-control" name="postTitle" >
					  </div>

					  <div class="form-group">
  						<label for="Description">Nội dung : </label>
  						<textarea class="form-control" rows="8" id="content" name="postDesc">
  							
  						</textarea>
  						<script type="text/javascript">
        					CKEDITOR.replace( 'content' );
      					</script>
					  </div>

					  <div class="form-group">
					    <label class="control-label">Chú thích</label>
					    <!-- <input type="text" class="form-control" name="postTag"  > -->
						<input type="radio" name="postTag" value="Bạo lực học đường">Bạo lực học đường
						<br />
						<input type="radio" name="postTag" value="Xâm hại tình dục">Xâm hại tình dục
					  </div>
					  <div class="form-group">
					    <label class="control-label">Đăng ảnh:</label>
  	  					<input type="file" name="image">
  					  </div>
				  	  <button type="submit" class="btn btn-default" name="submit">
				  	   	Đăng bài 
				      </button>
				</form>

				<!-- FORM ENDS HERE -->

			    </div>
			  </div>
			</div>
	</div>
</div>