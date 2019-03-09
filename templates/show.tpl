<!DOCTYPE html>
<html lang="zh-Hant-TW">
<head>
    {include file="header.tpl"}
    <style type="text/css">
    	.ct-header{
    		width: 100%;
    		background-size: contain;
    	}
    </style>
</head>
<body id="page-top" class="politics_version">

    <!-- LOADER -->
    <div id="preloader">
        <div class="loader">
			<span></span>
			<span></span>
			<span></span>
			<span></span>
		</div>
    </div><!-- end loader -->
    <!-- END LOADER -->
	
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="index.php">
			<img class="img-fluid" src="images/logo.png" alt="" />
		</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger active" href="index.php">回首頁</a>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>
	
	<div id="home" class="ct-header ct-header--slider ct-slick-custom-dots">
		<div data-arrows="true" data-autoplay="true">

			<div class="ct-header tablex item" data-background="uploads/banner-01.jpg">
				
			</div>

			<div class="ct-header tablex item" data-background="uploads/banner-01.jpg">
			
			</div>

			<div class="ct-header tablex item" data-background="uploads/banner-01.jpg">
				
			</div>
			
		</div><!-- .ct-slick-homepage -->
	</div><!-- .ct-header --> 

    <div id="contact" class="section db">
        <div class="container">
            <div class="section-title text-center">
                <h3>Contact Me</h3>
                <p>Quisque eget nisl id nulla sagittis auctor quis id. Aliquam quis vehicula enim, non aliquam risus.</p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-md-12">
                    <h2>問卷內容</h2>
                        <div class="container">
                            {if $op == "show_article"}
                                <h1>{$article.title}</h1>
                                <p>{$article.content}</p>
                            {else}
                                {foreach $all as $article} 
                                    <h3><a href="index.php?sn={$article.sn}">{$article.title}</a></h3>
                                {foreachelse}
                                    <h1>尚無內容</h1>
                                {/foreach}
                            {/if}           
                    </div>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-left">
                    <p class="footer-company-name">All Rights Reserved. &copy; 2018 <a href="#">Nickie</a> Design By : 
					<a href="https://html.design/">html design</a></p>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    {include file="footer.tpl"}

    <script type="text/javascript">
    $(document).ready(function () {
        $(".ct-header").css('width', $(window).width());
        $(".ct-header").css('height', $(window).height() / 2);
    });
 
    $(window).resize(function () {
        $(".ct-header").css('width', $(window).width());
        $(".ct-header").css('height', $(window).height() / 2);
    });
</script>
</body>
</html>