<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">

$(document).ready(function() {
	
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
});

</script>
<form id="frm" name="frm">

</form>
<%-- <div class="container-fluid">
	<div class="row">
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
   </div> --%>
  <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header text-center">
                                <h4 class="title">Table Big Boy</h4>
                                <p class="category">A table for content management</p>
                                <br />
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-bigboy">
                                    <thead>
                                        <tr>
                                            <th class="text-center">Thumb</th>
                                            <th >Blog Title</th>
                                            <th class="th-description">Description</th>
                                            <th class="text-right">Date</th>
                                            <th class="text-right">Views</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${eju6List}" var="eju6List" varStatus="status">
                                    		<tr>
                                    			<td>
                                                <div class="img-container">
                                                    <img src="images/bootstrap/yuk${status.index+1}.jpg" alt="...">
                                                </div>
	                                            </td>
	                                            <td class="td-name">
	                                               <c:out value="${eju6List.blogTitle}"/>
	                                            </td>
	                                            <td>
	                                                <c:out value="${eju6List.description}"/>
	                                            </td>
	                                            <td class="td-number"><c:out value="${eju6List.date}"/></td>
	                                            <td class="td-number">
	                                                <c:out value="${eju6List.views}"/>
	                                            </td>
	                                            <td class="td-actions">
	                                                <button type="button" rel="tooltip" data-placement="left" title="View Post" class="btn btn-info btn-simple btn-icon">
	                                                    <i class="fa fa-image"></i>
	                                                </button>
	                                                <button type="button" rel="tooltip" data-placement="left" title="Edit Post" class="btn btn-success btn-simple btn-icon">
	                                                    <i class="fa fa-edit"></i>
	                                                </button>
	                                                <button type="button" rel="tooltip" data-placement="left" title="Remove Post" class="btn btn-danger btn-simple btn-icon ">
	                                                    <i class="fa fa-times"></i>
	                                                </button>
	                                            </td>
                                    		</tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div><!--  end card  -->
                    </div> <!-- end col-md-12 -->
                </div> <!-- end row -->