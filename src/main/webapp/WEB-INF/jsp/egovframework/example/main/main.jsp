<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- taglib 지시어, 사용법 : c:forEach 같은 정의태그 -->
<script type="text/javascript">

/* var main = 
{
	controllerGoFn : function(gubun) {
		
		$("#param1").val("go1");
		$("#param2").val("go2");
		$("#param3").val($("#selectId").val());
		
		if(gubun == 1) {
			
			$("#frm").attr("action", "jqgridP.do");
			//$("#frm").attr("action", "jqgridPZero.do");
		} else {
			
			$("#frm").attr("action", "jqgridP2.do");
		}
		
		$("#frm").submit();
	},
	
	checkRadioFn : function() {
		
		$("#signTrgNo").val("test");
		
		$("#frmCR").attr("action", "checkRadioStart.do");
		
		$("#frmCR").submit();
	}
}

function controllerGoFn() {
	
	
} */

</script>

<form id="frm" name="frm">
	<input type="hidden" id="param1"  	name="param1" />
	<input type="hidden" id="param2"  	name="param2" />
	<input type="hidden" id="param3"  	name="param3" />
</form>

<form id="frmCR" name="frmCR">
	<input type="hidden" id="signTrgNo"  	name="signTrgNo" />
</form>
<div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Edit Profile</h4>
                            </div>
                            <div class="content">
                                <form>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Company (disabled)</label>
                                                <input type="text" class="form-control" disabled placeholder="Company" value="Creative Code Inc.">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>회원아이디</label>
                                                <input type="text" class="form-control" placeholder="Username" value="BBC">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">이메일 주소</label>
                                                <input type="email" class="form-control" placeholder="Email">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>이름</label>
                                                <input type="text" class="form-control" placeholder="Company" value="백소영">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>닉네임</label>
                                                <input type="text" class="form-control" placeholder="Last Name" value="네모">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>가입이유</label>
                                                <input type="text" class="form-control" placeholder="Home Address" value="모든걸 다 들어주겠다!">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>주소</label>
                                                <input type="text" class="form-control" placeholder="City" value="서울시 구로구 개봉동">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>상세주소</label>
                                                <input type="text" class="form-control" placeholder="Country" value="개봉푸르지오">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>우편번호</label>
                                                <input type="number" class="form-control" placeholder="ZIP Code">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>About Me</label>
                                                <textarea rows="5" class="form-control" placeholder="Here can be your description" value="Mike">회원가입쪽더 언젠가 세미나를 하긴 해야하는데~</textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <button type="submit" class="btn btn-info btn-fill pull-right">Update Profile</button>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <img src="images/bootstrap/full-screen-image-3.jpg" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                     <a href="#">
                                    <img class="avatar border-gray" src="images/bootstrap/lion.PNG" alt="..."/>

                                      <h4 class="title">백소영<br />
                                         <small>안녕하세요!</small>
                                      </h4>
                                    </a>
                                </div>
                                <p class="description text-center"> 저는 <br>
                                                    				백소영입니다. <br>
                                                    				ㅎㅎㅎ
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>

                            </div>
                        </div>
                    </div>

                </div>
<!-- <div>
	<span><a href="#" onclick="javascript:main.controllerGoFn(1)">일반그리드화면 버튼</a></span>
	<span><a href="#" onclick="javascript:main.controllerGoFn(2)">타일즈그리드화면 버튼</a></span>
</div>
<div>
	<span><a href="#" onclick="javascript:main.checkRadioFn()">체크와 라디오 마스터 버튼</a></span>
</div>
<div>
	<select id="selectId">
		<option value="A">이름</option>
		<option value="B">주소</option>
		<option value="C">ETC</option>
	</select>
</div> -->