<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 회원전용 페이지 header : 로그인 정보가 없으면 로그인페이지로 이동. 페이지 조회 불가능하도록 -->

<c:choose>
			<c:when test="${loginInfo ==null}">
				<script>
				alert("로그인이 필요한 페이지입니다.");
				location.href = "member/login.jsp"
				</script>
			</c:when>
</c:choose>
		
		
<div class="row mb-2">
    <div id="loginBtn" class="col-12 p-1 text-right">
        <button id=logout class="btn btn-sm btn-outline-secondary">로그아웃</button>
    </div>
</div>
<div class="row">
    <div id="title" class="col-12 mb-3 p-1 text-center">
        <a href="../main/index.jsp"><img id="logo" src="../imgs/logo.png" class="col-12"></a>
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
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/boardNotice.bo">공지사항</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../search/hospitalSearchView.jsp">병원검색</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/boardExpert.bo">전문가Q&amp;A</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            커뮤니티
                        </a>
                        <div class="dropdown-menu text-center" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/boardFree.bo">자유게시판</a>
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/boardQuestion.bo">질문게시판</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            마이페이지
                        </a>
                        <div class="dropdown-menu text-center" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/mypageInfo.member">내 정보</a>
                            <a class="dropdown-item" href="#">내 후원보기</a>
                            <a class="dropdown-item" href="#">1 : 1 문의</a>
                            <a class="dropdown-item" href="../member/mypageWithdrawal.jsp">회원 탈퇴</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>

<script>
$("#login").on("click",function(){
    location.href="../member/login.jsp"
})
$("#join").on("click",function(){
    location.href="../member/signup.jsp"
})
$("#donate").on("click",function(){
    location.href="../donate/donateForm.jsp"
})
</script>