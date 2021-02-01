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
    <link rel="stylesheet" href="/gold/css/style.css" />
    <!-- design css link -->
    <link rel="stylesheet" href="/gold/css/design_web_app.css">
    <!-- qna css link -->
    <link rel="stylesheet" href="/gold/css/qna.css">
    <!-- admin css link -->
    <link rel="stylesheet" href="/gold/css/admin.css">
    <!-- animation css link -->
    <link rel="stylesheet" href="/gold/css/animation.css" />
    <!-- media query style css link -->
    <link rel="stylesheet" href="/gold/css/media.css" />

  </head>
  <body>
    <div class="wrap">
      
      <?php include $_SERVER["DOCUMENT_ROOT"]."/gold/include/header.php" ?>

      <?php
      if($userlevel != 1){
      ?>
      <div class="deny" style="width:100%; height:auto; text-align:center; padding:50px 0; font-family:'Noto Sans KR'; color:#838383;">
         <p style="font-size:25px; font-weight:600;">관리자 페이지 입니다. 관리자로 로그인 해주세요.</p>
         <a href="/gold/pages/login/login_form.php" style="color:#fff; background:#d0af51; padding:10px 25px; margin-top:10px; display:inline-block;">로그인</a>
      </div>
      <?php
      } else {
      ?>

      <section class="contents admin hasTitle">
         <div class="center">
          
            <div class="adminTabs">
               <button type="button" class="active"><i class="fa fa-envelope"></i><b>메시지 관리</b></button>
               <button type="button"><i class="fa fa-user"></i><b>회원 관리</b></button>
               <button type="button"><i class="fa fa-desktop"></i><b>Web 관리</b></button>
               <button type="button"><i class="fa fa-mobile"></i><b>App 관리</b></button>
               <button type="button"><i class="fa fa-comment"></i><b>Q&A 관리</b></button>
            </div>

            <div class="msgTab deWeBoxes adminPanel">
               <div class="msgTable">
                  <ul class="msgList">
                     <li class="msgTitle clear">
                        <span class="msgNum">번호</span>
                        <span class="msgId">이름</span>
                        <span class="msgTit">제목</span>
                        <span class="msgReg">등록일</span>
                        <span class="msgEmail">이메일</span>
                        <span class="msgDelete">삭제</span>
                     </li>

                     <?php
                     //database connect
                     include $_SERVER['DOCUMENT_ROOT']."/gold/php_process/connect/db_connect.php";
                     $sql="select * from gold_msg order by GOLD_MSG_num desc limit 5";

                     $msg_result=mysqli_query($dbConn, $sql);

                     while($msg_row=mysqli_fetch_array($msg_result)){
                        $msg_num=$msg_row['GOLD_MSG_num'];
                        $msg_id=$msg_row['GOLD_MSG_name'];
                        $msg_tit=$msg_row['GOLD_MSG_tit'];
                        $msg_reg=$msg_row['GOLD_MSG_reg'];
                        $msg_email=$msg_row['GOLD_MSG_email'];
                     
                     ?>
                     <li class="msgContents clear">
                        <span class="msgNum"><?=$msg_num?></span>
                        <span class="msgId"><?=$msg_id?></span>
                        <span class="msgTit"><a href="/gold/pages/admin/admin_view.php?num=<?=$msg_num?>"><?=$msg_tit?></a></span>
                        <span class="msgReg"><?=$msg_reg?></span>
                        <span class="msgEmail"><?=$msg_email?></span>
                        <span class="msgDelete"><a href="/gold/php_process/pages/msg_delete.php?num=<?=$msg_num?>">삭제</a></span>
                     </li>
                     <?php
                     }
                     ?>
                  </ul>
               </div>
               <!-- end of msg table  -->
               <div class="searchPaging clear">
                  <div class="search">
                     <form action="/gold/pages/admin/msg_search_result.php" method="post" name="adminSearch" class="clear adminSearch">
                        <select name="searchSelect" id="" class="searchSelect">
                        <option value="adminSearchId">아이디</option>
                        <option value="adminSearchTitle">제목</option>
                        </select>
                        <input type="text" name="adminSearchInput" placeholder="검색어를 입력해 주세요" class="adminSearchInput">
                        <button type="button" class="adminSearchBtn"><i class="fa fa-search" onclick="admin_search_check()"></i></button>
                        <script>
                        function admin_search_check(){
                           if(!document.adminSearch.adminSearchInput.value){
                              alert('검색어를 입력해 주세요.');
                              document.adminSearch.adminSearchInput.focus();
                              return;
                           }
                           document.adminSearch.submit();
                        }
                        </script>
                     </form>
                  </div>   
                  <!-- end of search -->
               </div>
               <!-- end of searchPage -->
            </div>  
            <!-- end of msg tab -->

            <div class="memberTab adminPanel">member tab</div>
            <div class="webTab adminPanel">web tab</div>
            <div class="appTab adminPanel">app tab</div>
            <div class="qnaTab adminPanel">qna tab</div>

         </div>
        <!-- end of center -->
  
      </section>

      <?php
      }
      ?>

      <?php include $_SERVER["DOCUMENT_ROOT"]."/gold/include/about.php" ?>
      <?php include $_SERVER["DOCUMENT_ROOT"]."/gold/include/footer.php" ?>

    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="/gold/js/custom.js"></script>
    <script src="/gold/js/web_design_page.js"></script>
    <script src="/gold/js/admin.js"></script>
   
  </body>
</html>
