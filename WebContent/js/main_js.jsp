<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
let isVisible = false;
$(window).on("scroll",function(){
	 if(!isVisible){
		 if($(document).scrollTop() >= $("#find_house").offset().top){	
			 $.ajax({
				 url:"homes/best",
				 contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				 type:"post",
				 dataType:"json",
				 success:function(data, status){
					 $("#best_homes").empty();
					 $.each(data, function(index, item){
						 let result = "";
						 result = "<div class = 'b_cont'>"
						  		+ "<div class = 'b_container'>"
						 		+ "<div class = 'b_slide_wrap'>"
						  		+ "<div class = 'b_slide_box'>"
					     		+ "<div class = 'b_slide_list b_clearfix'>";
					     $.each(item.fileList, function(file, list){
					    	result += "<div class = 'b_slide_content b_slide'>"
					    			+ "<img src = './img/homes/" + list.fPhoto + "'/>"
					    			+ "</div>"; 
					     });
					     result += "</div>"
					     		+ "</div>"
					     		+ "<div class = 'b_slide_btn_p'>"
					     		+ "<button type = 'button' class = 'b_slide_btn_prev'>"
								+ "<img src='./img/icon/prev.png' />"
								+ "</button>"
						 		+ "</div>"
						 		+ "<div class = 'b_slide_btn_n'>"
						 		+ "<button type = 'button' class = 'b_slide_btn_next'>"
							 	+ "<img src='./img/icon/next.png' />"
								+ "</button>"
						 		+ "</div>"
						 		+ "<div class = 'b_slide_pagination_box'>"
								+ "<ul class = 'b_slide_pagination'></ul>"						
								+ "</div>"
						 		+ "</div>"
						 		+ "</div>"
						 		+ "<div class = 'b_h_content_box' onclick = 'goHomesView(" + item.hSerial + ");'>"
								+ "<div class = 'b_h_content_tit'>"
								+ "<div class = 'b_h_name'>" + item.hName + "</div>"
								+ "<div class = 'b_h_grade'>"
								+ "<img src='./img/icon/star.png'/>"
								+ "<span> "+ item.grade + "</span>"
								+ "</div>"					
								+ "</div>"
								+ "<div class = 'b_h_content'>" + item.hContent + "</div>"
								+ "<div class = 'b_h_address'>" + item.hAddress + "</div>"
								+ "</div>"
								+ "</div>"
						 $("#best_homes").append(result);	
					 });
					  const bSlideList = document.getElementsByClassName("b_slide_list");
					  const bSlideBtnNext = document.getElementsByClassName("b_slide_btn_next");
					  const bSlideBtnPrev = document.getElementsByClassName("b_slide_btn_prev");
					  const bPagination = document.getElementsByClassName("b_slide_pagination");
					  const bSlideWidth = 409.6;
					  const bSlideSpeed = 300;
					  const bStartNum = 0;
					  const bPageDotss = document.getElementsByClassName("b_cont");

					  	for(var i = 0; i < bSlideList.length; i++){	
					  		
					  		let bSlideContents = bSlideList[i].getElementsByClassName("b_slide_content");
					  		let bSlideLen = bSlideContents.length;
					  		bSlideList[i].style.width = bSlideWidth * (bSlideLen + 2) + "px";
					  		
					  		let bFirstChild = bSlideList[i].firstElementChild;
					  		let bLastChild = bSlideList[i].lastElementChild;
					  		let bClonedFirst = bFirstChild.cloneNode(true);
					  		let bClonedLast = bLastChild.cloneNode(true);
					  		bSlideList[i].appendChild(bClonedFirst);
					  		bSlideList[i].insertBefore(bClonedLast, bSlideList[i].firstElementChild);
					  		
					  		let bCurIndex = bStartNum;
					  		let bCurSlide = bSlideContents[bCurIndex];
					  		bCurSlide.classList.add("b_slide_active");
					  		
					  		let bPageChild = "";
					  		for(var j = 0; j<bSlideLen; j++){
					  			bPageChild += "<li class = 'b_dot";
					  			bPageChild += (j === bStartNum) ? " b_dot_active" : "";
					  			bPageChild += "' data-index='" + j + "'><a href = '#'></a></li>";
					  		}
					  		
					  		bPagination[i].innerHTML = bPageChild;
					  		
					  		const bPageDots = bPageDotss[i].getElementsByClassName("b_dot");
					  		
					  		/** Next Button Event */
					  		let bSlideListI = bSlideList[i];
					  		bSlideBtnNext[i].addEventListener("click", function(){
					  			if(bCurIndex <= bSlideLen-1){
					  				bSlideListI.style.transition = bSlideSpeed + "ms";				
					  				bSlideListI.style.transform = "translate3d(-" + (bSlideWidth * (bCurIndex + 2)) + "px, 0px, 0px)";				
					  			}

					  			if(bCurIndex === bSlideLen - 1){
					  				setTimeout(function(){
					  					bSlideListI.style.transition = "0ms";
					  					bSlideListI.style.transform = "translate3d(-" + bSlideWidth + "px, 0px, 0px)";
					  				}, bSlideSpeed);
					  				
					  				bCurIndex = -1;
					  			}
					  			
					  			bCurSlide.classList.remove("b_slide_active");
					  			bPageDots[(bCurIndex === -1) ? bSlideLen - 1 : bCurIndex].classList.remove("b_dot_active");
					  			bCurSlide = bSlideContents[++bCurIndex];
					  			bCurSlide.classList.add("b_slide_active");
					  			bPageDots[bCurIndex].classList.add("b_dot_active");
					  		});
					  		
					  		bSlideBtnPrev[i].addEventListener("click", function(){
					  			if(bCurIndex >= 0){
					  				bSlideListI.style.transition = bSlideSpeed + "ms";
					  				bSlideListI.style.transform = "translate3d(-" + (bSlideWidth * bCurIndex) + "px, 0px, 0px)";
					  			}
					  			
					  			if(bCurIndex === 0){
					  				setTimeout(function(){
					  					bSlideListI.style.transition = "0ms";
					  					bSlideListI.style.transform = "translate3d(-" + (bSlideWidth * bSlideLen) + "px, 0px, 0px)";
					  				}, bSlideSpeed);
					  				bCurIndex = bSlideLen;
					  			}
					  			
					  			bCurSlide.classList.remove("b_slide_active");
					  			bPageDots[(bCurIndex === bSlideLen) ? 0 : bCurIndex].classList.remove("b_dot_active");
					  			bCurSlide = bSlideContents[--bCurIndex];
					  			bCurSlide.classList.add("b_slide_active");
					  			bPageDots[bCurIndex].classList.add("b_dot_active");
					  		});
					  		
					  		let bCurDot;
					  		let bCurDottt = bPageDotss[i];
					  		
					  		Array.prototype.forEach.call(bPageDots, function(bDot, bK){
					  			bDot.addEventListener("click", function(e){
					  				e.preventDefault();
					  				bCurDot = bCurDottt.getElementsByClassName("b_dot_active");

					  				bCurDot[0].classList.remove("b_dot_active");

					  				bCurDot = this;
					  				this.classList.add("b_dot_active");
					  				
					  				bCurSlide.classList.remove("b_slide_active");
					  				bCurIndex = Number(this.getAttribute("data-index"));
					  				alert("dd");
					  				bCurSlide = bSlideContents[bCurIndex];
					  				bCurSlide.classList.add("b_slide_active");
					  				bSlideListI.style.transition = bSlideSpeed + "ms";
					  				bSlideListI.style.transform = "translate3d(-" + (bSlideWidth * (bCurIndex + 1)) + "px, 0px, 0px)";
					  				
					  			});
					  		});
					  		
					  	}
				 },
				 error:function(request,status,error){
			         alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
		         }
			 });
			 isVisible = true;
		 }
	 } 
});
</script>
</body>
</html>