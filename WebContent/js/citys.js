/**
 * city_list
 */

var mapContainer = document.getElementById("map");
	mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	
// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

//지도에 컨트롤을 추가해야 지도위에 표시됩니다
//kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

//지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

//마커가 표시될 위치
var markerPosition = new kakao.maps.LatLng(33.450701, 126.570667);

//마커 생성
var marker = new kakao.maps.Marker({
	position: markerPosition
});

//마커가 지도 위에 표시되도록 설정
marker.setMap(map);

//아래 코드는 지도 위의 마커를 제거하는 코드
//marker.setMafp(null);

//커스텀 오버레이 표시할 컨텐츠 제작하기
var content = '<div class="wrap">' + 
'    <div class="info">' + 
'        <div class="title">' + 
'            kaka 스페이스닷원' + 
'            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
'        </div>' + 
'        <div class="body">' + 
'            <div class="img">' +
'                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
'           </div>' + 
'            <div class="desc">' + 
'                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' + 
'                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
'                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
'            </div>' + 
'        </div>' + 
'    </div>' +    
'</div>';

//마커 위에 커스텀 오버레이를 표시
//마커를 중심으로 커스텀 오버레이를 표시하기 위해 css를 이용해 위치를 설정
var overlay = new kakao.maps.CustomOverlay({
	content : content,
	map: map,
    position: marker.getPosition()
});

//마커를 클릭했을 때 커스텀 오버레이를 표시
kakao.maps.event.addListener(marker, "click", function(){
	overlay.setMap(map);
});

//커스텀 오버레이를 닫기 위해 호출되는 함수
function closeOverlay(){
	overlay.setMap(null);
}

app.use(function (req, res, next) {
	  if (req.url && req.url.indexOf('.htm') > -1) {
	    res.header('Content-Type', 'text/html');
	  }
	  next();
	});
