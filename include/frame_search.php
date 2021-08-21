<?php
    include("url_posts.php");
    include_once("algos.php");
?>
<form class="container" role="search" action=<?php echo $search_url; ?> method="post">
    <div class="input-group">
        <input type="text" class="form-control" placeholder="Tìm kiếm" name="q">
        <div class="input-group-btn">
            <button type="submit" class="btn btn-success" name="submit"> .
                <span class="glyphicon glyphicon-search"></span>
            </button>
        </div>
    </div>
</form>