<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> header와 footer 삽입하기</title>
</head>
<body>
		<!-- ##################  -->
		<!-- 페이지 삽입  -->
		<%@ include file ='01_header.jsp' %>
		<hr/>
		<jsp:include page="01_header.jsp"/>
		
		
		<hr><hr>
		<!-- 메인 내용 시작  -->
		
		<div id="content">
			<div class="location">
				<h3><img src="./imgs/tit_0103.gif" alt="한 &#183 일간 울릉도쟁계와 우리의 독도 영유권 확인" /></h3>
				<p> <strong> 일본의 독도 인식</strong></p>
			</div>
			<div class="content_view">
				<div class="cont_box">
					<div class="inner">
						<h4><img src="./imgs/txt_0301.gif" alt="가. 17세기 한 &#183 일 양국 정부간 교섭(울릉도쟁계) 과정을 통해 울릉도와 그 부속섬 독도가 우리나라 영토임이
 확인되었습니다." /></h4>
						<ul class="list">
							<li>17세기 일본 돗토리번(鳥取藩)의 오야(大谷) 및 무라카와(村川) 양가는 조선 영토인 울릉도에서 불법 어로행위를 하다가 1693년 울릉도에서 <a href="#" onclick="goto_page('0020105')"><strong>안용복</strong></a>을 비롯한 조선인들과 만나게 되었습니다. </li>
							<li>양가는 일본 정부(에도 막부)에 조선인들의 울릉도 도해(渡海)를 금지해달라고 청원하였고, 막부가 <span class="let02">쓰시마번(對馬藩)에</span> 조선 정부와의 교섭을 지시함에 따라 양국간 교섭이 개시되는데, 이를 ‘울릉도쟁계’라 합니다.</li>
							<li>에도 막부는 1695년 12월 25일 돗토리번에 대한 조회를 통해 “울릉도(죽도)와 독도(송도) 모두 돗토리번에 속하지 않는다”는 사실을 확인한 후(<a href="#" onclick="goto_page('0020104')"><strong>「돗토리번 답변서」</strong></a>), 1696년 1월 28일 일본인들의 울릉도 방면 도해를 금지하도록 지시하였습니다. </li>
							<li>이로써 한&#183;일 양국간 분쟁은 마무리되었고, 울릉도쟁계 과정에서 <span class="let02">울릉도와 독도가 우리나라 영토임이 확인되었습니다.</span></li>
						</ul>
						<h4><img src="./imgs/txt_0302.gif" alt="나. 1905년 시마네현 고시에 의한 독도 편입 시도 이전까지 일본 정부는 독도가 자국 영토가 아니라는 인식을 유지하고 있었으며, 이는 1877년『태정관지령』을 비롯한 일본 정부의 공식 문서를 통해 확인됩니다." /></h4>
						<ul class="list">
							<li>한 &#183; 일간 ‘울릉도쟁계’를 통해 독도가 한국 영토임이 확인된 이래, 근대 메이지 정부에 이르기까지 일본 정부는 독도가 자국 영토가 아니라는 인식을 유지하고 있었습니다. </li>
							<li>이는 1905년 시마네현 고시에 의한 일본의 독도 편입 시도 이전까지 독도가 일본 영토라고 기록한 일본 정부의 문헌이 없고, 오히려 일본 정부의 공식 문서들이 독도가 일본의 영토가 아니라고 명백히 기록하고 있는 사실을 통해 잘 알 수 있습니다.</li>
							<li>대표적으로, 1877년 메이지 시대 일본의 최고행정기관이었던 태정관(太政官)은 에도 막부와 조선 정부간 교섭(울릉도쟁계) 결과 울릉도와 독도가 일본 소속이 아님이 확인되었다고 판단하고, <span class="let02">“죽도(울릉도) 외 일도(一嶋: 독도)는 일</span>본과 관계가 없다는 것을 명심할 것을 내무성에 지시하였습니다. <a href="#" onclick="goto_page('0020107')"><strong>(『태정관지령』)</strong></a></li>
							<li>내무성이 태정관에 질의할 때 첨부하였던 지도인「기죽도약도(磯竹島略圖, 기죽도는 울릉도의 옛 일본 명칭)」에 죽도(울릉도)와 함께 송도(독도)가 그려져 있는 점 등에서 위에서 언급된 ‘죽도 외 일도(一嶋)’의 일도(一嶋)가 독도임은 명백합니다.</li>
						</ul>
						<div class="center">
							<a href="#"><img src="./imgs/img_06.gif" alt="태정관지령" /></a>
							<a href="#"><img src="./imgs/img_07.gif" alt="기죽도약도" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 메인 내용 끝  -->
		<hr><hr>
		
		<!-- ##################  -->
		<!-- 페이지 삽입  -->
		
		<%@ include file ='01_footer.jsp' %> 
		<!-- 정적 -->
		<jsp:include page="01_footer.jsp"/>
		<!-- 동적 -->

</body>
</html>