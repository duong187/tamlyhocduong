<?php
    include("../include/url_posts.php");
    include_once("../include/algos.php");
?>

<style>
.col-sm-4{
    height:250px;
}
/* Parent Container */
.content_img{
 position: relative;
}
.content_img img{
    height:250px;
}
/* Child Text Container */
.content_img div{
 position: absolute;
 bottom: 0;
 right: 100;
 background: black;
 color: white;
 margin-bottom: 5px;
 font-family: sans-serif;
 opacity: 0;
 visibility: hidden;
 -webkit-transition: visibility 0s, opacity 0.5s linear; 
 transition: visibility 0s, opacity 0.5s linear;
}

/* Hover on Parent Container */
.content_img:hover{
 cursor: pointer;
}

.content_img:hover div{
 width: 150px;
 padding: 8px 15px;
 visibility: visible;
 opacity: 0.7; 
}
</style>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <a href="posts.php">
            <div class="content_img">
                <img src="..\assets\images\interface\read_post.jpg" />
                <div>READING: Đọc những chia sẻ của mọi người</div>
            </div>
            </a>
        </div>
        <div class="col-sm-4">
            <a href="newpost.php">
            <div class="content_img">
                <img src="..\assets\images\interface\write_post.jpg" />
                <div>WRITING: Viết và chia sẻ những trải nghiệm của bản thân tới mọi người</div>
            </div>
            </a>
        </div>
        <div class="col-sm-4">
            <a href="../include/frame_search.php">
            <div class="content_img">
                <img src="..\assets\images\interface\search.jpg" />
                <div>SEARCHING: Tìm kiếm những bài viết bạn quan tâm</div>
            </div>
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <a href="../users/contact_us.php">
            <div class="content_img">
                <img src="..\assets\images\interface\discussion.jpg" />
                <div>DISCUSSION: Chia sẻ riêng tư với chúng tôi về những vấn đề của bạn</div>
            </div>
            </a>
        </div>
        <div class="col-sm-4">
            <a href=<?php echo $profile_url; echo "?user=".$username; ?>>
            <div class="content_img">
                <img src="..\assets\images\interface\profile.jpg" />
                <div>PROFILE: Xem thông tin cá nhân của bạn</div>
            </div>
            </a>
        </div>
        <div class="col-sm-4">
            <a href=<?php echo $top_posts_url; ?>>
            <div class="content_img">
                <img src="..\assets\images\interface\star.jpg" />
                <div>TOP POSTS: Những bài viết đáng chú ý, được nhiều người quan tâm</div>
            </div>
            </a>
        </div>
    </div>
</div>