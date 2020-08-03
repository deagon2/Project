<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>

<head>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c1172a908282d12c8eb6283ce9e4baaa&libraries=services"></script>


<style>


     
     <style>
	.customoverlay {position:relative;bottom:85px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;}
	.customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
	.customoverlay a {display:block;text-decoration:none;color:#000;text-align:center;border-radius:6px;font-size:10px;font-weight:bold;overflow:hidden;background: #d95050;background: #666666 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
	.customoverlay .title {display:block;text-align:center;background:#fff;margin-right:35px;padding:5px 5px;font-size:14px; font-weight:bold;}
	.customoverlay .body {display:block;text-align:center;background:#fff;margin-right:35px;padding:5px 5px;font-size:10px;font-weight:bold;}
 	.customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}

	.seat {width:15px;height:15px;}
	.seat {font-size: 13px;background-color: #555555;color: white;border: 1px solid rgba(255, 0, 0, 0.6);}
    .clicked {background-color:red;color:white;}
</style>


	<jsp:include page="/common/toolbar.jsp" />


<title>Insert title here</title>
</head>


<div id="map" style="width:100%;height:720px;"></div>
<script>
/* 자리예약  
	let test = [];
	let selectedSeats = new Array();
	let selectedSeatsMap = [];
	const seatWrapper = $(".seatAll");
	let clicked = '';
	let div = '';
	
	for (let i = 0; i < 10; i++) {
	    div = document.createElement('div');
	    seatWrapper.append(div);
	   
	    for (let j = 0; j < 10; j++) {
	        const input = document.createElement('input');
	        input.type = "button";
	        input.name = "seats"
	        input.classList = "seat";
	        
	        //3중포문을 사용하지 않기위해 
	     
	        mapping(input, i, j);
	        div.append(input);
	        inputClickEvent(input);
	    }
	    seat = document.querySelectorAll('.seat');   
	}
	        
	function inputClickEvent(input) {     
	        input.addEventListener('click', function(e) {
	            console.log(e.target.value);
	            //중복방지 함수
	            selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);
	
	            //click class가 존재할때(제거해주는 toggle)
	            if (input.classList.contains("clicked")) {
	                input.classList.remove("clicked");
	                clicked = document.querySelectorAll(".clicked");
	                selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
	                clicked.forEach((data) => {
	                    selectedSeats.push(data.value);
	                });
	                //click class가 존재하지 않을때 (추가해주는 toggle)
	            } else {
	                input.classList.add("clicked");
	                clicked = document.querySelectorAll(".clicked");
	                clicked.forEach((data) => {
	                    selectedSeats.push(data.value);
	                })
	            }
	            console.log(selectedSeats);
	        })
	    }
	}
	
	function mapping(input, i, j) {
	    if (i === 0) {
	        input.value = "1" + j;
	    } else if (i === 1) {
	        input.value = "2" + j;
	    } else if (i === 2) {
	        input.value = "3" + j;
	    } else if (i === 3) {
	        input.value = "4" + j;
	    } else if (i === 4) {
	        input.value = "5" + j;
	    } else if (i === 5) {
	        input.value = "6" + j;
	    } else if (i === 7) {
	        input.value = "7" + j;
	    }else if (i === 8) {
	        input.value = "8" + j;
	    }else if (i === 9) {
	        input.value = "9" + j;
	    }else if (i === 10) {
	        input.value = "10" + j;
	    }
	}
	자리예약 */

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};
	
	var bounds = new kakao.maps.LatLngBounds();    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	var imageSrc = '/resources/images/Buttonimages/maker.png', // 마커이미지의 주소입니다    
    imageSize = new kakao.maps.Size(65, 65), // 마커이미지의 크기입니다
    imageOption = {offset: new kakao.maps.Point(34, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

    var geocoder = new kakao.maps.services.Geocoder();
	
	if (navigator.geolocation) {
	    navigator.geolocation.getCurrentPosition(function(position) {
	    	var lat = position.coords.latitude, // 위도
	            lon = position.coords.longitude; // 경도
	        var locPosition = new kakao.maps.LatLng(lat, lon);	        
	        map.setCenter(locPosition);  
	    });
		} else {
			alert("현재위치정보를 가져오지못했습니다.")
	    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667);
		}
	
	
	function zoomIn() {
	    map.setLevel(map.getLevel() - 1);
	}

	// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomOut() {
	    map.setLevel(map.getLevel() + 1);
	}
	  
	function fran(	franName,franAddress,partnerName,franCost,franTotalSeat,
					cpu,gpu,keyboard,monitor,ram,nowSeat,franNo){
			$("#franName").text("매장이름 : "+franName);
			$("#franAddress").text("매장주소 : "+franAddress);
			$("#partnerName").text("프렌차이즈소속 :"+partnerName);
			$("#franCost").text("시간당 요금 :"+franCost);
			$("#franTotalSeat").text("총 좌석"+franTotalSeat);
			$("#cpu").text("CPU :"+cpu);
			$("#gpu").text("그래픽카드 :"+gpu);
			$("#keyboard").text("키보드 :"+keyboard);
			$("#monitor").text("모니터 :"+monitor);
			$("#ram").text("RAM :"+ram);
			$("#franNo").text(franNo);
			$("#nowSeat").text("사용중인 좌석"+nowSeat);
		}
			
$(document).ready(function(){
 			$.ajax({
	            type: 'POST',
	            url: '${pageContext.request.contextPath}/fran/rest/getFranInfo',
	            dataType: 'json',
	            success: function(result) {
	            	var response1 = result;
	            	console.log(response1.data); 
	            		
	            		$.ajax({ 
	            			type: 'POST',
	        	            url: '${pageContext.request.contextPath}/program/rest/getSeat',
	        	            dataType: 'json',
	        	            success: function(result) {
	        	            	var response2 = result;
	            					console.log(response2.data);
	            						
	        		 	// 마을 전체 리스트를 돌면서 마을 위치마다 마커 찍기
	        			$.each((response1.data,response2.data), function(index, value){
	        				// DB에서 주소를 불러와 geocoder를 이용해 좌표로 변환
	        				geocoder.addressSearch(response1.data[index].franAddress, function(result, status) {
	        					// 정상적으로 검색이 완료됐으면 
	        					if (status === kakao.maps.services.Status.OK) {
	        						var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
										
	        						
	        						// 마커를 생성합니다
	        						var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
	        						    marker = new kakao.maps.Marker({
	        						    position: coords,
	        						    image: markerImage
	        						});
	        						
	        						marker.setMap(map);
	        						var nowSeat 		= "'"+response2.data[index].nowSeat+"'";
	        						var franName 		= "'"+response1.data[index].franName+"'";
	        						var franAddress		= "'"+response1.data[index].franAddress+"'";
	        						var partnerName		= "'"+response1.data[index].partnerName+"'";
	        						var franCost 		= "'"+response1.data[index].franCost+"'";
	        						var franTotalSeat 	= "'"+response1.data[index].franTotalSeat+"'";
	        						var cpu 			= "'"+response1.data[index].cpu+"'";
	        						var gpu 			= "'"+response1.data[index].gpu+"'";
	        						var keyboard 		= "'"+response1.data[index].keyboard+"'";
	        						var monitor 		= "'"+response1.data[index].monitor+"'";
	        						var ram 			= "'"+response1.data[index].ram+"'";
	        						//히든처리			        						
	        						var franNo 			= "'"+response1.data[index].franNo+"'";
	        					    
	        						
	        					        	
	        					       		
	        						var content = '<div class="customoverlay">' +										
	        					    '  <a button type="button" data-toggle="modal" data-target="#exampleModalCenter"'+
	        					    '  onclick="fran('+franName+
	        					    				','+franAddress+
	        					    				','+partnerName+
	        					    				','+franCost+
	        					    				','+franTotalSeat+
	        					    				','+cpu+
	        					    				','+gpu+
	        					    				','+ram+
	        					    				','+keyboard+
	        					    				','+monitor+
	        					    				','+nowSeat+
	        					    				','+franNo+')">' +
	        					    '    <span class="title">'+response1.data[index].franName+'</span>'+
	        					    '	 <span class="body"> 좌석현황 '+response2.data[index].nowSeat+' / '+response1.data[index].franTotalSeat+'</span>'+
	        					    '  </a>'+
	        					    '</div>';

	        					 
	        					
	        						// 커스텀 오버레이 생성
	        						var customOverlay = new kakao.maps.CustomOverlay({
	        						    content: content,
	        						    map: map,
	        						    position: coords,
	        						    xAnchor: 0.5,
	        						    yAnchor: 2,
	        						    zIndex: 3
	        						});
	        					} 
	        				});
	        	
							});
	     				 }
					});
	            }
			});
		});	
		
</script>
<body>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <input type="hidden" id = "franNo"/>
        <div id="partnerName">프렌차이즈</div>
        <div id="franName"></div>
        <div id="franAddress"></div>
        <div id="franCost"></div>
        <div id="franTotalSeat"></div>
        <div id="nowSeat"></div>
        <div id="cpu"></div>
        <div id="gpu"></div>
        <div id="ram"></div>
        <div id="keyboard"></div>
        <div id="monitor"></div>
        <div class="seatAll">
        
        </div>
	    <div class="modal-footer">
	    
	    </div>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>



</body>
</html>


