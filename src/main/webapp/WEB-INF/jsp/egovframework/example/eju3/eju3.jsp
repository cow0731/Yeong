<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script>
	$.jgrid.defaults.width = 780;
</script>
<script type="text/javascript">
var jqgridTable = 
{
	
}

$(document).ready(function(){	

	var param1 = '${param.param1}';
	
	//alert(param1);
	//alert($("#param2").val());
	
});
</script>
<div class="row">
	<input type="hidden" id="param2" name="param2" value="${param.param2}"/>
	
	<ul>
		<c:forEach items="${jstlList}" var="resultList" varStatus="status" >
			<c:choose>
				<c:when test="${param.param3 eq 'A'}">
					<li>${resultList.name}</li>
				</c:when>
				<c:when test="${param.param3 eq 'B'}">
					<li>${resultList.address}</li>
				</c:when>
				<c:otherwise>
					<li>${resultList.etcc}</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>
</div>