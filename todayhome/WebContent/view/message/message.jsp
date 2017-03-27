<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

/* td, th {
	border: 1px solid #dddddd; /* ffffff  */
	text-align: left;
	padding: 8px;
} */

tr:nth-child(even) {
	background-color: #dddddd; /* dddddd  */
}
</style>

<div class="container" align="left">
	<h3>수신함</h3>
	<ul class="nav nav-tabs">
		<li><a href="/view/message">받은 메시지</a></li>
		<li><a href="/view/message/sendlist">보낸 메시지</a></li>
		<li><a href="/view/message/send">작성</a></li>

	</ul>
	<br />

	<table class="table">

		<thead>
			<tr>
				<th width="15%">보낸 사람</th>
				<th width="68%">내 용</th>
				<th width="17%">받은 시간</th>
			</tr>
		</thead>

		<c:forEach var="all" items="${board}">
			<tr>
				<td>${all.SENDER}</td>
				<td>${all.CONTENT}</td>
				<td><fmt:formatDate value="${all.WRITETIME }" pattern="yy-MM-dd [E- hh시 mm분]" /><br/>
<%-- 					<fmt:formatDate value="${all.WRITETIME }" pattern=" ( E요일 ) " /> --%></td>
			</tr>
		</c:forEach>
	</table>

	<br />
	<div align="left">
		<button style="width: 20%; font-size: 14px;"
			class="btn btn-primary btn-block"
			onClick="location.href='/view/message/send'">작 성</button>
	</div>
	<br />

	<ul class="nav nav-tabs"></ul>

	<ul class="pagination">
		<c:forEach begin="1" end="${board.size()/5+1}" step="1" var="page"
			varStatus="status">
			<li><a href="/view/message/paging?page=${page}">${page}</a></li>
		</c:forEach>
	</ul>

</div>

<br />
<br />

</body>
</html>