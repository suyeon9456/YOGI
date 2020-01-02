<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>숙소 상세정보</title>
    <link href="../../css/details.css" type="text/css" rel="stylesheet" />
  </head>
  <body>
    <!-- header -->
    <!-- content -->
    <div id="home_details">
      <!-- main -->
      <div id="main">
        <div id="main_wrap">
          <div id="headline">
            <div id="content">
              <div>
                <span>
                  로고
                </span>
              </div>
              <div>
                <span>
                  ${data.hName }
                </span>
              </div>
            </div>
          </div>
          <div
            id="main_img"
            style="background-image: url('../img/homes/${data.fileList}')"
          >
            <div id="btn_like">
              <button></button>
            </div>
          </div>
        </div>
      </div>

      <!-- explain & host -->
      <div id="host">
        <div id="explain">
          <div style="font-size: 16px; font-weight: 800;">
            <span>인원 ${data.vo.dPeople}명</span>
            <span>침실 ${data.vo.dBedroom}개</span>
            <span>침대 ${data.vo.dBed}개</span>
            <span>욕실 ${data.vo.dBathroom}개</span>
          </div>
          <div style="font-size: 18px;">
            ${data.hContent}
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="our-team">
                <div class="picture">
                  <img class="img-fluid" src="https://picsum.photos/130/130?image=1027">
                </div>
                <div class="team-content">
                  <h3 class="name">Michele Miller</h3>
                  <h4 class="title">HOST</h4>
                </div>
                <ul class="social">
                  <li><a href="https://codepen.io/collection/XdWJOQ/" class="fa fa-facebook" aria-hidden="true"></a></li>
                  <li><a href="https://codepen.io/collection/XdWJOQ/" class="fa fa-twitter" aria-hidden="true"></a></li>
                  <li><a href="https://codepen.io/collection/XdWJOQ/" class="fa fa-google-plus" aria-hidden="true"></a></li>
                  <li><a href="https://codepen.io/collection/XdWJOQ/" class="fa fa-linkedin" aria-hidden="true"></a></li>
                </ul>
              </div>
              </div>
            </div>
          </div>
        </div>
      <hr style="width: 95%; text-align: center; color: #484848;" />
      <!--사진 상세보기-->
      <div id="view_more">
        <div>
          <span style="font-size: 32px; font-weight: 800; color: #484848; margin-left: 8px;">이 숙소 둘러보기</span>
        </div>
        <div id="pictures">
          <c:forEach var="i" items="${data.fileList}" varStatus="status">
            <c:choose>
              <c:when test="${status.count < 9}">
                <div class="jnj">
                  <div class="up" style="background-image: url(${i.fPhoto}); background-repeat: no-repeat; background-color: salmon;">
                  </div>
                  <div class="down">
                    <span>${i.where}</span>
                  </div>
                </div>
              </c:when>
              <c:when test="${status.count > 8}">
                <div class="jnj2">
                  <div class="up" style="background-image: url(${i.fPhoto}); background-repeat: no-repeat; background-color: salmon;">
                  </div>
                  <div class="down">
                    <span>${i.where}</span>
                  </div>
                </div>
              </c:when>
            </c:choose>
          </c:forEach>
          <div class="jnj">
            <div class="up" style="background-image: url(); background-repeat: no-repeat; background-color: salmon;">
              
            </div>
            <div class="down">
              <span>거실</span>
            </div>
          </div>
          <div class="jnj">
            <div class="up" style="background-image: url(); background-repeat: no-repeat; background-color: salmon;">
              
            </div>
            <div class="down">
              <span>거실</span>
            </div>
          </div>
          <div class="jnj">
            <div class="up" style="background-image: url(); background-repeat: no-repeat; background-color: salmon;">
              
            </div>
            <div class="down">
              <span>거실</span>
            </div>
          </div>
          <div class="jnj">
            <div class="up" style="background-image: url(); background-repeat: no-repeat; background-color: salmon;">
              
            </div>
            <div class="down">
              <span>거실</span>
            </div>
          </div>
          <div class="jnj">
            <div class="up" style="background-image: url(); background-repeat: no-repeat; background-color: salmon;">
              
            </div>
            <div class="down">
              <span>거실</span>
            </div>
          </div>
          <div class="jnj">
            <div class="up" style="background-image: url(); background-repeat: no-repeat; background-color: salmon;">
              
            </div>
            <div class="down">
              <span>거실</span>
            </div>
          </div>
          <div class="jnj">
            <div class="up" style="background-image: url(); background-repeat: no-repeat; background-color: salmon;">
              
            </div>
            <div class="down">
              <span>거실</span>
            </div>
          </div>
          <div class="jnj2">
            <div class="up" style="background-image: url(); background-repeat: no-repeat; background-color: salmon;">
              
            </div>
            <div class="down">
              <span>거실</span>
            </div>
          </div>
        </div>
        <div id="more_details">
          <span style="font-size: 16px; font-weight: 800; color:#914669; margin-left: 8px; cursor: pointer;" onclick="show_all()">사진 모두보기</span>
        </div>
      </div>
      <!--편의시설-->
      <div id="facilities">
        <div>
          <span style="font-size: 32px; font-weight: 800; color: #484848; margin-left: 8px;">편의시설</span>
        </div>
        <div>
          <span style="font-size: 18px; font-weight: 800; color: #484848; margin-left: 8px;">회원님이 이용하실 수 있는 편의시설입니다.</span>
        </div>
        <div id="details">
          <c:choose>
            <c:when test="${data.vo.dSelfcheckin eq y}">
              <div class="f_detail">
                <div class="picture">
                  <img  src="../../img/facilities/self-check-in.png" style="width: 100%;">
                </div>
                <div class="title">
                  셀프 체크인
                </div>
              </div>
            </c:when>
            <c:when test="${data.vo.dParking eq y}">
              <div class="f_detail">
                <div class="picture">
                  <img  src="../../img/facilities/parking.png" style="width: 100%;">
                </div>
                <div class="title">
                  건물 내 무료주차
                </div>
              </div>
            </c:when>
            <c:when test="${data.vo.dKitchen eq y}">
              <div class="f_detail">
                <div class="picture">
                  <img  src="../../img/facilities/kitchen.png" style="width: 100%;">
                </div>
                <div class="title">
                  주방
                </div>
              </div>
            </c:when>
            <c:when test="${data.vo.dWasher eq y}">
              <div class="f_detail">
                <div class="picture">
                  <img  src="../../img/facilities/washer.png" style="width: 100%;">
                </div>
                <div class="title">
                  세탁기
                </div>
              </div>
            </c:when>
            <c:when test="${data.vo.dAc eq y}">
              <div class="f_detail">
                <div class="picture">
                  <img  src="../../img/facilities/heating.png" style="width: 100%;">
                </div>
                <div class="title">
                  냉난방기
                </div>
              </div>
            </c:when>
            <c:when test="${data.vo.dWifi eq y}">
              <div class="f_detail">
                <div class="picture">
                  <img  src="../../img/facilities/wireless-internet.png" style="width: 100%;">
                </div>
                <div class="title">
                  WIFI
                </div>
              </div>
            </c:when>
            <c:when test="${data.vo.dTv eq y}">
              <div class="f_detail">
                <div class="picture">
                  <img  src="../../img/facilities/tv.png" style="width: 100%;">
                </div>
                <div class="title">
                  TV
                </div>
              </div>
            </c:when>
            <c:when test="${data.vo.dAmenity eq y}">
              <div class="f_detail">
                <div class="picture">
                  <img  src="../../img/facilities/essentials.png" style="width: 100%;">
                </div>
                <div class="title">
                  욕실용품
                </div>
              </div>
            </c:when>
            <c:when test="${data.vo.dHdrier eq y}">
              <div class="f_detail">
                <div class="picture">
                  <img  src="../../img/facilities/hair-dryer.png" style="width: 100%;">
                </div>
                <div class="title">
                  헤어드라이어
                </div>
              </div>
            </c:when>
          </c:choose>
          <div class="f_detail">
            <div class="picture">
              <img  src="../../img/facilities/extra-pillows-blankets.png" style="width: 100%;">
            </div>
            <div class="title">
              침구
            </div>
          </div>
        </div>
      </div>
      <hr style="width: 95%; text-align: center; color: #484848;" />
      <!--위치-->
      <div id="location">
        <div>
          <span style="font-size: 32px; font-weight: 800; color: #484848; margin-left: 8px;">위치</span>
        </div>
        <div style="margin-bottom: 40px;">
          <span style="font-size: 18px; font-weight: 800; color: #767676; margin-left: 8px;">${data.hAddress}</span>
        </div>
        <div class="l_explain">
          ${data.hLocation}
          <input type="text" value="${data.hLatitude}" id="latitude"/>
          <input type="text" value="${data.hLongitude}" id="longitude"/>
        </div>
        <!--지도-->
        <div id="map_wrapper">
          <div id="map">

          </div>
        </div>
        <div class="l_explain" style="margin: 50px 0;">
          정확한 위치는 예약 완료 후 표시됩니다
        </div>
      </div>
      <hr style="width: 95%; text-align: center; color: #484848;" />
      <!--후기-->
      <!--후기글이 길 때 더보기 클릭시 확장-->
      <div id="comments">
        <div style="margin-bottom: 60px;">
          <span style="font-size: 32px; font-weight: 800; color: #484848; margin-left: 8px;">후기</span>
        </div>
        <div id="mentions">
          <c:forEach var="i" items="${data.commentsList}" varStatus="status">
            <c:choose>
              <c:when test="${status.count < 7}">
                <div class="mention1">
                  <div class="up1">
                    <div style="font-size: 16px; font-weight: bold;">${i.cEmail}</div>
                    <div style="font-size: 14px;">${i.cDate}</div>
                  </div>
                  <div class="down1">
                    ${i.cContent}
                  </div>
                </div>
              </c:when>
              <c:when test="${status.count > 6}">
                <div class="mention2">
                  <div class="up1">
                    <div style="font-size: 16px; font-weight: bold;">${i.cEmail}</div>
                    <div style="font-size: 14px;">${i.cDate}</div>
                  </div>
                  <div class="down1">
                    ${i.cContent}
                  </div>
                </div>
                <div id="more_comments">
                  <span style="font-size: 16px; font-weight: 800; color:#914669; margin-left: 8px; cursor: pointer;" onclick="show_all_mention()">후기 모두보기</span>
                </div>
              </c:when>
            </c:choose>
          </c:forEach>
        </div>
      </div>
      <hr style="width: 95%; text-align: center; color: #484848;" />
      <!--호스트 소개-->
      <div id="who">
        <div style="margin-bottom: 60px;">
          <span style="font-size: 32px; font-weight: 800; color: #484848; margin-left: 8px;">호스트를 소개합니다</span>
        </div>
        <div id="meet-host">
          <div id="host_photo">
            <div id="img">
              <img alt="" src="https://via.placeholder.com/250x250" >
            </div>
            <div id="host_name">
              ${data.hEmail}
            </div>
          </div>
          <div id="host_info">
            <div style="font-weight: bold; margin-bottom: 30px; margin-top: 10px;">
              안녕하세요. 저는 ${data.hEmail}입니다.
            </div>
            <div style="margin-bottom: 60px;">
              ${data.hEmail}
            </div>
            <div style="font-weight: bold; margin-bottom: 30px;">
              게스트와의 교류
            </div>
            <div >
              호스트가 숙소에 상주하지는 않지만 <br/>게스트가 숙박하는 동안 필요한 도움을 제공할 수 있습니다.
            </div>
          </div>
          <div id="host_info_2">
            <div style="margin-top: 10px;">
              회원가입일 : ${data.hEmail}
            </div>
            <div>
              응답률 : 100%
            </div>
            <div>
              응답시간 : 1시간 이내
            </div>
          </div>
        </div>
      </div>
      <hr style="width: 95%; text-align: center; color: #484848;" />
      <!--숙소 이용규칙-->
      <div id="rule">
        <div style="margin-bottom: 60px;">
          <span style="font-size: 32px; font-weight: 800; color: #484848; margin-left: 8px;">숙소 이용규칙</span>
        </div>
        <div>
          <div>
            예약시 호스트가 정한 숙소 이용규칙에 동의하셔야 합니다.
          </div>
          <ul>
            <li>체크인 : ${data.vo.dCheckin}</li>
            <li>체크아웃 : ${data.vo.dCheckout}</li>
          </ul>
        </div>
      </div>
      <!--환불정책-->
      <div></div>
    </div>
  </body>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bc48e45438f857c2a644f3be69b5b9b5"></script>
  <script src = "../../js/details.js"></script>
</html>
