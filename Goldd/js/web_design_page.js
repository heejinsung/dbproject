$(function () {
  //cutting text each boxes
  let designBox = $(".deWeBox");

  for (let i = 0; i < designBox.length; i++) {
    let allTxt = designBox.eq(i).find(".cutTxt").text();

    function cutTxt() {
      let winWidth = $(window).width();
      if (winWidth < 800) {
        designBox
          .eq(i)
          .find(".cutTxt")
          .text(allTxt.substr(0, 20) + " ...");
      } else {
        designBox
          .eq(i)
          .find(".cutTxt")
          .text(allTxt.substr(0, 60) + " ...");
      }
    }

    $(window).resize(function () {
      cutTxt();
    });
    cutTxt();
  }

  //load more design images when clicking load more button

  const designLoadMore = function () {
    $(".designBox").hide();
    $(".designBox").slice(0, 4).show();

    $(".designLoadMore").click(function (e) {
      e.preventDefault();
      $(".designBox:hidden").slice(0, 4).show(); //hidden은 5번째부터 0으로 시작
      if ($(".designBox:hidden").length == 0) {
        $(".designLoadMorev").hide(); //마지막이 되면 loadmore 버튼이 사라짐
      }
    });
  };

  designLoadMore();

  //load more web images when clicking load more button

  const webLoadMore = function () {
    $(".webBox").hide();
    $(".webBox").slice(0, 3).show();

    $(".webLoadMore").click(function (e) {
      e.preventDefault();
      $(".webBox:hidden").slice(0, 4).show(); //hidden은 5번째부터 0으로 시작
      if ($(".webBox:hidden").length == 0) {
        $(".webLoadMore").hide(); //마지막이 되면 loadmore 버튼이 사라짐
      }
    });
  };

  webLoadMore();

  //go to top
  $(".toTop").click(function () {
    $(".html,body").animate({ scrollTop: 0 }, 300);
  });
});
