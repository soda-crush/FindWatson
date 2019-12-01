<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찾아줘 왓슨!</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
* {
	box-sizing: border-box
}
/*            div{border: 1px solid black}*/
#logo {
	width: 500px;
	height: 100px;
	margin: auto;
}

#footer>div {
	height: 100%;
}

#footer-logo>div {
	height: 100%;
}

#footer-contents {
	font-size: 8pt;
}

.nav-item {
	display: inline-block;
	width: 100%;
	text-align: center;
}

.navbar-nav {
	width: 100%;
}

#category {
	width: 100%;
	height: 100%;
}

.search-box>* {
	width: 100%;
}

.write-box>* {
	width: 100%;
}

#article, .line {
	border: 0.5px solid lightgray;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row mb-2">
    <div id="loginBtn" class="col-12 p-1 text-right">
        <button class="btn btn-sm btn-outline-secondary">로그아웃</button>
    </div>
</div>
<div class="row">
    <div id="title" class="col-12 mb-3 p-1 text-center">
        <img id="logo" src="imgs/logo.png" class="col-12">
    </div>
</div>
<div class="row">
    <div id="navi" class="col-12 mb-3 p-1">
        <nav class="p-0 navbar navbar-expand-sm navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link"
								href="#" id =notice>공지사항</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#"
								id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> 병원관리 </a>
								<div class="dropdown-menu text-center"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="#">병원정보 등록</a> <a
										class="dropdown-item" href="#">병원정보 수정/삭제</a> <a
										class="dropdown-item" href="#">병원리뷰</a>
								</div></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#"
								id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> 게시판관리 </a>
								<div class="dropdown-menu text-center"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item"
										id =expert>전문가Q&A</a>
									<a class="dropdown-item" id=free>자유게시판</a> <a
										class="dropdown-item" id=question>질문게시판</a> <a
										class="dropdown-item" href="#">1:1문의게시판</a>
								</div></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#"
								id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> 회원관리 </a>
								<div class="dropdown-menu text-center"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" id=memberList>회원목록조회</a> <a
										class="dropdown-item" id=banList>차단 IP 조회</a> <a
										class="dropdown-item" href="#">회원 통계</a>
								</div></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!--            -->
		<div class="row">
			<div class="col-12 mb-3" id="article">
				<div class="row">
					<div id="article-middle" class="col-12 mt-2">
						<div class="row mb-3 p-1 text-center">
							<h3 id="board-top" class="col-auto col-sm-4 m-0">자유게시판</h3>
							<span class="col-auto col-sm-8 mt-2">자유롭게 소통하는 공간 입니다.</span>
						</div>
						<div class="row line">
							<div class="col-1 d-none d-md-block"></div>
							<div class="col-md-2 d-none d-md-block">말머리</div>
							<div class="col-md-5 d-none d-md-block">제목</div>
							<div class="col-md-2 d-none d-md-block">작성자</div>
							<div class="col-md-2 d-none d-md-block">작성날짜</div>
						</div>
						<!-- 게시글 목록 -->
						<c:choose>
							<c:when test="${list.size() == 0}">게시물이 없습니다.</c:when>
							<c:when test="${list.size() > 0}">
								<c:forEach items="${list}" var="dto">
									<div class="row line">
										<div class="col-1 d-none d-md-block">1</div>
										<div class="col-md-2 d-none d-md-block">
											${dto.animalHeader}</div>
										<div class="col-8 col-md-5 text-left">${dto.title}</div>
										<!-- 모바일에서만 보이는 div -->
										<div class="col-4 d-block d-md-none">${dto.animalHeader}</div>
										<!-- 모바일에서만 보이는 div -->
										<div class="col-6 col-md-2 text-left">${dto.writer}</div>
										<div class="col-6 col-md-2 text-center">
											${dto.writeDate}</div>
									</div>
								</c:forEach>
							</c:when>
						</c:choose>
						<div class="row">
							<div class="col-12 text-center">${pageNavi}</div>
						</div>
						<!-- -->
						<div class="row mb-2">
							<div class="col-auto col-sm-2 p-1">
								<select id="category">
									<option value="">제목</option>
								</select>
							</div>
							<div class="search-box col-auto col-sm-6 p-1">
								<input type="text" class="" id="search" name="search" value="">
							</div>
							<div class="search-box col-auto col-sm-2 p-1">
								<button class="btn btn-sm btn-outline-secondary">검색</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--            -->
		<div class="row">
    <div id="footer" class="col-12">
        <div class="row p-1">
            <div id="footer-logo" class="col-4">
                <img id="logo" src="${pageContext.request.contextPath}/imgs/logo.png" class="d-none d-sm-block col-12">
            </div>
            <div id="footer-contents" class="col-8">
                <div class="row">
                    <div class="col-6 col-sm-auto"><a href="#">회사소개</a></div>
                    <div class="col-6 col-sm-auto"><a href="#">이용약관</a></div>
                    <div class="col-6 col-sm-auto"><a href="#">개인정보취급방침</a></div>
                    <div class="col-6 col-sm-auto"><a href="#">저작권안내</a></div>
                    <div class="col-12 col-sm-auto"><a href="#">후원하기</a></div>
                </div>
                <div class="row">
                    <div class="col-12">
                        상호명 : 찾아줘 왓슨! | 대표자 : 왓슨 | 사업자등록번호 : 100-12-191205
                    </div>
                    <div class="col-12">
                        주소 : 서울 중구 남대문로 120 대일빌딩 3층 F Class 대표전화 02-1544-9970
                    </div>
                    <div class="col-12">
                        Copyright(c) 2019 찾아줘 왓슨! All Rights Reserved.</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
        	
	//각 버튼별 주소이동
	$("#logo").on("click", function() {
		location.href = "${pageContext.request.contextPath}/mainAdmin.jsp";
	});
	//공지사항으로 이동
	$("#notice").attr("href", "${pageContext.request.contextPath}/boardNotice.admin");
	//전문가 Q&A로 이동
	$("#expert").attr("href", "${pageContext.request.contextPath}/boardExpert.admin");
	//자유게시판으로 이동
	$("#free").attr("href", "${pageContext.request.contextPath}/boardFree.admin");
	//질문게시판으로 이동
	$("#question").attr("href", "${pageContext.request.contextPath}/boardQuestion.admin");
	//회원목록조회로 이동
	$("#memberList").attr("href", "${pageContext.request.contextPath}/adminMemberList.admin");
	//차단한ip목록조회로 이동
	$("#banList").attr("href", "${pageContext.request.contextPath}/adminBanList.admin");
        </script>
</body>
</html>