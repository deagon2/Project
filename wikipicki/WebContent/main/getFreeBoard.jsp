<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<jsp:include page="/common/toolbar.jsp" />

<!DOCTYPE html>
<html>
<head>
<c:url var="addComment" value="${pageContext.request.contextPath}/main/addComment}">
</c:url>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
<meta charset="UTF-8">

<title>board</title>

<script type="text/javascript">

	$(document).on('click', '#btnList', function(){
		location.href = "${pageContext.request.contextPath}/main/getFreeBoardList";
	});
	
	$(document).on('click', '#btnUpdate', function(){
		var url = "${pageContext.request.contextPath}/main/updateFreeBoard";
		url = url + "?boardNo="+${freeBoard.boardNo};
		location.href = url;
	});
	
	$(document).on('click', '#btnDelete', function(){
    var url = "${pageContext.request.contextPath}/main/deleteFreeBoard";
    url = url + "?boardNo=" + ${freeBoard.boardNo};
		location.href = url;
	});
	
//댓글리스트
	$(function(){
	    getCommentList();
	});
	function getCommentList(){
			var url = "${pageContext.request.contextPath}/main/rest/getCommentList";
			var paramData = {"boardNo" : "${freeBoard.boardNo}"};
			$.ajax({
	            type: 'POST',
	            url: url,
	            data: paramData,
	            dataType: 'json',
	            success: function(result) {
	            	console.log(result);
	               	var htmls = "";
				if(result.length < 1){
					htmls.push("등록된 댓글이 없습니다.");
				} else {
					for(var i in result){
		                     htmls += '<div class="media text-muted pt-3" id="commentNo' + result[i].commentNo + '">';
		                     htmls += '<svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder:32x32">';
		                     htmls += '<title>프로필사진</title>';
		                     htmls += '<img style="border-radius: 70px;" height="35" width="35" src="/resources/images/userimages/'+result[i].userImg.profileImg+'"/>';
		                     htmls += '<rect width="100%" height="100%" fill="#007bff"></rect>';
		                     htmls += '</svg>';
		                     htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';
		                     htmls += '<span class="d-block">';
		                     htmls += '<strong class="text-gray-dark">' + result[i].writer.nickName + '</strong>';
		                     htmls += '<span style="padding-left: 7px; font-size: 9pt">';
		                     htmls += '<a href="javascript:void(0)" onclick="fn_editReply(' + result[i].commentNo + ', \'' + result[i].userId + '\', \'' + result[i].content + '\' )" style="padding-right:5px">수정</a>';
		                     htmls += '<a href="javascript:void(0)" onclick="fn_deleteReply(' + result[i].commentNo + ')" >삭제</a>';
		                     htmls += '</span>';
		                     htmls += '</span>';
		                     htmls += result[i].content;
		                     htmls += '&nbsp;&nbsp;&nbsp;('+result[i].regDate+')';
		                     htmls += '</p>';
		                     htmls += '</div>';
						}
					}
				$("#commentList").html(htmls);
	            }	   // Ajax success end
			});	// Ajax end
		}

	//댓글작성
	$(document).on('click', '#addComment', function(){
		var Content = $('#content').val();
		var paramData = JSON.stringify({"content": Content
				, "userId": '${sessionScope.UserId}'
				, "boardNo":'${freeBoard.boardNo}'
		});
		var headers = {"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "POST"};
		console.log(paramData);
		$.ajax({
			url: "${pageContext.request.contextPath}/main/rest/addComment"
			, headers : headers
			, data : paramData
			, type : 'POST'
			, dataType : 'text'
			, success: function(result){
				getCommentList();
				$('#content').val('');
			}
			, error: function(error){
				console.log("에러 : " + error);
			}
		});
	});
	//수정
	function fn_updateReply(commentNo, userId){
		var replyEditContent = $('#editContent').val();
		var paramData = JSON.stringify({"content": replyEditContent
				, "userId": '${sessionScope.UserId}'	
				, "commentNo": commentNo
		});
		var headers = {"Content-Type" : "application/json"
				
				, "X-HTTP-Method-Override" : "POST"};
		
		console.log(paramData);
		$.ajax({
			url: "${pageContext.request.contextPath}/main/rest/updateComment"
			, headers : headers
			, data : paramData
			, type : 'POST'
			, dataType : 'text'
			, success: function(result){
                 console.log(result);
                 getCommentList();
			}
			, error: function(error){
				console.log("에러 : " + error);
			}
		});
	}
	function fn_editReply(commentNo, userId, content){
		var htmls = "";
	 	htmls += '<div class="media text-muted pt-3" id="commentNo' + commentNo + '">';
		htmls += '<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">';
		htmls += '<span class="d-block">';
		htmls += '<span style="padding-left: 7px; font-size: 9pt">';
		htmls += '<a href="javascript:void(0)" onclick="fn_updateReply(' + commentNo + ', \'' + userId + '\')" style="padding-right:5px">저장</a>';
		htmls += '<a href="javascript:void(0)" onClick="showReplyList()">취소<a>';
		htmls += '</span>';
		htmls += '</span>';		
		htmls += '<textarea name="editContent" id="editContent" class="form-control" rows="3">';
		htmls += content;
		htmls += '</textarea>';
		htmls += '</p>';
		htmls += '</div>';
		$('#commentNo' + commentNo).replaceWith(htmls);
		$('#commentNo' + commentNo + ' #editContent').focus();
	}
//삭제
	function fn_deleteReply(commentNo){
		var paramData = {"commentNo": commentNo	};
		$.ajax({
			url: "${pageContext.request.contextPath}/main/rest/deleteComment"
			, data : paramData
			, type : 'POST'
			, dataType : 'text'
			, success: function(result){
				getCommentList();
			}
			, error: function(error){
				console.log("에러 : " + error);
			}
		});
	}

	</script>








<style>
body {
 	 padding-top: 70px;
	  padding-bottom: 30px;
	}
	.board_title {
		font-weight : 700;
		font-size : 22pt;
		margin : 10pt;
	}
	.board_info_box {
		color : #6B6B6B;
		margin : 10pt;
	}
	.board_author {
		font-size : 10pt;
		margin-right : 10pt;
	}
	.board_date {
		font-size : 10pt;
	}
	.board_content {
		color : #444343;
		font-size : 12pt;
		margin : 10pt;
	}
</style>

</head>
<body>
	<article>
		<div class="container" role="main">
			<h2>상세보기</h2>

			<div class="bg-white rounded shadow-sm">
				<div class="board_title"><c:out value="${freeBoard.title}"/></div>
				<div class="board_info_box">
					<span class="board_author"><c:out value="${freeBoard.writer.nickName}"/>,</span><span class="board_date"><c:out value="${freeBoard.regDate}"/></span>
				</div>
				<div class="board_content">${freeBoard.content} 
				<img src="/resources/images/FreeBoardImages/${freeBoard.imgFile}">
				</div>

			
			<div style="margin-top : 20px">
				<button type="button" class="btn btn-sm btn-primary" id="btnUpdate">수정</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnDelete">삭제</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
			</div>
		</div>
		<!-- Reply Form {s} -->
			<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
				<form:form name="form" id="form" role="form" modelAttribute="comment" method="post">
				<form:hidden path="boardNo" id="boardNo"/>
				<div class="row">
					<div class="col-sm-10">
						<form:textarea path="content" id="content" class="form-control" rows="3" placeholder="댓글을 입력해 주세요"></form:textarea>
					</div>
					<div class="col-sm-2">
						<button type="button" class="btn btn-sm btn-primary" id="addComment" style="width: 100%; margin-top: 10px"> 등 록 </button>
					</div>
				</div>
				</form:form>
			</div>
			<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
				<h6 class="border-bottom pb-2 mb-0">commentList</h6>
				<div id="commentList"></div>
			</div> 
			<!-- Reply List {e}-->
		</div>		
	</article>
</body>
</html>



