<?php

  //입력 데이터 전달 받아 저장
  $login_id=$_POST['loginId'];
  $login_pass=$_POST['loginPass'];

  echo $login_id, $login_pass;

  //데이터베이스 접속 후 조회 결과 회수
  include  $_SERVER['DOCUMENT_ROOT']."/Goldd/php_process/connect/db_connect.php";
  //GOLD_mem_id 컬럼 데이터가 $login_id 입력 데이터와 같은 값 조회
  $sql = "select * from gold_mem where GOLD_mem_id='$login_id'";

  $result = mysqli_query($dbConn, $sql); //명령어 실행은 mysqli
  $num_match = mysqli_num_rows($result);  

  //mysqli_fetch_array()
  // $row= mysqli_fetch_array($result);
  // $db_pass = $row['GOLD_mem_pass'];
  // $db_name = $row['GOLD_mem_name'];

  // echo $db_pass, $db_name;

  // !num_match -> match되는게 없으면 앞에!쓰기
  if(!$num_match){
    echo "
      <script>
        alert('등록되지 않은 아이디 입니다.');
        history.go(-1); //이전페이지로 돌아감
      </script> //id가 없을때 실행
    ";
  } else {//id가 있을경우 비밀번호 확인(데이터추출)
    $row = mysqli_fetch_array($result);
    $db_pass = $row['GOLD_mem_pass'];

    if($login_pass != $db_pass){
      echo "
      <script>
        alert('비밀번호가 틀립니다.');
        history.go(-1); //이전페이지로 돌아감
      </script> 
    ";
    } else {
      session_start();
      $_SESSION["userid"]=$row['GOLD_mem_id'];
      $_SESSION["userpoint"]=$row['GOLD_mem_point'];
      $_SESSION["userlevel"]=$row['GOLD_mem_level'];


      echo "
        <script>
          location.href='/Goldd/index.php';
        </script>
      ";
    }

    
  }
?>