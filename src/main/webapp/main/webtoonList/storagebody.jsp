<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	.storageListBox{
		align-content : flex-start;
		display: flex;
		flex-direction: column;
		width:640px;
		margin: 0 auto;
		background-color: black;
		position:relative;
		
	}
	#watchingList{
		display: inline-block;
		position:relative;
		width:100%;
		height: 530px;
		overflow:hidden;
	}
	#watchingListTitle{
		height: 120px;
		transform: translateY(0px);
		text-align: right;
		line-height: 42px;
		padding-left:20px;
		padding-right:20px;
		
	}
	.watchingListTitle1{
		justify-content: flex-end;
		display: flex;
		overflow:hidden;
		line-height:36px;
		position: relative;
		width:100%;
	}
	.watchingListTitle1 > p{
		overflow: hidden;
		text-overflow: ellipsis;
		color: #333;
		font-size:28px;
		font-weight: 900;
	}
	.watchingListTitle2{
		justify-content: flex-end;
		display: flex;
		overflow:hidden;
		line-height:36px;
		position: relative;
		width:100%;
	}
	.watchingListTitle2 > p{
		width:auto;
		white-space:nowrap;
		flex:0 1 auto;
		overflow: hidden;
		text-overflow: ellipsis;
		word-break: break-word;
		color: #333;
		font-size:28px;
		font-weight:900;	
	}
	.watchingListTitle3{
		justify-content: flex-end;
		display: flex;
		overflow:hidden;
		line-height:36px;
		position: relative;
		width:100%;
	}
	.watchingListTitle3 > p{
		width: auto;
		white-space: nowrap;
		flex: 0 1 auto;
		overflow:hidden;
		text-overflow:ellipsis;
		word-break: break-word;
		color: #333;
		font-size:28px;
		font-weight:900;
	}
	#watchingListBigBox{
		align-content: flex-start;
		display: flex;
		flex-wrap:wrap;
		margin-left:-1px;
		margin-right:-1px;
		margin-top:-44px;
		box-sizing: border-box;
		height:390px;
		
	}
	#watchingListBox{
		transform: translateY(0px);
		border-bottom:1px solid #000;
		border-left:1px solid #000;
		border-right:1px solid #000;
		width: calc(100%/4);
		margin-bottom:1px;
		height:390px;
	}
	#watchingListTopBox{
		position: relative;
		align-items: center;
		display: flex;
		height: 56px;
		justify-content: center;
		margin-bottom:2px;
		background-color: rgb(111, 97, 89);
	}
	#watchingListTopTitle{
		align-items: center;
		display: flex;
		justify-content: center;
		line-height: 1;
		overflow: hidden;
		width:100%;
		padding-left: 8px;
		padding-right: 8px;
		
	}
	
	#watchingListTopTitle > p{
		width: auto;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
		word-break: break-word;
		color:#fff;
		font-size:13px;
		font-weight: 500;
	}
	
	#watchingListBottomBox{
		position: relative;
		padding-top:209.677%;
		width:100%;
		background-color: rgba(111, 97, 89);
		
	}
	#watchingListBottomBox1 > img{
		position:absolute;
		overflow:hidden;
		bottom:0;
		left:0;
		right:0;
		top:0;
		display:block;
		height:100%;
		width:100%;
		opacity:0.8;
		
	}
	#watchingListBottomBox2 > img{
		position:absolute;
		width:100%;
		bottom:10px;
		left:0;
		display:block;
		background-color: linear-gradient(180deg, transparent, rgba(0,0,0,.6);
		margin-top:0;
		margin-bottom:0;
		margin-left:auto;
		margin-right:auto;
	}
	
</style>

<div class = "storageListBox">	<!--컨테이너 안에서 보관함 박스  -->
	<div id = "watchingList">	<!-- 보관함박스 안에 리스트박스  -->
		<div id = "watchingListTitle">	<!-- 리스트박스 안에 큰제목  -->
			<div class = "watchingListTitle1">
				<p>최근에는</p>
			</div>
			
			<div class = "watchingListTitle2">
				<p>사장님의 특별지시</p>
			</div>
				<p></p>
			<div class = "watchingListTitle3">
				<p>즐겨보니까</p>
			</div>
		</div>
		
		<div id = "watchingListBigBox">	<!-- 리스트박스 안에 큰박스  -->
			<div id = "watchingListBox"> <!--큰박스안에 박스   -->
				<div id= "watchingListTopBox">
					<div id="watchingListTopTitle">
						<p>24화 영이 내려온다</p>
					</div>
				</div>
				
				<div id="watchingListBottomBox" >
					<div id="watchingListBottomBox1">
						<img src= "image/webtoonList/01.Mon/06/main.png">
					</div>
					<div id ="">
					</div>
					
					<div id="watchingListBottomBox2">
						<img src= "image/webtoonList/01.Mon/06/title.png">
					</div>
					
				</div>
			</div>	
		</div>
	</div>
	
	<div id = "similarList">	<!-- 컨테이너 안에서 유사리스트  -->
		<div id= "similarListTitle" > <!--유사 리스트안에 제목박스  -->
			<div></div>
			<div></div>
			<div></div>
		</div>
		
		<div id= "similarListBigBox"> <!--유사 리스트 안에 큰박스  -->
			<div id = "similarListBox"> <!--유사 리스트 박스  -->
				<div></div>
				<div></div>
				<div></div>
			</div>
		</div>
	</div>
</div>