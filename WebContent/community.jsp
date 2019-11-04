	<%@page import="java.util.Vector"%>
<%@page import="java.util.List"%>
<%@page import="datadto.GuestBookDto"%>
<%@page import="dataDb.GuestBookDB"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Fourket : 커뮤니티</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link href="css/community.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<script>
	$(function(){
    	list();
    	
        $("#qaboard").hide();
        $("#guestboard").hide();
      
        
        $("#free").click(function(){
           $("#freeboard").show(); 
            $("#qaboard").hide();
            $("#guestboard").hide();
        });
        
        $("#qa").click(function(){
           $("#qaboard").show(); 
            $("#freeboard").hide();
            $("#guestboard").hide();
        });
        
        $("#guest").click(function(){
           $("#guestboard").show(); 
            $("#qaboard").hide();
            $("#freeboard").hide();
        }); 
        
        $("#menu_but").click(function(){
	        $(".side_menu").css("right","0px");
	    }) ;
	 
	     $("#close_but").click(function(){
	        $(".side_menu").css("right","-350px"); 
	     });
	     
	     
	     
	     $("#enter_but").click(function(){
	    	 
	    	 var subject = $('#subject').val();
	    	 
	    	 $.ajax({
	    		type: "post",
	    		url: "guestbook_insert.jsp",
	    		dataType: "xml",
	    		data: {"subject":subject},
	    		
	    		success : function(data){
					$("#subject").val("");
					$("#subject").focus();
					// 추가후 메모리스트 다시 출력
					list();
				},
				
				statusCode : {
					404: function(){
						alert("url을 찾을수 없어요");
					},
					500: function(){
						alert("서버 오류");
					}
				}
				
	    	 });
	     });
	     
	    
    });
	
	 function list()
     {
    	 $.ajax({
				type: "get",
				url: "community_list.jsp",
				dataType: "xml",
				
				success: function(data)
				{
					var str = "";
					
					$(data).find("memodata").each(function(){
						var s = $(this);
						str += "<div>";
						str += "<p class='name_date'>";
						str += "<span>" + s.find("nickname").text() + "</span>";
						str += "<span>" + s.find("wdate").text() + "</span>";
						str += "</p>";
						str += "<p>" + s.find("subject").text() + "</p>";
						str += "</div>";
					});
					$("#guest_list").append(str);
					
				},
				statusCode : {
					404: function(){
						alert("url을 찾을수 없어요");
					},
					500: function(){
						alert("서버 오류");
					}
				}
			});
     }
</script>
</head>
<body>
<%
	GuestBookDB db = new GuestBookDB();

	List<GuestBookDto> list = new Vector<>();
%>
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>
	<div class="container">
		<div class="cm_title">
			<p>Fourket Commnuity</p>
		</div>
		<div class="text_list_but">
			<p id="free">자유게시판</p>
			<p id="qa">Q&A</p>
			<p id="guest">방명록</p>
		</div>
		<div class="text_list" id="freeboard">
			<table>
				<tr class="title" style="height: 50px;">
					<td style="width: 80px;">번호</td>
					<td style="width: 1000px;">제목</td>
					<td style="width: 100px;">이름(닉네임)</td>
					<td style="width: 90px;">작성일</td>
					<td style="width: 80px;">조회수</td>
				</tr>
				<tr class="info" style="height: 50px;">
					<td>1</td>
					<td>제목 나오는 부분</td>
					<td>작성자</td>
					<td>2019-10-30</td>
					<td>조회수</td>
				</tr>
			</table>
			<div class="but_line">
				<p>글쓰기</p>
			</div>
		</div>
		<div class="text_list" id="qaboard">
			<table>
				<tr class="title" style="height: 50px;">
					<td style="width: 80px;">번호</td>
					<td style="width: 1000px;">제목</td>
					<td style="width: 100px;">이름(닉네임)</td>
					<td style="width: 90px;">작성일</td>
					<td style="width: 80px;">답변여부</td>
				</tr>
				<!-- <tr class="info" style="height: 50px;">
					<td>1</td>
					<td>제목 나오는 부분</td>
					<td>작성자</td>
					<td>2019-10-30</td>
					<td>O</td>
				</tr> -->
			</table>
			<div class="but_line">
				<p>글쓰기</p>
			</div>
		</div>
		<div class="text_list" id="guestboard">
			<div class="text_enter">
	           <textarea class="lineword" id="subject" placeholder="한줄짜리 글을 남겨보세요" autofocus="autofocus"></textarea>
	            <!-- <p class="enter_but" id="enter_but">메모하기</p> -->
	            <button class="enter_but" id="enter_but">메모하기</button>
	       </div>
	       <div id="guest_list" class="guest_list">
	       		
	       </div>
		</div>
	</div>
<<<<<<< HEAD
	<script>
    $(document).ready(function(){
    	list();
    	
        $("#qaboard").hide();
        $("#guestboard").hide();
      
        
        $("#free").click(function(){
           $("#freeboard").show(); 
            $("#qaboard").hide();
            $("#guestboard").hide();
        });
        
        $("#qa").click(function(){
           $("#qaboard").show(); 
            $("#freeboard").hide();
            $("#guestboard").hide();
        });
        
        $("#guest").click(function(){
           $("#guestboard").show(); 
            $("#qaboard").hide();
            $("#freeboard").hide();
        }); 
        
        $("#menu_but").click(function(){
	        $(".side_menu").css("right","0px");
	    }) ;
	 
	     $("#close_but").click(function(){
	        $(".side_menu").css("right","-350px"); 
	     });
	     
	     
	     
	     $("#enter_but").click(function(){
	    	 $.ajax({
	    		type: "post",
	    		url: "guestbook_insert.jsp",
	    		dataType: "xml",
	    		data : {"subject":subject},
	    		
	    		success : function(data){
					var str = "";

					
					// 추가후 메모리스트 다시 출력
					list();
				},
				
				statusCode : {
					404: function(){
						alert("url을 찾을수 없어요");
					},
					500: function(){
						alert("서버 오류");
					}
				}
				
	    	 });
	     });
	     
	     function list()
	     {
	    	 $.ajax({
					type: "get",
					url: "community_list.jsp",
					dataType: "xml",
					
					success: function(data)
					{
						var str = "";
						
						$(data).find("memodata").each(function(){
							var s = $(this);
							str += "<div>";
							str += "<p class='name_date'>";
							str += "<span>" + s.find("nickname").text() + "</span>";
							str += "<span>" + s.find("wdate").text() + "</span>";
							str += "</p>";
							str += "<p>" + s.find("subject").text() + "</p>";
							str += "</div>";
						});
						$("#guest_list").append(str);
						
					},
					statusCode : {
						404: function(){
							alert("url을 찾을수 없어요");
						},
						500: function(){
							alert("서버 오류");
						}
					}
				});
	    	 
	    	 $.ajax({
					type: "get",
					url: "qna_list.jsp",
					dataType: "xml",
					
					success: function(data)
					{
						var str = "";
					
						
						$(data).find("qnadata").each(function(){
							var s = $(this);
							str += "<td>"+s.find("num")+"</td><br>";
							str += "<td>"+s.find("title")+"</td><br>";
							str += "<td>"+s.find("write_date")+"</td><br>";
							
						});
						$("#qaboard").append(str);
						
					},
					statusCode : {
						404: function(){
							alert("url을 찾을수 없어요");
						},
						500: function(){
							alert("서버 오류");
						}
					}
				});
	     }
    });
</script>
=======
	
>>>>>>> refs/remotes/origin/master
</body>
</html>