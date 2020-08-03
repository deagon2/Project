<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

	<style>
       li{
            margin: auto;
        }
    </style>
    
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<script type="text/javascript">

//login event con
	$(function(){
	
	$("#join").on("click", function(){
		self.location = "/user/selectJoin.jsp";
		});
	$("#find").on("click", function(){
		self.location = "/user/getUserId.jsp";
		});	
	}); 
	
	//kakao 연동하기
	$( function() {
        $("#connect").on("click", function(){
        	alert('kakao');
            self.location = "https://kauth.kakao.com/oauth/authorize?client_id=0dba1a1dd2afb93241376eef729d4dae&redirect_uri=http://127.0.0.1:8080/user/kakaoLink&response_type=code";
        })
    });
		
	//kakao logout
	$(function(){
        $("#kakaoLogout").on("click", function(){
            $(self.location).attr("href", "https://kauth.kakao.com/oauth/logout?client_id=0dba1a1dd2afb93241376eef729d4dae&logout_redirect_uri=http://127.0.0.1:8080/user/logout");
        })
    
    });
	
</script>
</head>

<body>
	<jsp:include page="/common/setting.jsp" />
	<div id="wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
                    <!-- Logo -->
                    <a class="logo" href="/index.jsp">
                        <!-- Logo icon image, you can use font-icon also -->
                        <b>
                            <!--This is dark logo icon-->
                            <img src="/resources/plugins/images/admin-logo.png" alt="home" class="dark-logo" />
                            <!--This is light logo icon-->
                            <img src="/resources/plugins/images/admin-logo-dark.png" alt="home" class="light-logo" />
                        </b>
                        <!-- Logo text image you can use text also -->
                        <span class="hidden-xs">
                            <!--This is dark logo text-->
                            <img src="/resources/plugins/images/admin-text.png" alt="home" class="dark-logo" />
                            <!--This is light logo text-->
                            <img src="/resources/plugins/images/admin-text-dark.png" alt="home" class="light-logo" />
                        </span> 
                    </a>
                </div>
                <!-- /Logo -->
                <ul class="nav navbar-top-links navbar-right pull-right">
                    <li>
                        <a class="nav-toggler open-close waves-effect waves-light" href="javascript:void(0)"><i class="fa fa-bars"></i></a>
                    </li>
                    <li>

                        <form role="search" class="app-search hidden-sm hidden-xs m-r-10">
                            <input type="text" placeholder="Search..." class="form-control"> 
                            <a href="">
                                <i class="fa fa-search"></i>
                            </a> 
                        </form>

                    </li>       
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
   </div>
</body>