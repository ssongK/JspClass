<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL sql01</title>
</head>

<sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/kcs_db" user="myUser" password="myUser1234" />
<sql:query var="rs" dataSource="${ds}">
select * from member
</sql:query>

<body>
	<table border="1">
		<tr>
			<c:forEach var="columnName" items="${rs.columnNames}">
				<th width="100">${columnName}</th>
			</c:forEach>
		</tr>
		
		<c:forEach items="${rs.rowsByIndex}" var="row">
		<tr>
			<c:forEach items="${row}" var="column">
			<td>
				<c:if test="${column != null}">
					<c:out value="${column}"/>
				</c:if>
				<c:if test="${column == null}">
					&nbsp;
				</c:if>
			</td>	
			</c:forEach>
		</tr>
		</c:forEach>	
	</table>
</body>
</html>