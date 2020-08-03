<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
 <script src="/media/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">

<title>board</title>

	<style>
		body {
		padding-top: 70px;
		padding-bottom: 30px;
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
		function fn_prev(page, range, rangeSize, searchType, keyword) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "${pageContext.request.contextPath}/main/getFreeBoardList";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&searchType=" + searchType;
		url = url + "&keyword=" + keyword;
		location.href = url;
		}

		//페이지 번호 클릭
		function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "${pageContext.request.contextPath}/main/getFreeBoardList";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&searchType=" + searchType;
		url = url + "&keyword=" + keyword;
		location.href = url;
		}

		//다음 버튼 이벤트
		function fn_next(page, range, rangeSize, searchType, keyword) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "${pageContext.request.contextPath}/main/getFreeBoardList";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&searchType=" + searchType;
		url = url + "&keyword=" + keyword;
		location.href = url;
		}
		//검색
		$(document).on('click', '#btnSearch', function(e){
		e.preventDefault();
		var url = "${pageContext.request.contextPath}/main/getFreeBoardList";
		url = url + "?searchType=" + $('#searchType').val();
		url = url + "&keyword=" + $('#keyword').val();
		location.href = encodeURI(url);
		console.log(url);
		});	
		
		
		

	</script>

	</head>
	<body>

	<jsp:include page="/common/toolbar.jsp" />
    	
    	<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <a href="/user/listUser.jsp"><h4 class="page-title"><font size="5em">User List</font></h4></a>
            </div>
        </div>
    <div class="row">
    <div class="col-md-12">
        <div class="white-box">
		
		<!-- form Start /////////////////////////////////////-->
		<form>
			<div class="form-inline form-group" >
				<a id="clickSearch">
                    <i class="fa fa-search"></i>
                </a>
                    <c:if test=""></c:if> 
                    <c:if test="${empty search.keyword}">  
			  			<input type="text" class="form-control mb-4" placeholder="Search Keyword..." aria-describedby="basic-addon1" id="keyword" name="keyword" value=""/>
				    </c:if>
				  <c:if test="${!empty search.keyword}">  
				  	<input type="text" class="form-control mb-4" placeholder="Search Keyword..." aria-describedby="basic-addon1" id="keyword" name="keyword" value="${search.keyword}"/>
				  </c:if>
				  <select class="form-control form-control-line" name="searchType" id="searchType">
					    <option value = "">All</option>
					    <option value = "user_id" ${search.searchType == 'user_id' ? "selected":"" }>ID</option>
					    <option value = "user_name" ${search.searchType == 'user_name' ? "selected":"" }>NAME</option>
					    <option value = "grade" ${search.searchType == 'grade' ? "selected":"" }>GRADE</option>
					    <option value = "user_status" ${search.searchType == 'user_status' ? "selected":"" }>STATUS</option>
					    <option value = "user_type" ${search.searchType == 'user_type' ? "selected":"" }>TYPE</option>
					</select>
			</div>
			<input type="hidden" id="page" name="page" value=""/>
		</form>
		

  
           <div class="table-responsive">
               <table class="table">
                     <thead>
                         <tr>
                             <th>NO</th>
                             <th>글제목</th>
                             <th>작성자</th>
                             <th>조회수</th>                                            
                             <th>작성일</th>
                         </tr>
                     </thead>
                 <tbody id="listUser">
       				<c:set var="i" value="0" />
					  <c:forEach var="user" items="${FreeBoard}">
						<tr>
							<td>${list.boardNo}</td>
							<td>${list.title}</td>
							<td>${list.writer.nickName}</td>
							<td>${list.hit}</td>
							<td>${list.regDate}</td>
						</tr>
			          </c:forEach>     
                  </tbody>
                </table>
            </div>
		</div>
	</div>
			<button type="button" class="btn btn-sm btn-primary" id="addBoard">글등록</button>
</body>
</html>

			<!-- pagination{s} -->
	
	<div id="paginationBox">
		<ul class="pagination">
			<c:if test="${pagination.prev}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}','${pagination.searchType}', '${pagination.keyword }' )">이전</a></li>
			</c:if>
			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
				<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}', '${pagination.searchType}', '${pagination.keyword }')"> ${idx} </a></li>
			</c:forEach>
			<c:if test="${pagination.next}">
				<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}','${pagination.searchType}', '${pagination.keyword }')">다음</a></li>
			</c:if>
	
		</ul>
	<!-- pagination{e} -->
		<!-- search{s} -->
		<div class="form-group row justify-content-center">
			<div class="w100" style="padding-right:10px">
				<select class="form-control form-control-sm" name="searchType" id="searchType">
					<option value="title" >제목</option>
					<option value="Content">본문</option>
					<option value="nickName">작성자</option>
				</select>
			
			<div class="w300" style="padding-right:10px">
				<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
			</div>
			
			<div>
				<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
			</div>
		</div>
		<!-- search{e} -->
	</div>
</article>
</body>
</html>


