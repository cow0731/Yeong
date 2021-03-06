<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">

$(document).ready(function() {
	// alert("a");
	var b = [1,2,3];
	
	// 콘솔이라는 객체에 로그라는 함수
	console.log('a의 첫번째 값은 '+b[0]+'이구요','b의 두번째 값은'+b[1]+'이구요','b의 세번째 값은'+b[2]+'이구요');
	var dataPreferences = {
			
	    series: [
	        [25, 30, 20, 25]
	    ]
	};

	var optionsPreferences = {
			
	    donut: true,
	    donutWidth: 40,
	    startAngle: 0,
	    height: "245px",
	    total: 100,
	    showLabel: false,
	    axisX: {
	        showGrid: false
	    }
	};

	Chartist.Pie('#chartPreferences', dataPreferences, optionsPreferences);

 	var contry = new Array();
	var percent = new Array();			

 	<c:forEach items="${pieChartList}" var="pieChartList" varStatus="status">
 		contry[<c:out value="${status.index}"/>] = ('<c:out value="${pieChartList.country}"/>');
		percent[<c:out value="${status.index}"/>] = ('<c:out value="${pieChartList.percent}"/>');
	</c:forEach> 
	
	Chartist.Pie('#chartPreferences', {
	  labels: contry,  //['러시아','이태리','57%']
	  series: percent   //[29, 14, 57]
	});
	
	// 선택한 요소 뒤에 값을 추가합니다.
	$(".text-info").after(contry[0]);
	$(".text-danger").after(contry[1]);
	$(".text-warning").after(contry[2]);
	
	$("tbody tr").click(function() {
		var idx = $(this).index();
		if(idx == 1) {
			alert("안녕하세요.");
		}
	});
});
 
</script>
<form id="frm" name="frm">

</form>
<div class="container-fluid">
	<div class="row">
    	<div class="col-md-6">
        	<div class="card">
            	<div class="header">
                       	가입한 유저의 국적 통계
                	<p class="category">Hanq Pie Chart</p>
                </div>
                <div class="content">
                	<div id="chartPreferences" class="ct-chart "></div>
                </div>
                <div class="footer">
                	<h6>Legend</h6>
                    	<i class="fa fa-circle text-warning"></i>
                        <i class="fa fa-circle text-danger"></i>
                        <i class="fa fa-circle text-info"></i>
                   </div>
               </div>
           	</div>
           	<div class="col-md-12">
               	<div class="card">
                   	<div class="header">
                       	<h4 class="title">테이블도 뭐 그렇게 어렵진 않아요.</h4>
                       	<p class="category">기본 확실하게 다져서 갑시다~</p>
                   	</div>
                   	<div class="content table-responsive table-full-width">
                       	<table class="table table-hover table-striped">
                           	<thead>
                               	<th>ID</th>
                           		<th>Name</th>
                           		<th>Salary</th>
                           		<th>Country</th>
                           		<th>City</th>
                           	</thead>
                           	<tbody>
                            	<c:forEach items="${welcomeWebList}" var="welcomeWebList" varStatus="status">
                            		<tr>
	                               		<td><c:out value="${welcomeWebList.id}"/></td>
	                               		<td><c:out value="${welcomeWebList.userName}"/></td>
	                               		<td><c:out value="${welcomeWebList.age}"/></td>
	                               		<td><c:out value="${welcomeWebList.country}"/></td>
	                               		<td><c:out value="${welcomeWebList.etc}"/></td>
	                               	</tr>
                            	</c:forEach>
                           	</tbody>
                       	</table>
                   </div>
               </div>
           </div>
       </div>
   </div>