<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="model.MessageDao"%>
<%@ page import="java.util.*"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript"
	src="./resources/lib/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="./resources/lib/jquery-ui.js"></script>




<div class="container" align="left">
	<h3>용건을 전달해드립니다.</h3>
	<ul class="nav nav-tabs">
		<li><a title="/view/message">받은 메시지</a></li>
		<li><a title="/view/sendlist">보낸 메시지</a></li>
		<!-- 		<li><a href="/view/send">전 송</a></li> -->
	</ul>
</div>

<%-- 	<c:forEach var="all" items="${send }">
		<tr>
			<td>${all.RECEIVER}</td>
			<td>${all.CONTENT}</td>
						<td>${all.CONTENT}</td>				
			<td><a href="/message/message?num=${all.NUM}"></a></td>
		</tr>
	</c:forEach> --%>

<form action="/view/sendcomp" method="post" name="send">

	${sender}

	<div class="container" align="left" class="col-md-8"
		style="width: 70%; margin-left: 1%;">
		<br />
		<p class="form-inline">
			<strong> 받는 분 </strong> <i> _ ID </i> <br /> <input type="text"
				name="receiver" id="writer" class="form-control"
				placeholder="RECEIVER" maxlength="50" onkeyup="chkword(this, 50)"/>
		</p>
		<ul class="nav nav-tabs"></ul>
		<br /> <strong> 내용 </strong> (<span id="counter"></span>) <br />
		<textarea rows="6" cols="60" id="content" class="form-control"
			placeholder="CONTENT" maxlength="500" onkeyup="chkword(this, 500)"
			style="resize: none;" name="content"></textarea>
		<div align="left">
			<br />
			<button type="submit" class="btn btn-primary btn-block"
				style="width: 35%" id="">전 송</button>
			<br />
			<ul class="nav nav-tabs"></ul>
			<br /> <br />
		</div>
	</div>
</form>

<!-- 스크립트 -->

<script type="text/javascript">
	$("a").click(function() {
		if ($("#content").val().length != 0) {
			if (window.confirm("작성중인 내용이 있습니다.\n취소하고 이동 하시겠습니까?")) {
				location.href = $(this).attr("title");
			}
		} else {
			location.href = $(this).attr("title");
		}
	});

	$(function() {
		$('#content').keyup(function(e) {
			var content = $(this).val();
//			$(this).height(((content.split('\n').length + 1) * 3.5) + 'em');
			$('#counter').html(content.length + '/500');
		});
		$('#content').keyup();
	});

	function chkword(obj, maxByte) {
		var strValue = obj.value;
		var strLen = strValue.length;
		var totalByte = 0;
		var len = 0;
		var oneChar = "";
		var str2 = "";

		for (var i = 0; i < strLen; i++) {
			oneChar = strValue.charAt(i);
			if (escape(oneChar).length > 4) {
				totalByte += 1;
			} else {
				totalByte++;
			}

			// 입력한 문자 길이보다 넘치면 잘라내기 위해 저장
			if (totalByte <= maxByte) {
				len = i + 1;
			}
		}

		// 넘어가는 글자는 자른다.
		if (totalByte > maxByte) {
			alert(maxByte + "자 이상 입력할 수 없습니다.");
			str2 = strValue.substr(0, len);
			obj.value = str2;
			chkword(obj, 4000);
		}
	}

	function inputLengthCheck(eventInput) {
		var inputText = $(eventInput).val();
		var inputMaxLength = $(eventInput).prop("maxlength");
		var j = 0;
		var count = 0;
		for (var i = 0; i < inputText.length; i++) {
			val = escape(inputText.charAt(i)).length;
			if (val == 6) {
				j++;
			}
			j++;
			if (j <= inputMaxLength) {
				count++;
			}
		}
		if (j > inputMaxLength) {
			$(eventInput).val(inputText.substr(0, count));
		}
	}
	

	
</script>






















