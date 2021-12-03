<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/JAVACOMICS/css/webtoonListCss/homeList.css">

<div class="webtoonList">
   <div id = monWeb>
      <div class = "day">
         <p id ="mon">월요일</p>   
      </div>
      <div class="longBox">
         <div class="longBox1">
            <img src="image/webtoonList/01.Mon/01/bg.jpg"/>
         </div>
         <div class = longBox2>
            <video autoplay loop muted playsinline>
                  <source src="/JAVACOMICS/image/webtoonList/01.Mon/01/main.webm"
                           type="video/webm">
            </video>
         </div>
         <div class = longBox3>
            <img src="image/webtoonList/01.Mon/01/title.png"/>
         </div>
         <div id= "Transparency"></div>
      </div>
   </div>
   
   <div id = tueWeb>
      <div class = "day">
         <p id ="tue">화요일</p>   
      </div>
      <div class="longBox">
         <div class="longBox1">
            <img alt = "gy" src="image/webtoonList/02.Tue/03/bg.jpg"/>
         </div>
         
         <div class = longBox2>
            <video autoplay loop muted playsinline>
                  <source src="/JAVACOMICS/image/webtoonList/02.Tue/03/main.webm"
                           type="video/webm">
            </video>
         </div>
         
         <div class = longBox3>
            <img src="image/webtoonList/02.Tue/03/title.png"/>
         </div>
         
         <div id= "Transparency"></div>
      </div>   
   </div>
   
   <div id = wedWeb>
      <div class = "day">
         <p id ="wed">수요일</p>   
      </div>
      <div class="longBox">
         <div class="longBox1">
            <img src="image/webtoonList/03.Wed/08/bg.jpg"/>
         </div>
         <div class = longBox2>
            <video autoplay loop muted playsinline>
                  <source src="image/webtoonList/03.Wed/08/main.webm"
                           type="video/webm">
            </video>
         </div>
         <div class = longBox3>
            <img src="image/webtoonList/03.Wed/08/title.png"/>
         </div>
         <div id= "Transparency"></div>
      </div>
   </div>
   
   <div id = thuWeb>
      <div class = "day">
         <p id ="thu">목요일</p>   
      </div>
      <div class="longBox">
         <div class="longBox1">
            <img src="image/webtoonList/04.Thu/08/bg.jpg"/>
         </div>
         <div class = longBox2>
            <video autoplay loop muted playsinline>
                  <source src="image/webtoonList/04.Thu/08/main.webm"
                           type="video/webm">
            </video>
         </div>
         <div class = longBox3>
            <img src="image/webtoonList/04.Thu/08/title.png"/>
         </div>
         <div id= "Transparency"></div>
      </div>
   </div>
   
   <div id = friWeb>
      <div class = "day">
         <p id ="fri">금요일</p>   
      </div>
      <div class="longBox">
         <div class="longBox1">
            <img src="image/webtoonList/05.Fri/05/bg.jpg"/>
         </div>
         <div class = longBox2>
            <video autoplay loop muted playsinline>
                  <source src="image/webtoonList/05.Fri/05/main.webm"
                           type="video/webm">
            </video>
         </div>
         <div class = longBox3>
            <img src="image/webtoonList/05.Fri/05/title.png"/>
         </div>
         <div id= "Transparency"></div>
      </div>
   </div>
   
   <div id = satWeb>
      <div class = "day">
         <p id ="sat">토요일</p>   
      </div>
      <div class="longBox">
         <div class="longBox1">
            <img src="image/webtoonList/06.Sat/11/bg.jpg"/>
         </div>
         <div class = longBox2>
            <video autoplay loop muted playsinline>
                  <source src="image/webtoonList/06.Sat/11/main.webm"
                           type="video/webm">
            </video>
         </div>
         <div class = longBox3>
            <img src="image/webtoonList/06.Sat/11/title.png"/>
         </div>
         <div id= "Transparency"></div>
      </div>
   </div>
   
   <div id = sunWeb>
      <div class = "day">
         <p id ="sun">일요일</p>   
      </div>
      <div class="longBox">
         <div class="longBox1">
            <img src="image/webtoonList/07.Sun/07/bg.jpg"/>
         </div>
         <div class = longBox2>
            <video autoplay loop muted playsinline>
                  <source src="image/webtoonList/07.Sun/07/main.webm"
                           type="video/webm">
            </video>
         </div>
         <div class = longBox3>
            <img src="image/webtoonList/07.Sun/07/title.png"/>
         </div>
         <div id= "Transparency"></div>
      </div>
   </div>
</div>


<!-- 
      <div class="box" >
         <div class="box1">
            <img src="image/webtoonList/01.Mon/05/bg.jpg"/>            
         </div>
         <div class="box2">
            <img src="image/webtoonList/01.Mon/05/main.png"/>
         </div>
         <div class="box3">
            <img src="image/webtoonList/01.Mon/05/title.png"/>
         </div>
         <div id= "Transparency"></div>
      </div>
-->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
   $.ajax({
      url: "/JAVACOMICS/webtoon/getHomeBodyList",
      type: "post",
      /* data : "toontype=학원/판타지", */
      dataType: "json",
      success: function(data){
         alert(JSON.stringify(data));
         
         $.each(data, function(index, items){
            if(items.toonDay == "월"){                     
               $("<div/>", {
                  class: "box",
                  onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList?title=" + items.title + "'"
                  
               }).append($("<div/>", {
                  class: "box1"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonBg
                  
               }))).append($("<div/>", {
                  class: "box2"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonChar
                  
               }))).append($("<div/>", {
                  class: "box3"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonTitle
                  
               }))).append($("<div/>", {
                  id: "Transparency"
                  
               })).appendTo($("#monWeb"));   
            }
            
            if(items.toonDay == "화"){               
               $("<div/>", {
                  class: "box",
				  onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList?title=" + items.title + "'"
                			  
               }).append($("<div/>", {
                  class: "box1"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonBg
                  
               }))).append($("<div/>", {
                  class: "box2"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonChar
                  
               }))).append($("<div/>", {
                  class: "box3"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonTitle
                  
               }))).append($("<div/>", {
                  id: "Transparency"
                  
               })).appendTo($("#tueWeb"));   
            }
            
            if(items.toonDay == "수"){               
               $("<div/>", {
                  class: "box",
                  onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList?title=" + items.title + "'"
                  
               }).append($("<div/>", {
                  class: "box1"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonBg
                  
               }))).append($("<div/>", {
                  class: "box2"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonChar
                  
               }))).append($("<div/>", {
                  class: "box3"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonTitle
                  
               }))).append($("<div/>", {
                  id: "Transparency"
                  
               })).appendTo($("#wedWeb"));   
            }
            
            if(items.toonDay == "목"){               
               $("<div/>", {
                  class: "box",
                  onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList?title=" + items.title + "'"
                  
               }).append($("<div/>", {
                  class: "box1"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonBg
                  
               }))).append($("<div/>", {
                  class: "box2"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonChar
                  
               }))).append($("<div/>", {
                  class: "box3"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonTitle
                  
               }))).append($("<div/>", {
                  id: "Transparency"
                  
               })).appendTo($("#thuWeb"));   
            }
            
            if(items.toonDay == "금"){               
               $("<div/>", {
                  class: "box",
                  onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList?title=" + items.title + "'"
                  
               }).append($("<div/>", {
                  class: "box1"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonBg
                  
               }))).append($("<div/>", {
                  class: "box2"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonChar
                  
               }))).append($("<div/>", {
                  class: "box3"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonTitle
                  
               }))).append($("<div/>", {
                  id: "Transparency"
                  
               })).appendTo($("#friWeb"));   
            }
            
            if(items.toonDay == "토"){               
               $("<div/>", {
                  class: "box",
                  onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList?title=" + items.title + "'"
                  
               }).append($("<div/>", {
                  class: "box1"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonBg
                  
               }))).append($("<div/>", {
                  class: "box2"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonChar
                  
               }))).append($("<div/>", {
                  class: "box3"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonTitle
                  
               }))).append($("<div/>", {
                  id: "Transparency"
                  
               })).appendTo($("#satWeb"));   
            }
            
            if(items.toonDay == "일"){               
               $("<div/>", {
                  class: "box",
                  onclick: href= "location.href='/JAVACOMICS/webtoonInnerList/webtoonInnerList?title=" + items.title + "'"
                  
               }).append($("<div/>", {
                  class: "box1"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonBg
                  
               }))).append($("<div/>", {
                  class: "box2"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonChar
                  
               }))).append($("<div/>", {
                  class: "box3"
                  
               }).append($("<img/>", {
                  src: "image/" + items.toonTitle
                  
               }))).append($("<div/>", {
                  id: "Transparency"
                  
               })).appendTo($("#sunWeb"));   
            }
         })
      },
      error: function(err){
         alert("123");   
      }
      
   })
})
</script>