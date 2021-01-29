<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gold</title>

    <!-- font awesome link -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <!-- main style css link -->
    <link rel="stylesheet" href="/Goldd/css/style.css" />

    <!-- design css link -->
    <link rel="stylesheet" href="/Goldd/css/design_web_app.css">

    <!-- animation css link -->
    <link rel="stylesheet" href="/Goldd/css/animation.css" />

    <!-- media query style css link -->
    <link rel="stylesheet" href="/Goldd/css/media.css" />

    
  </head>
  <body>
    <div class="wrap">

      <?php include $_SERVER["DOCUMENT_ROOT"]."/Goldd/include/header.php" ?>

      <section class="contents app hasTitle">
        <div class="center">
          <!-- contact title -->
          <div class="title">
            <h2>APPLICATIONS</h2>
            <div class="subTit">
              <span class="subLine"></span>
              <a href="#" class="subLink">View More Details</a>
            </div>
          </div>
          <!-- end of contact title -->

          <div class="appBoxes deWeBoxes">
            <div class="appBox-sizer"></div>
            
            
          </div>
          
         

          <div class="btns">
            <?php
              if($userlevel == 1){
            ?>
              <button class="commonBtn appLoadMore">Load More</button>
              <a href="#" class="commonBtn toTop">Go To Top</a>
              <a href="/Goldd/pages/app/app_input_form.php" class="commonBtn">Upload Contents</a>
            <?php
              } else {
            ?>
              <a href="#" class="commonBtn appLoadMore">Load More</a>
              <a href="#" class="commonBtn toTop">Go To Top</a>
            <?php
              }
            ?>

          </div>

         

        </div>
        <!-- end of center -->
      
        
      </section>
     
      <?php include $_SERVER["DOCUMENT_ROOT"]. "/Goldd/include/about.php" ?>
      <?php include $_SERVER["DOCUMENT_ROOT"]."/Goldd/include/footer.php" ?>

    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
    <script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
    <script src="/Goldd/js/custom.js"></script>
    <script src="/Goldd/js/web_design_page.js"></script>
    <script src="/Goldd/js/app.js"></script>
    <script>
 
    </script>
  </body>
</html>
