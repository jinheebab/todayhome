<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.mainpic{
	width:100%;
	height: 70%;
	overflow: hidden;
}
.title {
	font-weight: bold;
	font-size: 2.2em;
	font-family: 나눔고딕;
	line-height: 1.3em;
}

.location {
	font-size: 1.5em;
	color: grey;
}

.line {
	padding-top: 2%;
	border-bottom-style: solid;
	border-bottom-width: 1.5px;
	border-bottom-color: black;
	margin-top: 10px;
}

.point1 {
	background-image: url('/icon/star_off.png');
	width: 120px;
	height: 30px;
}

.point2 {
	overflow: hidden;
	width: ${score}%;

}
.point2_r{
	overflow: hidden;
}
.icon {
	width: 60px;
	height: 60px;
}
.font1{
	font-size: 1.2em;
	line-height: 1.9em;
}
.font2{
	font-size: 1.7em;
}
.font3{
	font-size: 0.7em;
}
.profile{
	overflow: hidden;
	width: 70px;
	height: 70px;
	border-radius: 50%;

}
.btn{
	background-color: white;
	border-style: solid;
	border-width:3px;
	border-color: black;
	font-weight: bold;
}
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>

<div class="mainpic">
<div><img src="${list[0].PICURL}" width="1600px" height="800px" ></div>
</div>
	<div style="padding-top: 5%; margin: 0 250; padding-right: 25px; padding-left: 25px;">
	<c:forEach var="i" items="${list}">
		<span class="title">${i.TITLE}</span>
		<br />
		
			<div class="row" >
	<div class="col-md-8">
		<div class="location">${i.COUNTRY}, ${i.CITY} <span style="font-size: 0.8em;">${i.CATEGORY}</span>
			<div class="point1">
				<div class="point2">
					<img src="/icon/star_on.png" width="120px" height="30px">
				</div>
			</div>
		</div>
		</div>
		
	
		<div class="col-md-4 font1" align="center">
		<div class="profile">
		<img src="${uphoto.FILELINK}" width="70px"  >
		</div>
			<a href="/view/message/send?id=${i.HNAME}">${i.HNAME}</a> 
		</div>
		</div>

		<hr class="line" />
		<div class="row" align="center">
			<div class="col-md-3">
				<img src="/icon/htype.png" class="icon">
			</div>
			<div class="col-md-3">
				<img src="/icon/bedcnt.png" class="icon">
			</div>
			<div class="col-md-3">
				<img src="/icon/membercnt.png" class="icon">
			</div>
			<div class="col-md-3">
				<img src="/icon/bathcnt.png" class="icon">
			</div>
		</div>
		
		<div class="row font1" align="center" >
		<div class="col-md-3">
		${i.HTYPE}[${i.RTYPE}(${i.ROOMCNT}개)]
		</div>
		<div class="col-md-3" >
		침대 ${i.BEDCNT}개
		</div>
		<div class="col-md-3">
		인원 ${i.MEMBERCNT}명
		</div>
		<div class="col-md-3">
		욕실 ${i.BATHCNT}개
		</div>
		</div>
		<hr />
		<div class="font2">상세설명</div>
		<hr />
		<!-- 숙소 -->
		<div class="row font1">
		<div class="col-md-4" style="font-weight: bold;" >
		숙소
		</div>
		<div class="col-md-4">
		집 유형: ${i.HTYPE}<br/>
		숙박 가능 인원: ${i.MEMBERCNT}<br/>
		방 개수: ${i.ROOMCNT}<br/>
		침대 개수: ${i.BEDCNT}<br/>
		</div>
		<div class="col-md-4">
		체크인: ${i.STARTDATE}<br/>
		체크아웃: ${i.ENDDATE}<br/>
		</div>
		</div>
		<hr />
		<!-- 시설 -->
		<div class="row font1">
		<div class="col-md-4"  style="font-weight: bold;">
		편의
		</div>
		<div class="col-md-8">
		${i.AMENITY}<br/>
		</div>

		</div>
		<hr />
		<!-- 가격 -->
		<div class="row font1">
		<div class="col-md-4"  style="font-weight: bold;">
		가격
		</div>
		<div class="col-md-4">
		주중 ${i.PRICE}원
		</div>
		<div class="col-md-4">
		주말 ${i.PRICE+20000}원
		</div>
		</div>
		
		<hr />
		<!-- 설명 -->
		<div class="row font1">
		<div class="col-md-4"  style="font-weight: bold;">
		설명
		</div>
		<div class="col-md-8">
		${i.INTRO }
		</div>
		</div>
		<hr />
		<!-- 규칙 -->
		<div class="row font1">
		<div class="col-md-4"  style="font-weight: bold;">
		규칙
		</div>
		<div class="col-md-8">
		${i.RULE}
		</div>
		</div>
		
		<hr/>
		<div class="row font2">
		사진
		<hr/>
		</div>
		
		<div class="row" align="center">
	
		<c:forEach var="i" items="${hphoto}">
		<img src="${i.FILELINK}" width="70%">
		<br/><br/><br/>
		</c:forEach>
		</div>
		
	</c:forEach>

			<!-- 리뷰 -->
	<hr/>
	<div class="row">
	<div class="col-md-3">
	<div class="font2">후기 <span class="font3" >(${reviewcnt[0].CNT}개) 평균 ${score/10}점</span> </div>
	</div>
	<div class="col-md-5" align="left">
	
				<div class="point1">
				<div class="point2" >
					<img src="/icon/star_on.png" width="120px" height="30px">
				</div>
			</div>
	</div>
	<div class="col-md-4" align="right">
		<button id="myBtn" class="btn" type="button"><font color="black">후기 작성하기</font></button>
	</div>

	</div>
	<hr/>
	<c:choose>
		<c:when test="${review.size() gt 0 }">
		<c:forEach var ="i" begin="0" end="${review.size()-1}">
	<div class="row font1">
	<div class="col-md-1" align="center">
		<div class="profile">
		<img src="${reviewerphoto[i].FILELINK} " width="70px">
		</div>
	</div>
	<div class="col-md-11" >
		<b><a href="/view/message/send?id=${review[i].WRITER}"> ${review[i].WRITER}</a></b>
			<div class="point1">
				<div class="point2_r" style="width: ${review[i].GRADE*10}%;">
					<img src="/icon/star_on.png" width="120px" height="30px">
				</div>
			</div>
		
		${review[i].CONTENT}
		<hr/>
	</div>
	</div>
		</c:forEach>
		</c:when>
		<c:otherwise>
			<font color ="grey">등록된 후기가 없습니다.</font>
		</c:otherwise>
	</c:choose>
	
</div>
<div id="myModal" class="modal">
  <div class="modal-content"  >
    <span class="close">&times;</span>
    <form action="/view/main/addreview" >
      <h3>리뷰등록</h3><br/>
 <input type="text" name="id"/><br/>
  <button type="submit" class="btn" style="background-color: white; border-style: solid; border-color: orange; border-width: 2px;">등록</button>
  </form>
    </div>
    </div>





<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

