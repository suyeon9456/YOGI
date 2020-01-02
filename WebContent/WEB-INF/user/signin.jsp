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
    <title>signin</title>
    <style>
      #outtersignin {
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
      #h1signin {
        display: table;
        width: 100%;
        height: 100%;
      }
      #h2signin {
        display: table-cell;
        vertical-align: middle;
        padding: 64px;
      }
      #h3signin {
        background-color: white;
        max-width: 568px;
        width: 100%;
        position: relative;
        margin: auto;
      }
      #h4signin {
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
      #outtersignin #spliter{
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
	#signinEmail{
      	text-align: center;
      	margin-bottom: 16px;
      	margin-top: 16px;
      	box-sizing: border-box;
      }
    
    #signinEmail{
    	box-sizing: border-box;
    }
    #signinEmail form .txtb{
    	border: 1px solid rgb(235, 235, 235);
    	border-radius : 3px;
    	margin: 20px auto;
		width: 320px;
		height:40px;
		box-sizing: border-box;    		
    }
    .txtb input{
    	font-size: 15px;
    	color:#333;
    	border:none;
    	width: 308px;
    	outline: none;
    	background: none;
    	padding: 0 5px;
    	height: 37px;
    }
    .logbtn{
	   background: rgb(255, 90, 95);
	   border: 1px solid rgb(235, 235, 235);
    	border-radius : 3px;
    	margin: 0 auto;
		width: 320px;
		box-sizing: border-box;
		height:40px;  
	    background: rgb(255, 90, 95);
	    font-family: var(--font-button-font-family, Circular,-apple-system,BlinkMacSystemFont,Roboto,Helvetica Neue,sans-serif);
	    font-size: 16px;
   		color:white;
   		cursor:pointer;
    }
    .forgotbtn{	   
    	margin: 0 auto;
		box-sizing: border-box;
	    font-family: var(--font-button-font-family, Circular,-apple-system,BlinkMacSystemFont,Roboto,Helvetica Neue,sans-serif);
	    font-size: 13px;
   		color:#008489;
   		cursor:pointer;
   		border: none;
   		background-color: #fff;
    }
    </style>
  </head>
  <body>
    <div id="outtersignin">
      <div id="h1signin">
        <div id="h2signin">
          <div id="h3signin">
            <div id="h4signin">
              <div style="width: 100%; height: 20px;">
                <button onclick="popdownSignin()" style="float: left; border: 0; outline: 0; width: 20px; height: 20px; font-size: 20px; color: rgb(118, 118, 118); background-color:#fff; cursor: pointer;">X</button>
              </div>
              <div id="snsSign">
                <!-- kakao Auth-->
                <a
                  href="https://kauth.kakao.com/oauth/authorize?client_id=1ad217292db6a23ed8ec66d0e6129df7&redirect_uri=http://localhost:9999/YOGI_J/user/login/kakao&response_type=code"
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
			  <div id="signinEmail">
                <form action="http://localhost:9999/YOGI_J/user/login/email" method="post" name="emailForm">
                	<div class="txtb">
                		<input type="text" name="mEmail" placeholder="이메일 주소">
                	</div>
                	
                	<div class="txtb">
                		<input type="password" name="mPwd" placeholder="비밀번호">
                	</div>
                	<div style="width:320px; box-sizing: border-box; margin: 0 auto; text-align: left;">
                		<button name="forgot_pwd" class="forgotbtn">비밀번호가 생각나지 않으세요?</button>
                	</div>
	                <button name="email_signin" class="logbtn">로그인</button>             	
                </form>
              </div>
              <div style="margin-top: 16px; margin-bottom: 16px; display: block; box-sizing: border-box; ">
              	<div style="border-bottom-width: var(--border-rule-border-width, 1px); border-bottom-color: #e4e4e4;border-bottom-style: solid"></div>
              </div>
              <div style="display: inline-block; box-sizing: border-box; margin: 0 auto; width: 320px;">
              	<span style="">
              		<span id="ask_account">
              			YOGI 계정이 없으세요?
              		</span>
              		<div style="display: inline-block;margin-left: 8px;">
              			<a onclick="popup_signup()" style="color: #008489;cursor: pointer;">회원가입</a>
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
    const signin = document.getElementById("outtersignin");

    function popupSignin() {
      signin.setAttribute("style", "display:block");
    }

    function popdownSignin() {
      signin.setAttribute("style", "display:none");
    }
    
    function popup_signup() {
		popdownSignin();
		popupSignup();
	}
	
    const signinform = document.emailForm;
	var e_p_node = signinform.mEmail.parentNode;
	var p_p_node = signinform.mPwd.parentNode;
    
    signinform.mEmail.onfocus = function() {
		e_p_node.setAttribute("style", "border: 1px solid #008489");
    }
    signinform.mPwd.onfocus = function() {
		p_p_node.setAttribute("style", "border: 1px solid #008489");
	}
    signinform.mEmail.onblur = function() {
		e_p_node.setAttribute("style", "border : 1px solid rgb(235, 235, 235)");		
	}
    signinform.mPwd.onblur = function() {
		p_p_node.setAttribute("style", "border : 1px solid rgb(235, 235, 235)");		
	}
    
    var e_form = document.emailForm;
    e_form.email_signin.onclick = function() {
		e_form.submit();
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
