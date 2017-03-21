<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style>
</head>
<body>

<div class="container">
  <h2>예약결과보기</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-default btn-lg" id="myBtn">예약결과</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> 예약정보</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> 예약자</label>
              <input type="text" class="form-control" id="usrname" value="${bookinfo.NAME}" readonly="readonly">
              
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> 인원수</label>
              <input type="text" class="form-control" id="usrname" value="${bookinfo.MEMBERCNT}" readonly="readonly">
              
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> 소개글</label>
              <input type="text" class="form-control" id="usrname" value="${bookinfo.INTRO}" readonly="readonly">
              
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> 체크인</label>
              <input type="text" class="form-control" id="usrname" value="${bookinfo.STARTDATE}" readonly="readonly">
              
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> 체크아웃</label>
              <input type="text" class="form-control" id="usrname" value="${bookinfo.ENDDATE}" readonly="readonly">
              
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> 결제방법</label>
              <input type="text" class="form-control" id="usrname" value="${bookinfo.PAYINFO}" readonly="readonly">
              
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> 결제회사</label>
              <input type="text" class="form-control" id="usrname" value="${bookinfo.COMPANY}" readonly="readonly">
            </div>
           
            
              <button class="btn btn-success btn-block" id="tomain"><span class="glyphicon glyphicon-off"></span> 메인화면으로</button>
              
              <script>
              
              	$('#tomain').click(function(){
              		
              		location.replace('/view');
              		
              	});
              
              </script>
        </div>
        
      </div>
      
    </div>
  </div> 
</div>
 
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>

</body>
</html>
