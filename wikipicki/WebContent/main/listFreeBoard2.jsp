<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<jsp:include page="/common/setting.jsp" />
<jsp:include page="/common/toolbar.jsp" />


<title>board</title>

	<style>
		body {
		padding-top: 70px;
		padding-bottom: 30px;
		}
		
		.all{
	   	    width: 100%;
		    margin: 10px auto;
		}
		
		.addBoard {
		    float: left;
		    width:27%;
		    box-sizing: border-box;
		}
		
		.paginationBox{
		    float: left;
		    margin-left: 5%;
		    width:30%;
		    box-sizing: border-box;
		}
	</style>
	<script>
		$(document).on('click', '#addBoard', function(e){
			e.preventDefault();
			location.href = "${pageContext.request.contextPath}/main/addFreeBoard";
		});

		function fn_contentView(boardNo){
			var url = "${pageContext.request.contextPath}/main/getFreeBoard";
			url = url + "?boardNo="+boardNo;
			location.href = url;
		}
		</script>
		<script>
		//이전 버튼 이벤트
		function fn_prev(page, range, rangeSize) {
				var page = ((range - 2) * rangeSize) + 1;
				var range = range - 1;
				var url = "${pageContext.request.contextPath}/main/getFreeBoardList";
				url = url + "?page=" + page;
				url = url + "&range=" + range;
				location.href = url;
		}
	   //페이지 번호 클릭
		function fn_pagination(page, range, rangeSize, searchType, keyword) {
			var url = "${pageContext.request.contextPath}/main/getFreeBoardList";
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			location.href = url;	
		}
		//다음 버튼 이벤트
		function fn_next(page, range, rangeSize) {
			var page = parseInt((range * rangeSize)) + 1;
			var range = parseInt(range) + 1;
			var url = "${pageContext.request.contextPath}/main/getFreeBoardList";
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			location.href = url;
		}





	</script>

	</head>
	<body>
	<article>
	<div class="container">
	<div class="table-responsive">
		<table class="table table-striped table-sm">
		<h2>자유게시판</h2>
	
			<colgroup>
				<col style="width:5%;" />
				<col style="width:auto;" />
				<col style="width:15%;" />
				<col style="width:10%;" />
				<col style="width:10%;" />
				<col style="width:10%;" />
			</colgroup>
			<thead>
				<tr>
					<th>NO</th>
					<th>글제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty FreeBoard}" >
							<tr><td colspan="5" align="center">데이터가 없습니다.</td></tr>
						</c:when> 
						<c:when test="${!empty FreeBoard}">
							<c:forEach var="list" items="${FreeBoard}">
								<tr>
									<td>
										<c:out value="${list.boardNo}"/>
									</td>
									<td>
										<a href="#" onClick="fn_contentView(<c:out value="${list.boardNo}"/>)">
										<c:out value="${list.title}"/>
										</a>
									</td>
									<td>
										<img style="border-radius: 70px;" src="/resources/images/UserImages/${list.userImg.profileImg}" height="20" width="20"/>
									    <c:out value="${list.writer.nickName}"/>
									</td>
									<td>
										<c:out value="${list.hit}"/>
									</td>
									<td>
										<c:out value="${list.regDate}"/>
									</td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
				</tbody>
			</table>
		</div>
	<div class = "all">
		<div class ="addBoard">
			<button type="button" class="btn btn-sm btn-primary" id="addBoard">글등록</button>
		</div>
		<div class ="paginationBox">
		<ul class="pagination">
			<c:if test="${pagination.prev}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
			</c:if>
			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a></li>
			</c:forEach>
			<c:if test="${pagination.next}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}','${pagination.range}', '${pagination.rangeSize}')" >Next</a></li>
			</c:if>
		</ul>
		</div>
	</div>	
</article>
</body>
</html>



