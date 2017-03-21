<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>


<h2 align="center">예약하기</h2>


<h4 align="center"><textarea rows="10" cols="50" id="reserveinfo" readonly="readonly"></textarea></h4>


<h2 align="center"><span id="total" class="label label-danger" name="total"></span></h2>

 <button id="ff" type="button" class="btn btn-primary">갱신</button>






<form action="/reservation/reserve02">

 
<p>체크인 <input type="text" id="sdate" name="startdate"> ~ 체크아웃 <input type="text" id="edate" name="enddate"></p>

  <script>
  
  var startdate = "${hostinglist.STARTDATE}";
  
  var enddate = "${hostinglist.ENDDATE}";
  
  var reservedate = "$hostinglist.RESERVEDATE";
  

     
  
  $.datepicker.regional['ko'] = {
		  minDate : startdate,
		  MaxDate : enddate,
		  changeMonth: true,
	      changeYear: true,		  
	      dateFormat: 'yy-mm-dd',
	    //  disabled: reservedate
  }
  
  $.datepicker.setDefaults($.datepicker.regional['ko']);
  
  $('#sdate').datepicker();
   $('#sdate').datepicker("option", "maxDate", $("#edate").val());
   $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
       $("#edate").datepicker( "option", "minDate", selectedDate );
   });

   $('#edate').datepicker();
   $('#edate').datepicker("option", "minDate", $("#sdate").val());
   $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
       $("#sdate").datepicker( "option", "maxDate", selectedDate );
   });
   
   
   
   
  </script>
  
  <h3 align="left"><input type="number" min="1" max="20" placeholder="1" id="people" name="membercnt">명</h3>
  
  
  <h4 align="center">호스트에게 간단한 자기소개를 하고 여행가는 이유를 알려주세요</h4>
  
  <h4 align="center"><textarea rows="10" cols="50" id="intro" name=intro></textarea></h4>
  
  <h4 align="center">이용수칙</h4>
  
  <h4 align="center"><textarea rows="10" cols="50" id="rule" readonly="readonly">안녕하세요</textarea></h4>
  
  
  
  
  
  <script>
  
  $('#ff').click(function(){
	  
	var date1 = new Date($("#sdate").datepicker("getDate"));
	var date2 = new Date($("#edate").datepicker("getDate"));
	
	var clean = 49999;
	
	var service = 29069;

	var reserve_time = date2 - date1;
	
	var reserve_time2 = reserve_time/86400000;
	
	var people = $('#people').val();
	
	var total = reserve_time2 * 50000 + clean + service + people*10000;
	
	var intro = $('#intro').val();

	$('#reserveinfo').html(reserve_time2 + "박 = " + 50000*reserve_time2 + "원" +'\n'+ "+ 청소비 = " + clean + "원"+ 
			'\n' + " + 서비스수수료 = " + service +"원" + '\n' + "+ 인원수 " + people + "명 = " + people*10000 + "원" + "\n" + "메세지 : " + intro);
	
	$('#total').html(total + "원");
	
	
	
		
	
	
	  
  });
</script>

 <button id="pay" type="submit" class="btn btn-primary">결제하기</button>
 

</form>
 
</body>
</html>