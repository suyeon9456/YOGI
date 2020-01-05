const more_detail = document.getElementById("more_details");
function show_all() {
  const pices = document.getElementsByClassName("jnj2");
  const size = pices.length;
  let toggle_detail = more_detail.getElementsByTagName("span");
  if (toggle_detail[0].textContent == "사진 모두보기") {
    for (var i = 0; i < size; i++) {
      pices[0].className = "jnj";
    }
    toggle_detail[0].innerHTML = "사진 접어두기";
  } else {
    let jnjs = document.getElementsByClassName("jnj");
    let jnj_size = jnjs.length;
    for (var i = 8; i < jnj_size; i++) {
      jnjs[8].className = "jnj2";
    }
    toggle_detail[0].innerHTML = "사진 모두보기";
  }
}
//*******카카오 지도 구현
var container = document.getElementById("map");
var options = {
  center: new kakao.maps.LatLng(33.450701, 126.570667),
  level: 4
};
var map = new kakao.maps.Map(container, options); 

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);


//***********후기 더보기
function show_all_mention() {
  const pices = document.getElementsByClassName("mention2");
  const size = pices.length;
  const more_comments = document.getElementById("more_comments");
  let toggle_detail = more_comments.getElementsByTagName("span");
  if (toggle_detail[0].textContent == "후기 모두보기") {
    for (var i = 0; i < size; i++) {
      pices[0].className = "mention1";
    }
    toggle_detail[0].innerHTML = "후기 접어두기";
  } else {
    let jnjs = document.getElementsByClassName("mention1");
    let jnj_size = jnjs.length;
    for (var i = 8; i < jnj_size; i++) {
      jnjs[8].className = "mention2";
    }
    toggle_detail[0].innerHTML = "후기 모두보기";
  }
}
