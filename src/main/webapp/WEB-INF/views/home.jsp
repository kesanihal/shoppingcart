<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




<%-- <h1>Hello : ${name}</h1>
   
   <!--  if user logged in these links are not display-->
   
   <c:if test="${ empty successMsg}">
   <a href="login">Login</a><br>
<a href="registration">Register</a>
   </c:if>

<hr>
${successMsg}
${errorMSG }


<c:if test="${showloginpage}">
<jsp:include page="login.jsp"></jsp:include>
</c:if>
<c:if test="${not empty errorMSG}">
<jsp:include page="login.jsp"></jsp:include>
</c:if>


<c:if test="${showregistionpage}">
<jsp:include page="registration.jsp"></jsp:include></c:if> --%>
<div class="container" >

	<h1>Home Page</h1>
	<!--  if user logged in these liks are not display-->
	<c:if test="${ empty successMsg}">
		<a href="login">Login</a>
		<br>
		<a href="registration">Register</a>
		<a href="admin"> Admin</a>
	</c:if>
	

	<hr>
	${successMsg} ${errorMSG }


	<c:if test="${UserClickedLogin}">
		<jsp:include page="login.jsp"></jsp:include>
	</c:if>
	<c:if test="${not empty errorMSG}">
		<jsp:include page="login.jsp"></jsp:include>
	</c:if>


	<c:if test="${showregistionpage}">
		<jsp:include page="registration.jsp"></jsp:include></c:if>

	<c:if test="${showCategory}">
		<jsp:include page="category.jsp"></jsp:include></c:if>

	<c:if test="${showSupplierpage}">
		<jsp:include page="supplier.jsp"></jsp:include></c:if>

	<c:if test="${showProductpage}">
		<jsp:include page="product.jsp"></jsp:include></c:if>
		
		<c:if test="${showadminPage}">
		<jsp:include page="admin.jsp"></jsp:include></c:if>
		<c:if test="${Clickedcatproduct}">
      <jsp:include page="catproducts.jsp"></jsp:include></c:if> 
		
		<c:choose>
		<c:when test="${Clickedshowproduct}">
			<c:import url="/WEB-INF/views/ShowProduct.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
	<c:when test="${Clickedcatproduct}">
			<c:import url="/WEB-INF/views/catproducts.jsp"></c:import>
		</c:when>
	</c:choose>
	<!-- ########################################################################################### -->
	<c:forEach items="${productList}" var="product">
			<tr>


				<td>
					<!-- --<div class="thumbnail">-->
					<div class="col-md-4">
						<a href="ShowProduct/${product.id}"> <img height="150px"
							width="150px" alt="${product.id }"
							src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>

						<td><c:url var="action" value="addtocart/${product.id}"></c:url>
							<form:form action="${action}" modelAttribute="cart">
								<td id="td1"><c:out value="${product.name}" /><br>
								<td id="td1"><c:out value="${product.price}" /> <input
									type="submit" class="btn btn-primary" value="Add To Cart" /><br>
							</form:form></td>
						<br>

					</div>
			</tr>
			</td>
		</c:forEach>
	

</div>

</body>
</html>