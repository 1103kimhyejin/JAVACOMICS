<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="utf-8"/>
    <!-- 모바일 대응을 위한 뷰포트 기본 설정 -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style>
      * { box-sizing: border-box; }
      body { margin: 0px; }
      main { padding-bottom: 100px; }
      header {
        background-color: #ffeb3b;
        height: 700px;
        padding: 100px;
      }
      section {
        display: flex;
        justify-content: space-between;
        padding: 5%;
      }
      section div {
        background-color: #ff9800;
        width: 23%;
        height: 300px;
      }

      /* Scroll Animation (sa, 스크롤 애니메이션) */
      .sa {
        opacity: 0;
        transition: all .3s ease;
      }

      /* 아래에서 위로 페이드 인 */
      .sa-up {
        transform: translateY(0px);
      }
      /* 위에서 아래로 페이드 인 */
      .sa-down {
        transform: translateY(100px);
      }
      /* 왼쪽에서 오른쪽으로 페이드 인 */
      .sa-right {
        transform: translateY(200px);
      }
      /* 오른쪽에서 왼쪽으로 페이드 인 */
      .sa-left {
        transform: translateY(300px);
      }
      /* 왼쪽으로 회전하면서 페이드 인 */
      .sa-rotateL {
        transform: rotate(180deg);
      }
      /* 오른쪽으로 회전하면서 페이드 인 */
      .sa-rotateR {
        transform: rotate(-180deg);
      }
      /* 작아진 상태에서 커지면서 페이드 인 */
      .sa-scaleUp {
        transform: scale(.5);
      }
      /* 커진 상태에서 작아지면서 페이드 인 */
      .sa-scaleDown {
        transform: scale(1.5);
      }

      .sa.show {
        opacity: 1;
        transform: none;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>아래로<br />스크롤해 보면</h1>
    </header>
    <main>
      <section>
        <div class="sa sa-up">디비전 1</div>
        <div class="sa sa-up">디비전 2</div>
        <div class="sa sa-up">디비전 3</div>
        <div class="sa sa-up">디비전 4</div>
      </section>
      <section>
        <div class="sa sa-up">디비전 5</div>
        <div class="sa sa-down">디비전 6</div>
        <div class="sa sa-right">디비전 7</div>
        <div class="sa sa-left">디비전 8</div>
      </section>
      <section>
        <div class="sa sa-rotateL">디비전 9</div>
        <div class="sa sa-rotateR">디비전 10</div>
        <div class="sa sa-scaleUp">디비전 11</div>
        <div class="sa sa-scaleDown">디비전 12</div>
      </section>
    </main>

    <script>
      // Scroll Animation (sa, 스크롤 애니메이션)
      const saTriggerMargin = 300;
      const saElementList = document.querySelectorAll('.sa');
 
      const saFunc = function() {
        for (const element of saElementList) {
          if (!element.classList.contains('show')) {
            if (window.innerHeight > element.getBoundingClientRect().top + saTriggerMargin) {
              element.classList.add('show');
            }
          }
        }
      }

      window.addEventListener('load', saFunc);
      window.addEventListener('scroll', saFunc);
    </script>
  </body>
</html>





<!-- 
			<div id = "watchingListBox"> 큰박스안에 박스  
				<div id= "watchingListTopBox">
					<div id="watchingListTopTitle">
						<p>24화 영이 내려온다</p>
					</div>
				</div>
				<div id="watchingListBottomBox" >
					<div id="watchingListBottomBox1">
						<img src= "/JAVACOMICS/image/webtoonList/01.Mon/06/main.png">
					</div>
					
					<div id ="Transparency"></div> 투명도 
					
					<div id="watchingListBottomBox2">
						<img src= "/JAVACOMICS/image/webtoonList/01.Mon/06/title.png">
					</div>
				</div>
			</div>
			
			
			
			<div id = "similarListBox"> 유사 리스트 박스 
				<div class="similarListBox1">
					<img src="/JAVACOMICS/image/webtoonList/02.Tue/02/bg.jpg"/>				
				</div>
				<div class="similarListBox2">
					<img src="/JAVACOMICS/image/webtoonList/02.Tue/02/main.png"/>
				</div>
				<div class="similarListBox3">
					<img src="/JAVACOMICS/image/webtoonList/02.Tue/02/title.png"/>
				</div>
				<div id= "Transparency"></div>
			</div>
			
			 -->
			

			
			