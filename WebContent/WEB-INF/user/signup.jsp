<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link
      href="https://fonts.googleapis.com/css?family=Roboto"
      rel="stylesheet"
      type="text/css"
    />
    <script src="https://apis.google.com/js/api:client.js"></script>
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          appId: "1005995036413873",
          cookie: true,
          xfbml: true,
          version: "v4.0"
        });

        FB.getLoginStatus(function(response) {
          statusChangeCallback(response);
        });
      };

      (function(d, s, id) {
        var js,
          fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {
          return;
        }
        js = d.createElement(s);
        js.id = id;
        js.src = "https://connect.facebook.net/ko_KR/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
      })(document, "script", "facebook-jssdk");

      FB.getLoginStatus(function(response) {
        statusChangeCallback(response);
      });

      function checkLoginState() {
        FB.getLoginStatus(function(response) {
          statusChangeCallback(response);
        });
      }

      function statusChangeCallback(response) {
        // Called with the results from FB.getLoginStatus().
        console.log("statusChangeCallback");
        console.log(response); // The current login status of the person.
        if (response.status === "connected") {
          // Logged into your webpage and Facebook.
          signinapi();
        }
      }
      function signinapi() {
        // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
        FB.api("/me", { fields: "name,email" }, function(response) {
          console.log("Successful login for: " + response.name);
          console.log("Successful login for: " + response.id);
          console.log("Successful login for: " + response.email);
          location.href =
            "user/login/facebook?mId=" +
            response.id +
            "&mName=" +
            response.name +
            "&mEmail=" +
            response.email;
        });
      }
    </script>
    <title>signup</title>
    <style>
      #outtersignup {
        display: none;
        position: fixed;
        z-index: 2000;
        top: 0px;
        right: 0px;
        bottom: 0px;
        left: 0px;
        background: rgba(0, 0, 0, 0.75);
        font-family: var(--font-button-font-family, Circular,-apple-system,BlinkMacSystemFont,Roboto,Helvetica Neue,sans-serif);
      }
      #h1signup {
        display: table;
        width: 100%;
        height: 100%;
      }
      #h2signup {
        display: table-cell;
        vertical-align: middle;
        padding: 64px;
      }
      #h3signup {
        background-color: white;
        max-width: 568px;
        width: 100%;
        position: relative;
        margin: auto;
      }
      #h4signup {
        box-sizing: border-box;
        padding: 32px;
        text-align: center;
      }
      #snsSign{
      	text-align: center;
      }
      #snsSign #kaCustomBtn{
	   display:block;
	   box-sizing:border-box;
	   display:block;
	   margin:10px auto;
	   background-color: #f7e317;
	   width: 320px;
	   height:40px;
	   white-space: nowrap;
	   text-align:left;
	   border:1px solid #f0d909;
	   border-radius:3px;
	   overflow: hidden;
	 }
      #snsSign #kaCustomBtn .k_icon {
        margin-top: -2px;
        margin-left: 2px;
        display: inline-block;
        background-size: contain;
        width: 40px;
        height: 40px;
        background-image: url("./img/login/kakao_login.png");
        float: left;
      }

      #snsSign #kaCustomBtn #k_a {
        color: #3c1e1e;
        font-size: 16px;
        font-weight: bold;
        display: inline-block;
        width: 262px;
        height: 40px;
        text-align: center;
        line-height: 40px;
      }

      #snsSign #customBtn {
        box-sizing: border-box;
        display: block;
        margin: 10px auto;
        background-color: #fff;
        width: 320px;
        height: 40px;
        white-space: nowrap;
        text-align: left;
        border: 1px solid #ccc;
        border-radius: 3px;
        overflow: hidden;
      }

      #snsSign #customBtn:hover {
        cursor: pointer;
      }

      #snsSign #customBtn .icon {
        margin-top: 6px;
        margin-left: 12px;
        display: inline-block;
        background-size: contain;
        width: 25px;
        height: 25px;
        background-image: url("https://developers.google.com/identity/images/g-logo.png?hl=ko");
        float:left;
      }

      #snsSign #customBtn #a {
        color: #1f1f1f;
        font-size: 16px;
        font-weight: bold;
        display: inline-block;
        width: 278px;
        height: 40px;
        text-align: center;
        line-height: 37px;
      }
      #outtersignup #spliter{
        text-align: center;
        overflow: hidden;
      }
      #spliter #wrapper_or{
      	position: relative;
      }
      #spliter #wrapper_or span{
      	padding: 16px;
      }
      #wrapper_or::before {
	    content: "" ;
	    position:absolute;
	    border-bottom-width: 1px;
	    border-bottom-style: solid;
	    border-bottom-color: #e4e4e4;
	    top: 50% !important;
	    right: 100% !important;
	    width: 5000px !important;
	}
	 #wrapper_or::after {
	    content: "" ;
	    position:absolute;
	    border-bottom-width: 1px;
	    border-bottom-style: solid;
	    border-bottom-color: #e4e4e4;
	    top: 50% !important;
	    left: 100% !important;
	    width: 5000px !important;
	}
	#signupEmail{
      	text-align: center;
      	margin-bottom: 16px;
      	margin-top: 16px;
      	cursor: pointer;
      }
      #signupEmail #emailBtn{
	   display:block;
	   box-sizing:border-box;
	   display:block;
	   margin:10px auto;
	   background: rgb(255, 90, 95);
	   width: 320px;
	   height:40px;
	   white-space: nowrap;
	   text-align:left;
	   border:1px solid rgb(255, 90, 95);
	   border-radius:3px;
	   overflow: hidden;
	 }
      #signupEmail #emailBtn .E_icon {
        margin-top: 3px;
        margin-left: 6px;
		display: inline-block;
        background-size: contain;
        width: 32px;
        height: 32px;
        background-image: url("./img/login/email.png");
        float: left;
        background-repeat: no-repeat;
      }

      #signupEmail #emailBtn #E_a {
        color: white;
        font-size: 16px;
        font-weight: bold;
        display: inline-block;
        width: 280px;
        height: 40px;
        text-align: center;
        line-height: 40px;
      }
      #ask_account{
      	overflow-wrap: break-word !important;
	    font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto, "Helvetica Neue", sans-serif !important;
	    font-size: 16px !important;
	    font-weight: 400 !important;
	    line-height: 1.375em !important;
	    color: rgb(72, 72, 72) !important;
	    margin: 0px !important;
      }
      
      /*여기부터는 이메일 회원가입*/
      #h4signup_email {
        box-sizing: border-box;
        padding: 32px;
        text-align: center;
        display: none;
      }
      #h4signup_email form .txtb{
    	border: 1px solid rgb(235, 235, 235);
    	border-radius : 3px;
    	margin: 20px auto;
		width: 320px;
		height:40px;
		box-sizing: border-box;    		
    }
    #h4signup_email .txtb input{
    	font-size: 15px;
    	color:#333;
    	border:none;
    	width: 320px;
    	outline: none;
    	background: none;
    	padding: 0 5px;
    	height: 40px;
    }
    #birth_chooser{
    	width: 320px;
    	height:40px;
    	box-sizing: border-box;
    	margin: 20px auto;
    	display: flex;
		justify-content: space-between;
	}
    #birth_chooser div{
    	display: inline-block;
    	float: left;
    }
    #birth_chooser div select{
    	width: 100%;
    	height:100%;
    	border: none;
    	background: white;
    	font-size: 14px;
    	cursor: pointer;
    }
    #birth_chooser #year{
    	width: 38%;
    	border: 1px solid rgb(235, 235, 235);
    	border-radius: 3px;
    }
    #birth_chooser #month{
    	width: 25%;
    	border: 1px solid rgb(235, 235, 235);
    	border-radius: 3px;
    }
    #birth_chooser #day{
    	width: 25%;
    	border: 1px solid rgb(235, 235, 235);
    	border-radius: 3px;
    }
    </style>
  </head>
  <body>
    <div id="outtersignup">
      <div id="h1signup">
        <div id="h2signup">
          <div id="h3signup">
            <div id="h4signup">
              <div style="width: 100%; height: 20px;">
                <button onclick="popdownSignup()" style="float: left; border: 0; outline: 0; width: 20px; height: 20px; font-size: 20px; color: rgb(118, 118, 118); cursor: pointer;">X</button>
              </div>
              <div id="snsSign">
                <!-- kakao Auth-->
                <a
                  href="https://kauth.kakao.com/oauth/authorize?client_id=1ad217292db6a23ed8ec66d0e6129df7&redirect_uri=http://localhost:9999/YOGI/user/login/kakao&response_type=code"
                  target="_self"
                >
                  <span id="kaCustomBtn">
                    <span class="k_icon"></span>
                    <span id="k_a" class="customGPlusSignIn"
                      >카카오 계정으로 로그인</span
                    >
                  </span>
                </a>

                <!--google Auth-->
                <div id="customBtn">
                  <span class="icon"></span>
                  <span
                    id="a"
                    class="customGPlusSignIn"
                    onclick="if(this.innerHTML === 'Log out With Google') {signOut();} return false;"
                  >
                    구글 계정으로 로그인</span
                  >
                </div>

                <!--facebook Auth-->
                <div
                  class="fb-login-button"
                  data-width="320px"
                  data-size="large"
                  data-button-type="login_with"
                  data-auto-logout-link="false"
                  data-use-continue-as="false"
                  style="width: 320px; height:40px; border:1px solid #0d69e6; border-radius: 3px; background-color: #1877f2; box-sizing: border-box; margin-bottom: 20px; text-align: center;"
                ></div>
              </div>

              <div id="spliter">
                <span id="wrapper_or">
                  <span>
                    또는
                  </span>
                </span>
              </div>
			  <div id="signupEmail">
                <a onclick="change_signup()">
                  <span id="emailBtn">
                    <span class="E_icon"></span>
                    <span id="E_a">이메일로 회원가입</span>
                  </span>
                </a>
              </div>
              <div style="margin-top: 16px; margin-bottom: 16px; display: block; box-sizing: border-box;">
              	<div style="border-bottom-width: var(--border-rule-border-width, 1px); border-bottom-color: #e4e4e4;border-bottom-style: solid"></div>
              </div>
              <div style="display: inline-block; box-sizing: border-box; margin: 0 auto; width: 320px;">
              	<span style="">
              		<span id="ask_account">
              			이미 YOGI 계정이 있나요?
              		</span>
              		<div style="display: inline-block;margin-left: 8px;">
              			<a onclick="popup_login()" style="color: #008489;cursor: pointer;">로그인</a>
              		</div>
              	</span>
              </div>
            </div>
            
   <!-- 이메일 회원가입 ******************************************************************************** -->
            <div id="h4signup_email">
	            <div style="width: 100%; height: 20px;">
	                <button onclick="popdownSignup()" style="float: left; border: 0; outline: 0; width: 20px; height: 20px; font-size: 20px; color: rgb(118, 118, 118); cursor: pointer;">X</button>
	              </div>
	            <div style="display: inline-block; box-sizing: border-box; margin: 0 auto; width: 320px; font-size: 14px; margin-bottom: 20px;">
	              	<span style="">
	              		<div style="display: inline-block;">
	              			<a onclick="change_signdown()"" style="color: #008489;cursor: pointer;">카카오 또는 페이스북 또는 구글</a>
	              		</div>
	              		<span style="font-size:14px;">
	              			로 회원 가입하세요.
	              		</span>
	              	</span>
              	</div>
	            <div id="spliter">
	                <span id="wrapper_or">
	                  <span style="font-size:14px;">
	                    또는
	                  </span>
	                </span>
              	</div>
            	<form name="create_frm" method="post">
            		<div class="txtb">
                		<input type="email" name="mEmail" placeholder="이메일 주소">
                	</div>
                	<div class="txtb">
                		<input type="text" name="mName" placeholder="이름">
                	</div>
                	<div class="txtb">
                		<input type="password" name="mPwd" placeholder="비밀번호 설정">
                	</div>
                	<div style="width: 320px; box-sizing: border-box; margin: 0 auto;">
                		<div style="text-align: left; margin-bottom: 5px;">
                			생일
                		</div>
                		
                		<div style="font-size:14px; color:#484848; text-align: left;">
                			만 18세 이상의 성인만 회원으로 가입할 수 있습니다. <br/>생일은 다른 YOGI 이용자에게 공개되지 않습니다.
                		</div>
                		
                		<div id="birth_chooser">
                			
                			<div id="year">
                				<select name="birth_year" id="birth_y" >
                					<option selected="selected">년</option>
                					<option value="2018">2019년</option>
                					<option value="2018">2018년</option>
								    <option value="2017">2017년</option>
								    <option value="2016">2016년</option>
								    <option value="2015">2015년</option>
								    <option value="2014">2014년</option>
								    <option value="2013">2013년</option>
								    <option value="2012">2012년</option>
								    <option value="2011">2011년</option>
								    <option value="2010">2010년</option>
								    <option value="2009">2009년</option>
								    <option value="2008">2008년</option>
								    <option value="2007">2007년</option>
								    <option value="2006">2006년</option>
								    <option value="2005">2005년</option>
								    <option value="2004">2004년</option>
								    <option value="2003">2003년</option>
								    <option value="2002">2002년</option>
								    <option value="2001">2001년</option>
								    <option value="2000">2000년</option>
								    <option value="1999">1999년</option>
								    <option value="1998">1998년</option>
								    <option value="1997">1997년</option>
								    <option value="1996">1996년</option>
								    <option value="1995">1995년</option>
								    <option value="1994">1994년</option>
								    <option value="1993">1993년</option>
								    <option value="1992">1992년</option>
								    <option value="1991">1991년</option>
								    <option value="1990">1990년</option>
								    <option value="1989">1989년</option>
								    <option value="1988">1988년</option>
								    <option value="1987">1987년</option>
								    <option value="1986">1986년</option>
								    <option value="1985">1985년</option>
								    <option value="1984">1984년</option>
								    <option value="1983">1983년</option>
								    <option value="1982">1982년</option>
								    <option value="1981">1981년</option>
								    <option value="1980">1980년</option>
								    <option value="1979">1979년</option>
								    <option value="1978">1978년</option>
								    <option value="1977">1977년</option>
								    <option value="1976">1976년</option>
								    <option value="1975">1975년</option>
								    <option value="1974">1974년</option>
								    <option value="1973">1973년</option>
								    <option value="1972">1972년</option>
								    <option value="1971">1971년</option>
								    <option value="1970">1970년</option>
								    <option value="1969">1969년</option>
								    <option value="1968">1968년</option>
								    <option value="1967">1967년</option>
								    <option value="1966">1966년</option>
								    <option value="1965">1965년</option>
								    <option value="1964">1964년</option>
								    <option value="1963">1963년</option>
								    <option value="1962">1962년</option>
								    <option value="1961">1961년</option>
								    <option value="1960">1960년</option>
								    <option value="1959">1959년</option>
								    <option value="1958">1958년</option>
								    <option value="1957">1957년</option>
								    <option value="1956">1956년</option>
								    <option value="1955">1955년</option>
								    <option value="1954">1954년</option>
								    <option value="1953">1953년</option>
								    <option value="1952">1952년</option>
								    <option value="1951">1951년</option>
								    <option value="1950">1950년</option>
								    <option value="1949">1949년</option>
								    <option value="1948">1948년</option>
								    <option value="1947">1947년</option>
								    <option value="1946">1946년</option>
								    <option value="1945">1945년</option>
								    <option value="1944">1944년</option>
								    <option value="1943">1943년</option>
								    <option value="1942">1942년</option>
								    <option value="1941">1941년</option>
								    <option value="1940">1940년</option>
								    <option value="1939">1939년</option>
								    <option value="1938">1938년</option>
								    <option value="1937">1937년</option>
								    <option value="1936">1936년</option>
								    <option value="1935">1935년</option>
								    <option value="1934">1934년</option>
								    <option value="1933">1933년</option>
								    <option value="1932">1932년</option>
								    <option value="1931">1931년</option>
								    <option value="1930">1930년</option>
								    <option value="1929">1929년</option>
								    <option value="1928">1928년</option>
								    <option value="1927">1927년</option>
								    <option value="1926">1926년</option>
								    <option value="1925">1925년</option>
								    <option value="1924">1924년</option>
								    <option value="1923">1923년</option>
								    <option value="1922">1922년</option>
								    <option value="1921">1921년</option>
								    <option value="1920">1920년</option>
								    <option value="1919">1919년</option>
								    <option value="1918">1918년</option>
								    <option value="1917">1917년</option>
								    <option value="1916">1916년</option>
								    <option value="1915">1915년</option>
								    <option value="1914">1914년</option>
								    <option value="1913">1913년</option>
								    <option value="1912">1912년</option>
								    <option value="1911">1911년</option>
								    <option value="1910">1910년</option>
								    <option value="1909">1909년</option>
								    <option value="1908">1908년</option>
								    <option value="1907">1907년</option>
								    <option value="1906">1906년</option>
								    <option value="1905">1905년</option>
                				</select>
                				<span>
                				</span>
                			</div>
                			
                			<div id="month">
                				<select name="birth_month" id="birth_m">
                					<option selected="selected">월</option>
                					<option value="1">1월</option>
                					<option value="2">2월</option>
                					<option value="3">3월</option>
                					<option value="4">4월</option>
                					<option value="5">5월</option>
                					<option value="6">6월</option>
                					<option value="7">7월</option>
                					<option value="8">8월</option>
                					<option value="9">9월</option>
                					<option value="10">10월</option>
                					<option value="11">11월</option>
                					<option value="12">12월</option>
                				</select>
                				<span>
                				</span>
                			</div>
                			
                			<div id="day">
                				<select name="birth_day" id="birth_d">
                					<option selected="selected">일</option>
                					<option value="1">1일</option>
							        <option value="2">2일</option>
							        <option value="3">3일</option>
							        <option value="4">4일</option>
							        <option value="5">5일</option>
							        <option value="6">6일</option>
							        <option value="7">7일</option>
							        <option value="8">8일</option>
									<option value="9">9일</option>
									<option value="10">10일</option>
									<option value="11">11일</option>
									<option value="12">12일</option>
									<option value="13">13일</option>
									<option value="14">14일</option>
									<option value="15">15일</option>
									<option value="16">16일</option>
									<option value="17">17일</option>
									<option value="18">18일</option>
									<option value="19">19일</option>
									<option value="20">20일</option>
									<option value="21">21일</option>
									<option value="22">22일</option>
									<option value="23">23일</option>
									<option value="24">24일</option>
									<option value="25">25일</option>
									<option value="26">26일</option>
									<option value="27">27일</option>
									<option value="28">28일</option>
									<option value="29">29일</option>
									<option value="30">30일</option>
									<option value="31">31일</option>
                				</select>
                				<span>
                				</span>
               				</div>
                		</div>
                	</div>
                	<input type="hidden" name="mBirthday" id="mBirthday"/>
                	 <button name="email_signup" class="logbtn" onclick="signUp()">가입하기</button>
            	</form>
            	<div style="margin-top: 16px; margin-bottom: 16px; display: block; box-sizing: border-box;">
              		<div style="border-bottom-width: var(--border-rule-border-width, 1px); border-bottom-color: #e4e4e4;border-bottom-style: solid"></div>
              	</div>
              	<div style="display: inline-block; box-sizing: border-box; margin: 0 auto; width: 320px;">
              		<span style="">
              			<span id="ask_account">
              				이미 YOGI 계정이 있나요?
              			</span>
              			<div style="display: inline-block;margin-left: 8px;">
              				<a onclick="popup_login()" style="color: #008489;cursor: pointer;">로그인</a>
              			</div>
              		</span>
              	</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script>
    const signup = document.getElementById("outtersignup");
	const signup_1 = document.getElementById("h4signup");
	const signup_email = document.getElementById("h4signup_email");
    
    function popupSignup() {
      signup.setAttribute("style", "display:block");
    }

    function popdownSignup() {
      signup.setAttribute("style", "display:none");
    }
    
    function popup_login() {
		popdownSignup();
		popupSignin();
	}
	function change_signup() {
		signup_1.setAttribute("style", "display:none");
		signup_email.setAttribute("style", "display:block");
	}
	function change_signdown() {
		signup_1.setAttribute("style", "display:block");
		signup_email.setAttribute("style", "display:none");
	}
	
    const createform = document.create_frm;
	var e_p_node = createform.mEmail.parentNode;
	var n_p_node = createform.mName.parentNode;
	var p_p_node = createform.mPwd.parentNode;
	
	createform.mEmail.onfocus = function() {
		e_p_node.setAttribute("style", "border: 1px solid #008489");
    }
	createform.mName.onfocus = function() {
		n_p_node.setAttribute("style", "border: 1px solid #008489");
    }
	createform.mPwd.onfocus = function() {
		p_p_node.setAttribute("style", "border: 1px solid #008489");
	}

	
	createform.mEmail.onblur = function() {
		e_p_node.setAttribute("style", "border : 1px solid rgb(235, 235, 235)");		
	}
	createform.mName.onblur = function() {
		n_p_node.setAttribute("style", "border : 1px solid rgb(235, 235, 235)");		
	}
	createform.mPwd.onblur = function() {
		p_p_node.setAttribute("style", "border : 1px solid rgb(235, 235, 235)");		
	}
    
	function signUp() {
		//무결성 체크 안함
		let y = document.getElementById("birth_y");
		let m = document.getElementById("birth_m");
		let d = document.getElementById("birth_d");
		
		var b_y = y.options[y.selectedIndex].value;
		var b_m = m.options[m.selectedIndex].value;
		var b_d = d.options[d.selectedIndex].value;
		
		document.getElementById("mBirthday").value = b_y + "-" + b_m + "-" + b_d;
		
		createform.action = "user/email";
		createform.submit();
	}
    var googleUser = {};
    var startApp = function() {
      gapi.load("auth2", function() {
        auth2 = gapi.auth2.init({
          client_id:
            "59260924376-qm7brgi63b50i2b7mnmht2vk28np57iv.apps.googleusercontent.com",
          cookiepolicy: "single_host_origin"
        });
        attachSignin(document.getElementById("customBtn"));
      });
    };

    function attachSignin(element) {
      auth2.attachClickHandler(element, {}, function(googleUser) {
        var profile = googleUser.getBasicProfile();
        location.href =
          "user/login/google?mId=" +
          profile.getId() +
          "&mName=" +
          profile.getName() +
          "&mEmail=" +
          profile.getEmail();
      });
    }

    function signOut() {
      var auth2 = gapi.auth2.getAuthInstance();
      auth2.signOut().then(function() {
        document.querySelector("#a").innerHTML = "Log in With Google";
      });
      auth2.disconnect();
    }

    window.onload = function() {
      startApp();
    };
  </script>
</html>
