<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">


$(document).ready(function() {
	// ------------6주차--------------
	/* $("#infoBtId").css("border", "8px solid #ff0000");
	$("div>button#primaryBtId").css("border", "8px solid #ff0000");
	$("#defaultBt2Id").html("텍스트 가능");
	$("#html>button").html("유후");
	$("[class=title]").html("잡았다 요놈")
	
	var $hanq = $("#defaultBtId");
	$hanq.css("border", "8px solid #ff0000");
	$hanq.html("텍스트 입니다");
	
	// $("[class*=btn-fill]").css("border", "8px solid #ff0000");
	
	var $jList = $("#html>button");
	// 몇 번째 노드를 설정
	var jList2 = $jList.eq(4);
	jList2.css("border", "8px solid #ff0000");
	
	// 버튼의 개수만큰 for문
	// this를 제이쿼리 안에 쓴 이유? this 객체를 제이쿼리메서드로 쓰기 위해서
	$("#html button").each(function(index) {
		$(this).html("포포포문");
	});
	
	var duGGe = 0;
	$("#html button").each(function(index) {
		duGGe = (index+1)*2;
		$(this).css("border", duGGe+"px solid #ff0000")
	});
	
	// html 앞에 까지 .
	// 유용하지만 느려짐 (DOM 객체를 모두 찾기때문에)
	$("#html").find("#defaultBtId").html("파인드");
	
	$("#html button").click(function() {
		alert($(this).index());
	}); */
	
	// ------------7주차--------------
	// children 함수
	//$("#html").children().css("border", "8px solid #ff0000");
	
	// 자식들 중 4번째를 바꿔라.
	//$("#html").children().eq(3).css("border", "8px solid #ff0000");
	//$("#html").children(":eq(3)").css("border", "8px solid #ff0000");
	// 다른 방법
	//$("#html>button").eq(3).css("border", "8px solid #ff0000");
	//$("#html button").eq(3).css("border", "8px solid #ff0000");		//띄우는 방식을 더 많이 씀
	
	// contenet 라는 클래스 이름을 가진 자식노드 중에 두번 째 자식의 css를 변경
	//$(".content").find(":eq(1)").css("border", "8px solid #ff0000");
	// find 와 children 이 헷갈릴 때가 온다.
	// 첫 번째
	//$(".content").find(":first").css("border", "8px solid #ff0000");
	// 마지막 (마지막 행에 행 추가할 때)
	//$(".content").find(":last").css("border", "8px solid #ff0000");
	// 부모노드
	//$("#html").parent().css("border", "8px solid #ff0000");
	// 조상노드
	//$("#html").parents().css("border", "8px solid #ff0000");
	// 특정 조상노드
	//$("#html").parents(".row").css("border", "8px solid #ff0000");
	// 형제노드 중 바로 이전 (같은 레벨에 있는 걸 형제노드) - 셀 병합할 때
	//$("#infoBtId").prev().css("border", "8px solid #ff0000");
	// 전전
	//$("#infoBtId").prev().prev().css("border", "8px solid #ff0000");
	// 이전 애들 다
	//$("#infoBtId").prevAll().css("border", "8px solid #ff0000");
	// find보다는 다른함수 쓰기!
	// 형제 노드 중 마지막것을 제외하고 나머지 css를 바꾸자
	//$("#html").children(":last").prevAll().css("border", "8px solid #ff0000");
	// prev 의 반대 next, nextAll
	
	/* var currentIndex = 0;
	var $jList = $("#html button");
	// 실시간으로 데이터를 가져오고 싶을 때
	var timerId = setInterval(function() {
		var $item = $jList.eq(currentIndex);
		//$item.removeClass();
		$item.css("border", "8px solid #ff0000");
		currentIndex++;
		if(currentIndex >= $jList.length) {
			clearInterval(timerId);
		}
	},1000); */
	
	// 맨 앞에 노드 추가
	/* $("#defaultBtId").click(function() {
		$("#html2").prepend("<button class='btn btn-danger btn-fill btn-wd'>Danger</button>")
	}); */
	// 맨 뒤에 노드 추가
	/* $("#defaultBtId").click(function() {
		$("#html2").append("<button class='btn btn-danger btn-fill btn-wd'>Danger</button>")
	}); */
	// 특정 노드 앞에 추가
	/* $("#defaultBtId").click(function() {
		$("#primaryBtId").before("<button class='btn btn-danger btn-fill btn-wd'>Danger</button>");
	}) */
	// 특정 노드 뒤에 추가
	/* $("#defaultBtId").click(function() {
		$("#primaryBtId").after("<button class='btn btn-danger btn-fill btn-wd'>Danger</button>");
	}) */
	
	// 노드 없애기
	/* $("#defaultBtId").click(function() {
		$("#primaryBtId").remove();
	}); */
	
	// 짝수만 없애기
	// : 객체를 주입
	/* $("#defaultBtId").click(function() {
		$("#html2 :even").remove();
	}); */
	
	// 홀수만 없애기
	/* $("#defaultBtId").click(function() {
		$("#html2 :odd").remove();
	}); */
	
	// 리터럴 방식
	// 속성 가져오기 * 중요
	/* $("#defaultBtId").click(function() {
		alert($("#primaryBtId").attr("class"));
	}); */
	
	// 한번만 이벤트 실행하기
	/* $("#defaultBtId").one("click", function() {
		alert($("#primaryBtId").attr("class"));
	}); */
	
	// 함수방식
	/* $("#defaultBtId").on("click", function() {
		alert($("#primaryBtId").attr("class"));
	}); */
	
	// 이벤트 죽이기
	/* $("#defaultBtId").off("click", function() {
		alert($("#primaryBtId").attr("class"));
	}); */
	
	// 이벤트 발생
	$("#defaultBtId").on("click", function() {
		$("#primaryBtId").trigger("click");
	});
	
	$("#primaryBtId").on("click", function() {
		alert("트리거");
	});
});

</script>
<form id="frm" name="frm">

</form>
<div class="row">
	<div class="content buttons-with-margin">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="header">
                                    <h4 class="title">Colors</h4>
                                </div>
                                <div class="content" id="html">
                                    <button class="btn btn-default btn-fill btn-wd" id="defaultBtId">Default</button>
                                    <button class="btn btn-primary btn-fill btn-wd" id="primaryBtId">Primary</button>
                                    <button class="btn btn-info btn-fill btn-wd" id="infoBtId">Info</button>
                                    <button class="btn btn-success btn-fill btn-wd">Success</button>
                                    <button class="btn btn-warning btn-fill btn-wd">Warning</button>
                                    <button class="btn btn-danger btn-fill btn-wd">Danger</button>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="header">
                                    <h4 class="title">Colors</h4>
                                </div>
                                <div class="content" id="html2">
                                    <button class="btn btn-default btn-fill btn-wd" id="defaultBtId">Default</button>
                                    <button class="btn btn-primary btn-fill btn-wd" id="primaryBtId">Primary</button>
                                    <button class="btn btn-info btn-fill btn-wd" id="infoBtId">Info</button>
                                    <button class="btn btn-success btn-fill btn-wd">Success</button>
                                    <button class="btn btn-warning btn-fill btn-wd">Warning</button>
                                    <button class="btn btn-danger btn-fill btn-wd">Danger</button>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="header">
                                    <h4 class="title">Styles</h4>
                                </div>
                                <div class="content">
                                    <button class="btn btn-wd" id="defaultBt2Id">Default</button>
                                    <button class="btn btn-fill btn-wd">Fill</button>
                                    <button class="btn btn-fill btn-round btn-wd">Fill + Round</button>
                                    <button class="btn btn-round btn-wd">Round</button>
                                    <button class="btn btn-simple btn-wd">Simple</button>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="header">
                                    <h4 class="title">Buttons with Label</h4>
                                </div>
                                <div class="content">
                                    <button type="button" class="btn btn-wd btn-success">
                                        <span class="btn-label">
                                            <i class="fa fa-check"></i>
                                        </span>
                                        Success
                                    </button>
                                    <button type="button" class="btn btn-wd btn-danger">
                                        <span class="btn-label">
                                            <i class="fa fa-times"></i>
                                        </span>
                                        Danger
                                    </button>
                                    <button type="button" class="btn btn-wd btn-info">
                                        <span class="btn-label">
                                            <i class="fa fa-exclamation"></i>
                                        </span>
                                        Info
                                    </button>
                                    <button type="button" class="btn btn-wd btn-warning">
                                        <span class="btn-label">
                                            <i class="fa fa-warning"></i>
                                        </span>
                                        Warning
                                    </button>
                                    <button type="button" class="btn btn-wd btn-default">
                                        <span class="btn-label">
                                            <i class="fa fa-arrow-left"></i>
                                        </span>
                                        Left
                                    </button>
                                    <button type="button" class="btn btn-wd btn-default">
                                        Right
                                        <span class="btn-label btn-label-right">
                                            <i class="fa fa-arrow-right"></i>
                                        </span>
                                    </button>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="header">
                                    <h4 class="title">Sizes</h4>
                                </div>
                                <div class="content">
                                    <button class="btn btn-lg btn-fill">Large</button>
                                    <button class="btn btn-fill">Default</button>
                                    <button class="btn btn-sm btn-fill">Small</button>
                                    <button class="btn btn-xs btn-fill">X-Small</button>
                                    <br>
                                    <button class="btn btn-round btn-lg btn-fill">Large</button>
                                    <button class="btn btn-round btn-fill">Default</button>
                                    <button class="btn btn-round btn-sm btn-fill">Small</button>
                                    <button class="btn btn-round btn-xs btn-fill">X-Small</button>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="header">
                                    <h4 class="title">Button Group</h4>
                                </div>
                                <div class="content">
                                    <div class="btn-group">
                                       <button type="button" class="btn btn-default">Left</button>
                                       <button type="button" class="btn btn-default">Middle</button>
                                       <button type="button" class="btn btn-default">Right</button>
                                    </div>

                                    <br><br>
                                    <div class="btn-group">
                                       <button type="button" class="btn btn-default">1</button>
                                       <button type="button" class="btn btn-default">2</button>
                                       <button type="button" class="btn btn-default">3</button>
                                       <button type="button" class="btn btn-default">4</button>
                                    </div>
                                    <div class="btn-group">
                                       <button type="button" class="btn btn-default">5</button>
                                       <button type="button" class="btn btn-default">6</button>
                                       <button type="button" class="btn btn-default">7</button>
                                    </div>
                                    <div class="btn-group">
                                       <button type="button" class="btn btn-default">8</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="header">
                                    <h4 class="title">Pagination</h4>
                                </div>
                                <div class="content">
                                    <ul class="pagination">
                                        <!--
                                            color-classes: "pagination-blue", "pagination-azure", "pagination-orange", "pagination-red", "pagination-green"
                                        -->
                                        <li><a href="#">«</a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li class="active"><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>
                                    <ul class="pagination pagination-no-border">
                                        <li><a href="#">«</a></li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li class="active"><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="header">
                            <h4 class="title">Social buttons</h4>
                        </div>
                        <div class="content">
                            <div class="row">
                                <div class="col-md-3 social-buttons-demo">
                                    <h4 class="title"><small> Filled </small></h4>
                                    <button class="btn btn-social btn-fill btn-twitter">
                                        <i class="fa fa-twitter"></i> Connect with Twitter
                                    </button><br>
                                    <button class="btn btn-social btn-fill btn-facebook">
                                        <i class="fa fa-facebook-square"></i> Share · 2.2k
                                    </button><br>
                                    <button class="btn btn-social btn-fill btn-google">
                                        <i class="fa fa-google-plus-square"></i> Share on Google+
                                    </button><br>
                                    <button class="btn btn-social btn-fill btn-linkedin">
                                        <i class="fa fa-linkedin-square"></i> Connect with Linkedin
                                    </button><br>
                                    <button class="btn btn-social btn-fill btn-pinterest">
                                        <i class="fa fa-pinterest"></i> Pint it · 212
                                    </button><br>
                                    <button class="btn btn-social btn-fill btn-youtube">
                                        <i class="fa fa-youtube-play"></i> View on Youtube
                                    </button><br>
                                    <button class="btn btn-social btn-fill btn-tumblr">
                                        <i class="fa fa-tumblr-square"></i> Repost
                                    </button><br>
                                    <button class="btn btn-social btn-fill btn-github">
                                        <i class="fa fa-github"></i> Connect with Github
                                    </button><br>
                                    <button class="btn btn-social btn-fill btn-behance">
                                        <i class="fa fa-behance-square"></i> Follow us
                                    </button><br>
                                    <button class="btn btn-social btn-fill btn-dribbble">
                                        <i class="fa fa-dribbble"></i> Find us on Dribbble
                                    </button><br>
                                    <button class="btn btn-social btn-fill btn-reddit">
                                        <i class="fa fa-reddit"></i> Repost · 232
                                    </button><br>
                                    <button class="btn btn-social btn-fill btn-stumbleupon">
                                        <i class="fa fa-stumbleupon"></i> View on StumbleUpon
                                    </button><br>
                                </div>
                                <div class="col-md-1 social-buttons-demo">
                                    <h4 class="title"><small>Light</small></h4>
                                    <button class="btn btn-social btn-round btn-twitter">
                                        <i class="fa fa-twitter"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-round btn-facebook">
                                        <i class="fa fa-facebook"> </i>
                                    </button><br>
                                    <button class="btn btn-social btn-round btn-google">
                                        <i class="fa fa-google-plus"> </i>
                                    </button><br>
                                    <button class="btn btn-social btn-round btn-linkedin">
                                        <i class="fa fa-linkedin"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-round btn-pinterest">
                                        <i class="fa fa-pinterest"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-round btn-youtube">
                                        <i class="fa fa-youtube"> </i>
                                    </button><br>
                                    <button class="btn btn-social btn-round btn-tumblr">
                                        <i class="fa fa-tumblr"> </i>
                                    </button><br>
                                    <button class="btn btn-social btn-round btn-github">
                                        <i class="fa fa-github"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-round btn-behance">
                                        <i class="fa fa-behance"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-round btn-dribbble">
                                        <i class="fa fa-dribbble"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-round btn-reddit">
                                        <i class="fa fa-reddit"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-round btn-stumbleupon">
                                        <i class="fa fa-stumbleupon"></i>
                                    </button><br>
                                </div>
                                <div class="col-md-1 social-buttons-demo">
                                    <h4 class="title"><small>Simple</small></h4>
                                    <button class="btn btn-social btn-simple btn-twitter">
                                        <i class="fa fa-twitter"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-facebook">
                                        <i class="fa fa-facebook-square"> </i>
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-google">
                                        <i class="fa fa-google-plus-square"> </i>
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-linkedin">
                                        <i class="fa fa-linkedin-square"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-pinterest">
                                        <i class="fa fa-pinterest"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-youtube">
                                        <i class="fa fa-youtube"> </i>
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-tumblr">
                                        <i class="fa fa-tumblr-square"> </i>
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-github">
                                        <i class="fa fa-github"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-behance">
                                        <i class="fa fa-behance"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-dribbble">
                                        <i class="fa fa-dribbble"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-reddit">
                                        <i class="fa fa-reddit"></i>
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-stumbleupon">
                                        <i class="fa fa-stumbleupon"></i>
                                    </button><br>
                                </div>
                                <div class="col-md-3 social-buttons-demo">
                                   <h4 class="title"><small>With Text</small></h4>
                                    <button class="btn btn-social btn-simple btn-twitter">
                                        <i class="fa fa-twitter"></i> Connect with Twitter
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-facebook">
                                        <i class="fa fa-facebook-square"></i> Share · 2.2k
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-google">
                                        <i class="fa fa-google-plus-square"></i> Share on Google+
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-linkedin">
                                        <i class="fa fa-linkedin-square"></i> Connect with Linkedin
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-pinterest">
                                        <i class="fa fa-pinterest"></i> Pint it · 212
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-youtube">
                                        <i class="fa fa-youtube-play"></i> View on Youtube
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-tumblr">
                                        <i class="fa fa-tumblr-square"></i> Repost
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-github">
                                        <i class="fa fa-github"></i> Connect with Github
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-behance">
                                        <i class="fa fa-behance-square"></i> Follow us
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-dribbble">
                                        <i class="fa fa-dribbble"></i> Find us on Dribbble
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-reddit">
                                        <i class="fa fa-reddit"></i> Repost · 232
                                    </button><br>
                                    <button class="btn btn-social btn-simple btn-stumbleupon">
                                        <i class="fa fa-stumbleupon"></i> View on StumbleUpon
                                    </button><br>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>