/**
 * homes 관련 javascript
 * 
 */

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
		alert(bSlideContents.length + "bSlideContents.length");
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
				alert();
				e.preventDefault();
				bCurDot = bCurDottt.getElementsByClassName("b_dot_active");
				alert(bCurDot + "bCurDot");
				alert(bCurDot[0] + "bCurDot[0]");
				bCurDot[0].classList.remove("b_dot_active");

//				bCurDot = this;
//				this.classList.add("b_dot_active");
//				
//				bCurSlide.classList.remove("b_slide_active");
//				bCurIndex = Number(this.getAttribute("b_data-index"));
//				bCurSlide = bSlideContents[bCurIndex];
//				bCurSlide.classList.add("b_slide_active");
//				bSlideListI.style.transition = bSlideSpeed + "ms";
//				bSlideListI.style.transform = "translate3d(-" + (bSlideWidth * (bCurIndex + 1)) + "px, 0px, 0px)";
				
			});
		});
		
	}

const slideList = document.getElementsByClassName("slide_list");
const slideBtnNext = document.getElementsByClassName("slide_btn_next");
const slideBtnPrev = document.getElementsByClassName("slide_btn_prev");
const pagination = document.getElementsByClassName("slide_pagination");
const slideWidth = 260;
const slideSpeed = 300;
const startNum = 0;
const pageDotss = document.getElementsByClassName("cont");

	for(var i = 0; i < slideList.length; i++){	
		
		let slideContents = slideList[i].getElementsByClassName("slide_content");
		let slideLen = slideContents.length;
		slideList[i].style.width = slideWidth * (slideLen + 2) + "px";
		
		let firstChild = slideList[i].firstElementChild;
//		alert(firstChild + "firstChild");
		let lastChild = slideList[i].lastElementChild;
//		alert(lastChild + "lastChild");
		let clonedFirst = firstChild.cloneNode(true);
		let clonedLast = lastChild.cloneNode(true);
		
		slideList[i].appendChild(clonedFirst);
		slideList[i].insertBefore(clonedLast, slideList[i].firstElementChild);
		
		let curIndex = startNum;
		let curSlide = slideContents[curIndex];
		curSlide.classList.add("slide_active");
		
		let pageChild = "";
		for(var j = 0; j<slideLen; j++){
			pageChild += "<li class = 'dot";
			pageChild += (j === startNum) ? " dot_active" : "";
			pageChild += "' data-index='" + j + "'><a href = '#'></a></li>";
		}
		
		pagination[i].innerHTML = pageChild;
		
		const pageDots = pageDotss[i].getElementsByClassName("dot");
		
		/** Next Button Event */
		let slideListI = slideList[i];
		slideBtnNext[i].addEventListener("click", function(){
			if(curIndex <= slideLen-1){
				slideListI.style.transition = slideSpeed + "ms";				
				slideListI.style.transform = "translate3d(-" + (slideWidth * (curIndex + 2)) + "px, 0px, 0px)";				
			}

			if(curIndex === slideLen - 1){
				setTimeout(function(){
					slideListI.style.transition = "0ms";
					slideListI.style.transform = "translate3d(-" + slideWidth + "px, 0px, 0px)";
				}, slideSpeed);
				
				curIndex = -1;
			}
			
			curSlide.classList.remove("slide_active");
			pageDots[(curIndex === -1) ? slideLen - 1 : curIndex].classList.remove("dot_active");
			curSlide = slideContents[++curIndex];
			curSlide.classList.add("slide_active");
			pageDots[curIndex].classList.add("dot_active");
		});
		
		slideBtnPrev[i].addEventListener("click", function(){
			if(curIndex >= 0){
				slideListI.style.transition = slideSpeed + "ms";
				slideListI.style.transform = "translate3d(-" + (slideWidth * curIndex) + "px, 0px, 0px)";
			}
			
			if(curIndex === 0){
				setTimeout(function(){
					slideListI.style.transition = "0ms";
					slideListI.style.transform = "translate3d(-" + (slideWidth * slideLen) + "px, 0px, 0px)";
				}, slideSpeed);
				curIndex = slideLen;
			}
			
			curSlide.classList.remove("slide_active");
			pageDots[(curIndex === slideLen) ? 0 : curIndex].classList.remove("dot_active");
			curSlide = slideContents[--curIndex];
			curSlide.classList.add("slide_active");
			pageDots[curIndex].classList.add("dot_active");
		});
		
		let curDot;
		let curDottt = pageDotss[i];
		
		Array.prototype.forEach.call(pageDots, function(dot, k){
			dot.addEventListener("click", function(e){
				e.preventDefault();
				curDot = curDottt.getElementsByClassName("dot_active");
				curDot[0].classList.remove("dot_active");

				curDot = this;
				this.classList.add("dot_active");
				
				curSlide.classList.remove("slide_active");
				curIndex = Number(this.getAttribute("data-index"));
				curSlide = slideContents[curIndex];
				curSlide.classList.add("slide_active");
				slideListI.style.transition = slideSpeed + "ms";
				slideListI.style.transform = "translate3d(-" + (slideWidth * (curIndex + 1)) + "px, 0px, 0px)";
				
			});
		});
		
	}
