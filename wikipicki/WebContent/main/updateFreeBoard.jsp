<%@page import="com.wikipicki.service.domain.FreeBoard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- jQuery -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<title>board</title>

	<script>
		$(document).ready(function(boardNo){
			$("#updateBoard").click(function(){
				var title = $("#title").val();
				var content = $("#content").val();
				if(title == ""){
					alert("제목을 입력하세요.");
					document.form.title.focus();
					return;
				}
				if(content == ""){
					alert("내용을 입력하세요.");
					document.form.title.focus();
					return;
				}
				$("#form").submit();
				//location.href="${pageContext.request.contextPath}/main/updateFreeBoard";
			});
		});
		
		$(document).on('click', '#freeBoardList', function(e){
			e.preventDefault();
			location.href="${pageContext.request.contextPath}/main/getFreeBoardList";
		});
	
	</script>
	<style>
	body {
	  padding-top: 70px;
	  padding-bottom: 30px;
		}
	</style>
	
	</head>
	<jsp:include page="/common/toolbar.jsp" />	
	<body>
	<article>
		<div class="container" role="main"  >
			<h2>글 수정</h2>
			<form name="form" id="form" role="form" enctype="multipart/form-data" method="post" action="${pageContext.request.contextPath}/main/updateFreeBoard">
					<input type="hidden" name="boardNo" value="${FreeBoard.boardNo}"/>
				<div class="mb-3">
					<label for="title">제목</label>
					<input type="text" class="form-control" name="title" id="title" value="${FreeBoard.title}" >
				</div>
				<div class="mb-3">
					<label for="nickName">작성자</label>
					<input type="text" class="form-control" name="userId" id="userId" value="${sessionScope.UserId}" readonly > 
				</div>
				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" name="content" id="content"  >${FreeBoard.content}</textarea>
				</div>
				<div class="mb-3">
					<label for="file">첨부파일</label>
					<input type="file" class="form-control" name="files" id="imgFile" >
				</div>
			</form>
			<div >
				<button type="button" class="btn btn-sm btn-primary" id="updateBoard">수정</button>
				<button type="button" class="btn btn-sm btn-primary" id="freeBoardList">취소</button>
			</div>
		</div>
	</article>
</body>
</html>



