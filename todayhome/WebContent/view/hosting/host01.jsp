<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" ></script>
<script src="https://code.jquery.com/ui/1.8.18/jquery-ui.min.js" ></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	

<style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
.controls {
  margin-top: 10px;
  border: 1px solid transparent;
  border-radius: 2px 0 0 2px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  height: 32px;
  outline: none;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
}

#pac-input {
  background-color: #fff;
  font-family: Roboto;
  font-size: 15px;
  font-weight: 300;
  margin-left: 12px;
  padding: 0 11px 0 13px;
  text-overflow: ellipsis;
  width: 300px;
}

#pac-input:focus {
  border-color: #4d90fe;
}

.pac-container {
  font-family: Roboto;
}

#type-selector {
  color: #fff;
  background-color: #4d90fe;
  padding: 5px 11px 0px 11px;
}

#type-selector label {
  font-family: Roboto;
  font-size: 13px;
  font-weight: 300;
}


    </style>



</head>
<body>
		<h2>호스팅</h2>
		<p>${id}님안녕하세요! 호스팅 등록을 도와드리겠습니다</p>
		
		<div class="dropdown">
			<select id="htype" name="htype">
				<option value="allRoom">집전체</option>
				<option value="oneRoom">일인실</option>
				<option value="manyRoom">다인실</option>
			</select>
		</div>

		<div class="dropdown">
			<select id="people" name="people">

				<c:forEach begin="1" end="15" step="1" var="x" varStatus="status">
					<option value="room${x}">${x}인실</option>
					<c:if test="${not status.last}">
						<br>
					</c:if>
				</c:forEach>
			</select>
		</div>


<hr>



<h2>게스트가 묵을 방 유형</h2>

<div class="dropdown">
			<select id="rtype" name="rtype">
				<option value="allRoom">집전체</option>
				<option value="oneRoom">개인실</option>
				<option value="manyRoom">다인실</option>
			</select>
		</div>

<hr>


<h2>게스트가 묵을 방 개수</h2>

<input type="text" name="roomcnt" value="1" id="roomcnt" class="num"/>개

                  <button alt="" width="30" height="30" class="bt_up">+</button>
                  <button alt="" width="30" height="30" class="bt_down">-</button>
                  
<hr>



<script>

$(function(){ 
	  $('.bt_up').click(function(){ 
	    var n = $('#roomcnt').val();
	    
	    var num = Number(n)+Number('1');
	    
	    $('#roomcnt').val(num);
	    
	  });
	  
	  
	  $('.bt_down').click(function(){ 
		    var n = $('#roomcnt').val();
		    
		    var num = Number(n)-Number('1');
		    
		    $('#roomcnt').val(num);
		    
		  });
	
	
})

</script>

<h2>수용인원</h2>

			<input type="text" name="membercnt" value="1" id="membercnt" class="num"/>개

                  <button alt="" width="30" height="30" class="bt_up2">+</button>
                  <button alt="" width="30" height="30" class="bt_down2">-</button>
                  
 <hr>
 
 <script>
 
 
 $(function(){ 
	  $('.bt_up2').click(function(){ 
	    var n = $('#membercnt').val();
	    
	    var num = Number(n)+Number('1');
	    
	    $('#membercnt').val(num);
	    
	  });
	  
	  
	  $('.bt_down2').click(function(){ 
		    var n = $('#membercnt').val();
		    
		    var num = Number(n)-Number('1');
		    
		    $('#membercnt').val(num);
		    
		  });
	
	
})

</script>

<h2>침대개수</h2>

<input type="text" name="bedcnt" value="1" id="bedcnt" class="num"/>개

                  <button alt="" width="30" height="30" class="bt_up3">+</button>
                  <button alt="" width="30" height="30" class="bt_down3">-</button>
                  
 <script>

 $(function(){ 
	  $('.bt_up3').click(function(){ 
	    var n = $('#bedcnt').val();
	    
	    var num = Number(n)+Number('1');
	    
	    $('#bedcnt').val(num);
	    
	  });
	  
	  
	  $('.bt_down3').click(function(){ 
		    var n = $('#bedcnt').val();
		    
		    var num = Number(n)-Number('1');
		    
		    $('#bedcnt').val(num);
		    
		  });
	
	
})

</script>
<hr>

<h2>욕실개수</h2>

<input type="text" name="bathcnt" value="1" id="bathcnt" class="num"/>개

                  <button alt="" width="30" height="30" class="bt_up4">+</button>
                  <button alt="" width="30" height="30" class="bt_down4">-</button>
                  
 <script>

 $(function(){ 
	  $('.bt_up4').click(function(){ 
	    var n = $('#bathcnt').val();
	    
	    var num = Number(n)+Number('1');
	    
	    $('#bathcnt').val(num);
	    
	  });
	  
	  
	  $('.bt_down4').click(function(){ 
		    var n = $('#bathcnt').val();
		    
		    var num = Number(n)-Number('1');
		    
		    $('#bathcnt').val(num);
		    
		  });
	
	
})

</script>
<hr>
<h2>주소</h2>


<input id="pac-input" class="controls" type="text"
        placeholder="주소를 입력하세요">
    <div id="type-selector" class="controls">
      <input type="radio" name="type" id="changetype-all" checked="checked">
      <label for="changetype-all">All</label>

      <input type="radio" name="type" id="changetype-establishment">
      <label for="changetype-establishment">Establishments</label>

      <input type="radio" name="type" id="changetype-address">
      <label for="changetype-address">Addresses</label>

      <input type="radio" name="type" id="changetype-geocode">
      <label for="changetype-geocode">Geocodes</label>
    </div>
    <div id="map"></div>
    
    
    
    
    
     <script>
     
     function initMap() {
    	  var map = new google.maps.Map(document.getElementById('map'), {
    	    center: {lat: -33.8688, lng: 151.2195},
    	    zoom: 13
    	  });
    	  var input = /** @type {!HTMLInputElement} */(
    	      document.getElementById('pac-input'));

    	  var types = document.getElementById('type-selector');
    	  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
    	  map.controls[google.maps.ControlPosition.TOP_LEFT].push(types);

    	  var autocomplete = new google.maps.places.Autocomplete(input);
    	  autocomplete.bindTo('bounds', map);

    	  var infowindow = new google.maps.InfoWindow();
    	  var marker = new google.maps.Marker({
    	    map: map,
    	    anchorPoint: new google.maps.Point(0, -29)
    	  });

    	  autocomplete.addListener('place_changed', function() {
    	    infowindow.close();
    	    marker.setVisible(false);
    	    var place = autocomplete.getPlace();
    	    if (!place.geometry) {
    	      window.alert("Autocomplete's returned place contains no geometry");
    	      return;
    	    }

    	    // If the place has a geometry, then present it on a map.
    	    if (place.geometry.viewport) {
    	      map.fitBounds(place.geometry.viewport);
    	    } else {
    	      map.setCenter(place.geometry.location);
    	      map.setZoom(17);  // Why 17? Because it looks good.
    	    }
    	    marker.setIcon(/** @type {google.maps.Icon} */({
    	      url: place.icon,
    	      size: new google.maps.Size(71, 71),
    	      origin: new google.maps.Point(0, 0),
    	      anchor: new google.maps.Point(17, 34),
    	      scaledSize: new google.maps.Size(35, 35)
    	    }));
    	    marker.setPosition(place.geometry.location);
    	    marker.setVisible(true);

    	    var address = '';
    	    if (place.address_components) {
    	      address = [
    	        (place.address_components[0] && place.address_components[0].short_name || ''),
    	        (place.address_components[1] && place.address_components[1].short_name || ''),
    	        (place.address_components[2] && place.address_components[2].short_name || '')
    	      ].join(' ');
    	    }

    	    infowindow.setContent('<div><strong>' + place.name + '</strong><br>' + address);
    	    infowindow.open(map, marker);
    	  });

    	  // Sets a listener on a radio button to change the filter type on Places
    	  // Autocomplete.
    	  function setupClickListener(id, types) {
    	    var radioButton = document.getElementById(id);
    	    radioButton.addEventListener('click', function() {
    	      autocomplete.setTypes(types);
    	    });
    	  }

    	  setupClickListener('changetype-all', []);
    	  setupClickListener('changetype-address', ['address']);
    	  setupClickListener('changetype-establishment', ['establishment']);
    	  setupClickListener('changetype-geocode', ['geocode']);
    	}

		 
	 
	</script>

	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAK0WmkDko31qXUi_KV5kZNvtLwkKxePyU&libraries=places&callback=initMap"
        async defer></script>
        <hr>
 <h2>제공비품</h2>
    
    <textarea rows="3" cols="50" id="amenity" placeholder="제공비품을 입력하세요"></textarea>
    
    <hr>
 <h2>이용수칙</h2>
 
 	<textarea rows="3" cols="50" id="rule" placeholder="이용수칙을 입력하세요"></textarea>
 	<hr>
 <h2>게스트 자격조건</h2>
 
 	<textarea rows="3" cols="50" id="rule" placeholder="게스트 자격조건을 입력하세요"></textarea>
 	<hr>
<h2> 호스팅 기간: </h2> 

<input type="text" id="sdate"> ~
    <input type="text" id="edate">

	 	<script>
	 	    $.datepicker.regional['ko'] = {
	 	        closeText: '닫기',
	 	        prevText: '이전달',
	 	        nextText: '다음달',
	 	        currentText: '오늘',
	 	        monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
	 	        '7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
	 	        monthNamesShort: ['1월','2월','3월','4월','5월','6월',
	 	        '7월','8월','9월','10월','11월','12월'],
	 	        dayNames: ['일','월','화','수','목','금','토'],
	 	        dayNamesShort: ['일','월','화','수','목','금','토'],
	 	        dayNamesMin: ['일','월','화','수','목','금','토'],
	 	        weekHeader: 'Wk',
	 	        dateFormat: 'yy-mm-dd',
	 	        firstDay: 0,
	 	        isRTL: false,
	 	        showMonthAfterYear: true,
	 	        yearSuffix: '',
	 	        showOn: 'both',
	 	        buttonText: "달력",
	 	        changeMonth: true,
	 	        changeYear: true,
	 	        showButtonPanel: true,
	 	        yearRange: 'c-99:c+99',
	 	    };
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
	 	    
	 	    </br></br>
	 	    
	 	    <div style="height: auto; width: 100%; border:1px solid black;">
	 	    
	 	    <h2 align="center">지역별 평균금액</h2>
	 	    
	 	    <h2 align="center"><span id="findPrice" class="label label-danger"></span></h2>
	 	    
	 	    </br>
	 	    
	 	    <h3 align="center"><input type="text" id="city" placeholder="도시이름 입력"/></h3>
	 	    
	 	    
	 	    <h3 align="center"><input type="number" name="quantity" min="1" max="15" placeholder="인원수 입력" id="number">명</h3>

	 	    
	 	    
	 	    <h3 align="center"><button type="button" id="find" class="btn btn-success">가격검색</button></h3>
	 	    
	 	    <h2 align="center">위를 참고하시고 원하시는 가격을 입력해주세요</h2>
	 	    
	 	    <h3 align="center"><input type="number" name="quantity" min="1" max="1000000" placeholder="가격" id="price">원</h3>
	 	    
	 	    </div>
	 	    
	 	    <script>
	 	    
	 	    
	 	    $('#find').click(function(){
	 	    	
	 	    	var city = $('#city').val();
	 	    	var people = $('#number').val();
	 	    	var people2 = Number(people);
	 	    	
	 	    		 	    	
	 	    	$.ajax({
	 	            url:'/hosting/host02',
	 	            type:'post',
	 	            data: { "city" : city },
	 	            success: function(price){
	 	                
	 	                var total = Number(price) + people2 *10000;
	 	                
	 	                $('#findPrice').html(total+"원");
	 	                
	 	            }
	 	        });
	 	    	
	 	    	
	 	    });
	 	    
	 	    
	 	    
	 	    
	 	    
	 	    
	 	    </script>
	 	    
	 	    
	 	    
	 	    
	 	    
			
			</br></br>	    
	 
	 
	 
	 
	 <button type="button" class="btn btn-success" id="register">최종등록</button>
	   
	        
	     <script>
     
	  $('#register').click(function(){
		  
		  
	     
     var htype = $('#htype').attr('id').val();
     
     var rtype = $('#rtype').attr('id').val();
     
     var roomcnt = $('#roomcnt').attr('id').val();
     
     var membercnt = $('#membercnt').attr('id').val();
     
     var bedcnt = $('#bedcnt').attr('id').val();
     
     var bathcnt = $('#bathcnt').attr('id').val();
     
     var address = $('#pac-input').attr('id').val();
     
     var address2 = string.split(' ');
     
     var country = address2[0];
     
     var city = address2[2];
     
     var location = address2[3];
     
          
     var amenity = $('#amenity').attr('id').val();
     
     var rule = $('#rule').attr('id').val();
     
     var startdate = $('#sdate').attr('id').val();
     
     var enddate = $('#edate').attr('id').val();
     
     var price = $('#price').attr('id').val();
     
     var request ={
    	htype : htype,
    	rtype : rtype,
    	roomcnt : roomcnt,
    	membercnt : membercnt,
    	bedcnt : bedcnt,
    	bathcnt : bathcnt,
    	country : country,
    	city : city,
    	location : location,
    	amenity : amenity,
    	rule : rule,
    	startdate : startdate,
    	enddate : enddate,
    	price : price
    		 
     }

     $.ajax({
    	   type : "POST",
    	   url : "/hosting/host03",
    	   data : request,
    	   success : function(){
    		   alert('호스팅정보 등록성공');
    		   
    		   
    	   }
    	  }); 
     
     
     
	  });
     
     </script>
     
     
</body>
</html>
