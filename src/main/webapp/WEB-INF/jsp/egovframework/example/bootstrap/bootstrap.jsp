<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="//code.jquery.com/jquery.min.js"></script>

<script type="text/javascript">

	$(document).ready(function(){
		var intArr = new Array(3);
		
		for(var i=0; i<arr.length; i++) {
			intArr[i] = parseInt(arr[i]);
			if(intArr[i]!=2) {
				alert(intArr[i]);
			}
		}
	});
		<%  String[] arr = (String[])request.getAttribute("array"); %>
		var arr = new Array(<%= arr.length %>);
		<%  for( int i = 0; i < arr.length; i++) {%>
				arr[<%=i%>] = '<%=arr[i]%>';
		<%}%>
</script>

<form id="frm" name="frm">

</form>
<div class="container">
   <div class="row">
       <div class="col-md-6">
           <div class="panel">
               <header class="panel-heading">
                   <h2 class="panel-title">Striped rows</h2>
               </header>
               <div class="panel-body">
                    <table class="table table-striped">
                 <thead>
                    <tr>
                      <th>#</th>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>Username</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>@mdo</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>Thornton</td>
                      <td>@fat</td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Larry</td>
                      <td>the Bird</td>
                      <td>@twitter</td>
                    </tr>
                  </tbody>
                </table>
                </div>
            </div>
        </div><!--col end-->
        <div class="col-md-6">
           <div class="panel">
               <header class="panel-heading">
                   <h2 class="panel-title">Bordered table</h2>
               </header>
               <div class="panel-body">
				<table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>Username</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>@mdo</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>Thornton</td>
                      <td>@fat</td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Larry</td>
                      <td>the Bird</td>
                      <td>@twitter</td>
                    </tr>
                  </tbody>
                </table>
                </div>
            </div>
        </div><!--col end-->
    </div><!--row end-->
    <div class="row">
       <div class="col-md-6">
           <div class="panel">
               <header class="panel-heading">
                   <h2 class="panel-title">Hover rows</h2>
               </header>
               <div class="panel-body">
                    <table class="table table-hover">
                 <thead>
                    <tr>
                      <th>#</th>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>Username</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>@mdo</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>Thornton</td>
                      <td>@fat</td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Larry</td>
                      <td>the Bird</td>
                      <td>@twitter</td>
                    </tr>
                  </tbody>
                </table>
                </div>
            </div>
        </div><!--col end-->
        <div class="col-md-6">
           <div class="panel">
               <header class="panel-heading">
                   <h2 class="panel-title">Condensed table</h2>
               </header>
               <div class="panel-body">
                   <table class="table table-condensed">
                 <thead>
                    <tr>
                      <th>#</th>
                      <th>First Name</th>
                      <th>Last Name</th>
                      <th>Username</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>@mdo</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>Thornton</td>
                      <td>@fat</td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Larry</td>
                      <td>the Bird</td>
                      <td>@twitter</td>
                    </tr>
                  </tbody>
                </table>
                </div>
            </div>
        </div><!--col end-->
    </div><!--row end-->
</div><!--container end-->