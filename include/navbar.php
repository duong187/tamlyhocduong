<nav class="navbar navbar-light bg-info">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href= <?php echo $index_url; ?> >Tâm lý Học đường</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href=<?php echo $posts_url; ?> >  <!--All posts-->
          Bài viết
        </a></li>

        <li><a href=<?php echo $top_posts_url; ?>  >Tiêu điểm</a></li>
        <li><a href=<?php echo $contact_us_url; ?>  >Liên hệ</a></li>
        <li><a href='https://drive.google.com/file/d/1GM0EdMtR5NHa1wuVujPYiZpiQSZMeCxR/view?usp=sharing'>Hướng dẫn</a></li>
      </ul>

      <!--  search box  -->
      <?php if(isset($_SESSION['username'])){?>
         <form class="navbar-form pull-left" role="search" action=<?php echo $search_url; ?> method="post">
            <div class="input-group">
               <input type="text" class="form-control" placeholder="Tìm kiếm" name="q">
               <div class="input-group-btn">
                  <button type="submit" class="btn btn-success" name="submit"> .
                    <span class="glyphicon glyphicon-search"></span>
                  </button>
               </div>
            </div>
          </form>
      <?php }?>
    <!--end of search box   -->

      <ul class="nav navbar-nav navbar-right">

       <?php
            if(!isset($_SESSION['username'])) {
                include("loginform.php");
              }
            else {
                include("userdetail.php");
              }
       ?>


      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<!--  HEADER -->
