<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">
	
	var left = 
	{
		pageSubmitFn : function(pageName, action) {
			
			$("#pageName").val(pageName);
			$("#frm").attr("action", action);
			
			$("#signTrgNo").val("test");
			
			/* if(pageName == "welcomeWebMenu") {
				
				// form 태그의 속성중 anction 속성은 입력한 데이터를 해당 주소로 지정하는 역할
				$("#frm").attr("action", "welcomeWeb.do");	
			} else if(pageName == "mainMenu") {
				
				$("#frm").attr("action", "main.do");	
			} else if(pageName == "jqgridMenu") {
				
				$("#frm").attr("action", "jqgridP2.do");	
			} else if(pageName == "eju") {
				
				$("#frm").attr("action", "eju.do");	
			} else if(pageName == "eju2") {
				
				$("#frm").attr("action", "eju2.do");	
			} else if(pageName == "eju3") {
				
				$("#frm").attr("action", "eju3.do");	
			} else if(pageName == "eju4") {
				
				$("#frm").attr("action", "eju4.do");	
			} else if(pageName == "six1") {
				
				$("#frm").attr("action", "six.do");	
			} else if(pageName == "myMenu") {
				
				$("#frm").attr("action", "myMenu.do");	
			} else if(pageName == "bootstrap") {
				
				$("#frm").attr("action", "bootstrap.do");	
			} else if(pageName == "boot2") {
				
				$("#frm").attr("action", "eju6.do");	
			} else if(pageName == "uploadMenu") {
				
				$("#frm").attr("action", "uploadStart.do");	
			} else if(pageName == "registerMenu") {
				
				$("#frm").attr("action", "register.do");
			} */
			
			// 입력한 데이터를 전송하는 역할
			$("#frm").submit();
		}
	}
	
	$(document).ready(function(){
		// 메인메뉴 가져오기
		fnFindMainMenu();
		var pageName = "<c:out value="${param.pageName}"/>";
	      
	    $(".nav li").removeClass("active");//이전 활성화 초기화      
	    $("#"+pageName).addClass("active");//현재 메뉴 활성화
	      
	    $("#"+pageName).closest('.collapse').addClass('in'); //하위메뉴 펼치기
	    $("#"+pageName).closest('.collapse').prev().attr('aria-expanded','true'); //화살표방향바꾸기   
		/* var pageName = "<c:out value="${param.pageName}"/>";
		
		$("[prop=menu]").removeClass("active");
		
		$("#"+pageName).addClass("active"); */
	});
	
	// 메인메뉴 조회
	function fnFindMainMenu() {
		$.ajax({
			
			type		: "POST",
			url			: "mainMenuList.do",
			async		: false,		// 디폴트는 true
			beforeSend	: function(xhr) {	// 컨트롤러 단으로 가기전까지 해야할 일
				
			},
			success 	: function(result) {
				var jsonRes = JSON.parse(result);
				$.each(jsonRes, function(i, item) {
					// 하위 메뉴가 있으면
					if(item.collapseYn == 'Y') {
						var strSubMenu = "";
						
						//서브 메뉴 가져오기
						strSubMenu = fnFindSubMenu(item.menuId);
						
						var strMenu2 = "";
                        
	                      strMenu2 += '<li prop="menu">'
	                                    + '<a data-toggle="collapse" href="#'+item.menuUrl+'">'
	                                       + '<i class="'+item.menuClass+'"></i>'
	                                       + '<p>'+item.menuNm
	                                          + '<b class="caret"></b>'
	                                       + '</p>'
	                                    + '</a>'
	                                    + '<div class="collapse" id="'+item.menuUrl+'">'
	                                     + '<ul class="nav" id="subMemu'+item.menuId+'">'
	                                        + strSubMenu
	                                     + '</ul>'
	                                  + '</div>'
	                                 + '</li>';
	                                    
	                      $("#targetMenu").append(strMenu2);
					} else {
                        
	                  var strMenu = "";
	                         
	                  strMenu += '<li prop="menu" class="active" id="menu' + item.menuId + '">'
	                                 + '<a href="#" onclick="javascript:left.pageSubmitFn(\'menu' + item.menuId + '\',\'' + item.menuUrl + '\')">'
	                                    + '<i class="' + item.menuClass + '"></i>'
	                                    + '<p>' + item.menuNm + '</p>'
	                                + '</a>'
	                           + '</li>';
	                                     
	                  $("#targetMenu").append(strMenu);
	               }
				});
			},
			error		: function() {
				alert("main menu 조회 시 Error 발생");
			}
		});
	}
	
	function fnFindSubMenu(menuId) {
		var subMenu = "";
		
		$.ajax({
			type		: "POST",
			url			: "subMenuList.do",
			data		: {"menuId":menuId},
			async		: false,	
			beforeSend	: function(xhr) {
				// 전송 전 Code
			},
			success    : function(result) {
                
	              var jsonRes = JSON.parse(result);
	           
	             $.each(jsonRes, function(i, item) {
	                
	                   subMenu += '<li id="menu'+item.menuId+'">'
	                            + '<a href="#" onclick="javascript:left.pageSubmitFn(\'menu' + item.menuId + '\',\'' + item.menuUrl + '\')">'
	                               + item.menuNm
	                            + '</a>'
	                         + '</li>';   
	              });
	           },
	        error      : function() {
	              
	              alert("sub menu 조회시 Error 발생");
	        }
		});
		
		return subMenu;
	}
</script>

<form id="frm" name="frm" method="post">
	<input type="hidden" id="pageName"  	name="pageName" />
	<!-- <input type="hidden" id="signTrgNo"  	name="signTrgNo" /> -->

	<input type="hidden" id="array" name="array" value="1" />
	<input type="hidden" id="array" name="array" value="2" />
	<input type="hidden" id="array" name="array" value="3" />
</form>

	<div class="sidebar" data-color="orange" data-image="images/bootstrap/kakao.PNG">
        <!--

            Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
            Tip 2: you can also add an image using data-image tag

        -->

        <div class="logo">
            <a href="http://www.creative-tim.com" class="logo-text">
                STUDY ROOM
            </a>
        </div>
		<div class="logo logo-mini">
			<a href="http://www.creative-tim.com" class="logo-text">
				CT
			</a>
		</div>

    	<div class="sidebar-wrapper">

            <div class="user">
                <div class="photo">
                    <img src="images/bootstrap/lion01.jpg" />
                </div>
                <div class="info">
                    <a data-toggle="collapse" href="#collapseExample" class="collapsed">
                        BBC
                        <b class="caret"></b>
                    </a>
                    <div class="collapse" id="collapseExample">
                        <ul class="nav">
                            <li><a href="#">My Profile</a></li>
                            <li><a href="#">Edit Profile</a></li>
                            <li><a href="#">Settings</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <ul class="nav" id="targetMenu">
                <!-- <li prop="menu" class="active" id="mainMenu">
                    <a href="#" onclick="javascript:left.pageSubmitFn('mainMenu')">
                        <i class="pe-7s-graph"></i>
                        <p>HOME</p>
                    </a>
                </li>
                <li>
                    <a data-toggle="collapse" href="#componentsExamples"  aria-expanded="true">
                        <i class="pe-7s-plugin"></i>
                        <p>난 정말 아무것도 몰라요
                           <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse in" id="componentsExamples">
                        <ul class="nav">
                            <li prop="menu" class="active" id="welcomeWebMenu"><a href="#" onclick="javascript:left.pageSubmitFn('welcomeWebMenu')">시작해봅시다.</a></li>
                            <li prop="menu" id="jqgridMenu"><a href="#" onclick="javascript:left.pageSubmitFn('jqgridMenu')">JQGRID</a></li>
                            <li prop="menu" id="eju"><a href="#" onclick="javascript:left.pageSubmitFn('eju')">mvcMaster</a></li>
                            <li prop="menu" id="eju2"><a href="#" onclick="javascript:left.pageSubmitFn('eju2')">mvcMaster2</a></li>
                            <li prop="menu" id="eju3"><a href="#" onclick="javascript:left.pageSubmitFn('eju3')">mvcMaster3</a></li>
                            <li prop="menu" id="eju4"><a href="#" onclick="javascript:left.pageSubmitFn('eju4')">mvcMaster4</a></li>
                            <li prop="menu" id="six1"><a href="#" onclick="javascript:left.pageSubmitFn('six1')">six1</a></li>
                        </ul>
                    </div>
                </li>
                
				<li>
                    <a data-toggle="collapse" href="#myExamples"  aria-expanded="true">
                        <i class="fa fa-smile-o"></i>
                        <p>레프트 메뉴
                           <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse in" id="myExamples">
                        <ul class="nav">
                            <li prop="menu" id="myMenu"><a href="#" onclick="javascript:left.pageSubmitFn('myMenu')">내가 만든 메뉴</a></li>
                            <li prop="menu" id="bootstrap"><a href="#" onclick="javascript:left.pageSubmitFn('bootstrap')">부트스트랩 연결</a></li>
                            <li prop="menu" id="boot2"><a href="#" onclick="javascript:left.pageSubmitFn('boot2')">6주 연결</a></li>
                        </ul>
                    </div>
                </li>
                
                <li prop="menu" id="uploadMenu">
                    <a data-toggle="collapse" href="#" onclick="javascript:left.pageSubmitFn('uploadMenu')">
                        <i class="pe-7s-note2"></i>
                        <p>업로드 할줄 안다고..
                           <b class="caret"></b>
                        </p>
                    </a>
                </li>

                <li>
                    <a data-toggle="collapse" href="#mapsExamples">
                        <i class="pe-7s-map-marker"></i>
                        <p>라디오 체크 마스터~
                           <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="mapsExamples">
                        <ul class="nav">
                            <li prop="menu"><a href="../maps/google.html">Google Maps</a></li>
                            <li prop="menu"><a href="../maps/vector.html">Vector Maps</a></li>
                            <li prop="menu"><a href="../maps/fullscreen.html">Full Screen Map</a></li>
                        </ul>
                    </div>
                </li>

                <li>
                    <a href="../charts.html">
                        <i class="pe-7s-graph1"></i>
                        <p>comming soon..</p>
                    </a>
                </li>

                <li>
                    <a href="../calendar.html">
                        <i class="pe-7s-date"></i>
                        <p>팝업 마스터</p>
                    </a>
                </li>

                <li>
                    <a data-toggle="collapse" href="#pagesExamples">
                        <i class="pe-7s-gift"></i>
                        <p>ready..
                           <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="pagesExamples">
                        <ul class="nav">
                            <li prop="menu" id="loginMenu"><a href="#">Login Page</a></li>
                            <li prop="menu" id="registerMenu"><a href="#" onclick="javascript:left.pageSubmitFn('registerMenu')">Register Page</a></li>
                            <li prop="menu"><a href="../pages/lock.html">Lock Screen Page</a></li>
                            <li prop="menu"><a href="../pages/user.html">User Page</a></li>
                            <li prop="menu"><a href="#">More coming soon...</a></li>
                        </ul>
                    </div>
                </li> -->
            </ul>
    	</div>
    </div>