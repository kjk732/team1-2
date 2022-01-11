<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="b" tagdir="/WEB-INF/tags/"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>${post.title}-${post.nickname}</title>

<!-- 게시물 상세보기 페이지 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<style>
a {
	text-decoration: none;
	color: inherit;
}

a:hover {
	text-decoration: none;
	color: inherit;
}

#body {
	height: 120vh;
	/* height: calc(100vh-72px); */
	width: 100%;
	justify-content: center;
	display: flex;
}

#inner {
	border: 2px;
	width: 900px;
	height: auto%;
}

#postBody {
	width: 100%;
	border: 3px solid #264d73;
	border-radius: 10px;
	margin-top: 5px;
	background-color: #eef2f6;
	margin-bottom: 40px;
	padding-block: 15px;
	padding-right: 15px;
	padding-left: 15px;
	/* letter-spacing: 1px; */
}

.상세보기-헤더 {
	padding-bottom: 10px;
}

.상세보기-게시물-내용 {
	border-bottom-color: darkgray;
	border-bottom-style: solid;
	margin-bottom: 10px;
}

.게시물-조회수-작성시간 {
	font-weight: 200;
	font-size: 17px;
}

#tag {
	font-size: large;
	font-weight: bold;
	text-align: center;
	justify-content: center;
	border-radius: 5px;
	border: 3px solid #f0615c;
	background-color: white;
}

#userprofile {
	height: 60px;
	width: 60px;
}

#buttonmenu {
	margin-bottom: 10px;
}

.상세보기-제목{
font-weight: bold;
}
.상세보기-업로드이미지-테두리 {
	border: solid;
}

.상세보기-업로드이미지-배경 {
	color: black;
	background-color: #ffe164;
	border-top-right-radius: 8px;
	border-top-left-radius:8px;
	border-top:none;
	border-bottom:none;
}
#id{
font-size: large;
}
.게시글-수정-삭제,.게시글-뒤로가기{
background-color: #264d73;
color:white;
font-weight: bold;

}
.table th{
border-bottom: none;
}

.상세보기-이미지 {
	width: 50%;
}

/* 댓글 관련------------------------------------- */
#replyhead{
	background-color: #ffe164;
}
#replybody{
	background-color: white;
}
.replyinput {
	padding-block: 15px;
	padding-inline: 0px;
}

#replyTextarea{
padding:5px;
border: 2px solid #264d73;

}
#sendReply {
	margin-top: 15px;
	height: 60px;
	padding-top: 12px;
	background-color: #ffe164;
	color: black;
}

.상세보기-댓글칸 {
	padding-right: 0px;
}

#replynickname {
	width: 460px;
}

#replymenu {
	width: 105px;
}

#replytime {
	width: 220px;
	vertical-align: middle;
	font-weight: 100;
}

#replyModify {
	width: 40px;
}

.댓글아이콘 {
	border-bottom: solid 2px;
	margin: 0px;
}

.댓글입력창 {
	border-bottom: solid 2px;
	margin: 0px;
}
/* 댓글 관련 끝 ----------------------------------*/

/* 대댓글 관련 ----------------------------------*/
#rereplyhead{
	background-color: #ffe164;
}
#rereplybody{
	background-color: white;
}
.rereplyinput {
	padding-block: 15px;
	padding-inline: 0px;
}

.re-reply-input{
padding:5px;
border: 2px solid #264d73;

}
.send-rereply-btn{
	background-color: #ffe164;
	color: black;
	height: 64px;
	border: 2px solid #264d73;
}
/* 대댓글 관련 끝 ----------------------*/
</style>
</head>
<body>

	<b:header></b:header>
	<div id="body">
		<div id="inner">
			<b:innerNav></b:innerNav>
			<div id="postBody">
				<div class="container-fluid 상세보기-게시물-내용">
					<!-- 헤더 -->
					<div class="row md ms-4 px-2 align-middle 상세보기-헤더 상세보기-게시물-내용">
						<div class="col-md-1 px-1 py-0 my-0">
							<img id="상세보기-프로필" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-iBqF1VCpU79WLGw_qgx0jFSuMlmLRTO25mJkJKqJ7KArrxjWB-eu2KQAFrOdW2fFKso&usqp=CAU" class="img-thumbnail rounded-circle mx-auto d-block " alt="..." />
						</div>
						
						<div class="col-md-5 my-auto h2 align-middle 상세보기-제목"> 
							<a href = "${pageContext.request.contextPath }/user/profile/${post.nickname}"> ${post.nickname} </a>
						</div>

						<div class=" my-auto h4 ml-auto 게시물-조회수-작성시간">
							<i class="fas fa-eye "></i>
							${post.views } ||
							<i class="far fa-calendar-alt"></i>
							${post.inserted}
							<c:if test="${post.inserted ne post.updated}">(수정됨)</c:if>
						</div>
					</div>

					<!-- body -->
					<div class="row md ms-4 my-2 align-middle">

						<!-- tag -->
						<div class="col-md-2 my-auto px-auto 상세보기-태그">
							<div id="tag">${post.tag }</div>
						</div>
						<!-- 제목  -->
						<div class="col-md-10 h4 my-auto 상세보기-제목">
							<c:out value="${post.title}" />
						</div>
						<div class="row md mx-3 my-2 ">
							<div id="line"></div>
						</div>
						<!-- 내용  -->

					</div>
					<div id="내용" class="h4 my-auto ">
						<pre><c:out value="${post.content}" /></pre>
					</div>
				</div>

				<!-- footer -->
				<div class="row md mx-4 d-flex justify-content-center">
					<div id="upview" class="col-md-4 d-flex justify-content-center">
						<!-- 좋아요 아이콘 -->
					</div>
				</div>

				<!-- 버튼 메뉴, 수정/삭제, 뒤로 -->
				<div id="buttonmenu" class="row d-flex justify-content-between">
					<div class="col-md-auto my-auto px-auto ">
						<c:if test="${sessionScope.loginUser.id eq post.memberId || sessionScope.loginUser.adminQuali eq 1 }">
							<a href="${pageContext.request.contextPath }/help/modify?id=${post.id }" class="btn btn-outline-secondary 게시글-수정-삭제"> 
							<i class="fas fa-eraser"></i> 수정 / 삭제 </a>
						</c:if>
					</div>

					<div class="col-md-auto my-auto px-auto">
						<a href="${pageContext.request.contextPath }/help/list" class="btn btn-outline-secondary 게시글-뒤로가기">
							<i class="fas fa-list"> 뒤로</i>
						</a>
					</div>
				</div>

				<!-- <input type="text" class="form-control" id="input2" readonly=""> -->
				<div class="md my-3">
					<table class="table table-hover">
						<thead class="thead">
							<tr>
								<th class="상세보기-업로드이미지-배경">Uploaded Images</th>
							</tr>
						</thead>
						<c:if test="${not empty post.fileList }">
							<c:forEach items="${post.fileList }" var="file" varStatus="vs">
								<tbody>
									<tr style="text-align: center;">
										<td>
											<img class="img-fluid 상세보기-이미지" style="width: 50%;" src="${file.url}" alt="${file.fileName}">
										</td>
									</tr>
								</tbody>
							</c:forEach>
						</c:if>
					</table>
				</div>

				<!-- 댓글 창 -->
				<!-- 로그인 한 사용자에게만 보여야 한다. -->

				<div class="row 댓글아이콘">
					<div style="margin-bottom: 0px;" class="replyCount fa-2x">
						<i class="far fa-comment-dots fa-lg cnt" style="background-color: #ffe164;"></i>
					</div>
				</div>
				<div class="row 댓글입력창">
					<c:if test="${not empty sessionScope.loginUser }">
						<div class="col-10 replyinput">
							<textarea id="replyTextarea" class="form-control" placeholder="댓글을 남겨보세요!"></textarea>
						</div>
						<div class="col-2 상세보기-댓글칸">
							<button id="sendReply" class="btn btn-block d-flex justify-content-center ">
								<i class="far fa-comment-dots fa-2x 상세보기-댓글-이모티콘"></i>
							</button>
						</div>
					</c:if>
				</div>
				<br>
				<div id="replyListContainer"></div>
				</div>
			</div>
		</div>
		<!-- 태그 -->

		<!-- Result Modal -->
		<c:if test="${not empty result }">
			<div class="modal" tabindex="-1" id="modal1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">Process Result</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>${result }</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</c:if>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>
	<script>
	$(document).ready(function(){
		$("#help").attr("class", "btn btn-outline ml-1 active");
	});
</script>

<script>
  $(document).ready(function() {
    /* contextPath */
    const appRoot = '${pageContext.request.contextPath}';
	
	const upview = function() {
		$("#upview").empty();
		$.ajax({
			url : appRoot + "/helpup/",
			success : function() {
				const upviewMediaObject = $(`
						<c:if test="${empty sessionScope.loginUser}">
							<button id="upinsnl" class="btn btn-outline-danger">
								<i id="upiconnl" class="far fa-heart fa-fw fa-2x m-r-3"> </i>
							</button>
						</c:if>
						<c:if test="${empty post.upposession&&not empty sessionScope.loginUser}">
							<button id="upins" class="btn btn-outline-dark">
								<i id="upicon" class="far fa-heart fa-fw fa-2x m-r-3"> </i> 
							</button>
							<button id="updel" class="btn btn-outline-light" style ="background-color:#264d73;">
								<i id="downicon" class="fas fa-heart fa-fw fa-2x m-r-3"> </i> 
							</button>
						</c:if>
						<c:if test="${not empty post.upposession}">
							<button id="upins" class="btn btn-outline-dark" style="display:none;">
								<i id="upicon" class="far fa-heart fa-fw fa-2x m-r-3" > </i> 
							</button>
							<button id="updel" class="btn btn-outline-light" style="background-color:#264d73;">
								<i id="downicon" class="fas fa-heart fa-fw fa-2x m-r-3"> </i> 
							</button>
						</c:if>

				`);
				$("#upview").append(upviewMediaObject);
				upviewMediaObject.find("#upiconnl").append(' ${post.up}');
				upviewMediaObject.find("#upicon").append(' ${post.up}');
				upviewMediaObject.find("#downicon").append(' ${post.up}');
				
				/* 좋아요 갯수 1 증가*/
				const upPost = function() {
					$("#upins").click(function() {
						console.log("업버튼 클릭됨.");
						$.ajax({
			        	url : appRoot + "/helpup/${post.id}",
						type : "put",
						success : function(cnt) {
							console.log("업 +1됨");

							$("#upview").find("#updel").html("<i id='downicon' class='fas fa-heart fa-fw fa-2x m-r-3'> </i> ");
							$("#upview").find("#downicon").append(cnt);
						},
						complete : function() {
							$("#upview").find("#upins").hide();
							$("#upview").find("#updel").show();
							console.log("컴플리트까지 옴")
						}
						});
					});
				}
				upPost();
				/* 좋아요 갯수 1 감소*/
				const downPost = function() {
					$("#updel").click(function() {
						console.log("업버튼 다시 클릭됨.");
						$.ajax({
			        	url : appRoot + "/helpup/${post.id}",
						type : "delete",
						success : function(cnt) {
								console.log("업 -1됨");
								$("#upview").find("#upins").html("<i id='upicon' class='far fa-heart fa-fw fa-2x m-r-3'> </i> ");
								$("#upview").find("#upicon").append(cnt);
						},
						complete : function() {
							$("#upview").find("#updel").hide();
							$("#upview").find("#upins").show();
							console.log("델리트 컴플리트까지 옴")
						}
						});
					});
				}
				downPost();	
				$("#upinsnl").click(function() {
					alert("로그인 후 이용해 주세요!");
				});
			}
		});
	}
	upview();

    /* 현재 게시물의 댓글 목록 가져오는 함수 */
    const listReply = function() {
      $("#replyListContainer").empty();
      $.ajax({
        url : appRoot + "/helpreply/board/${post.id}",
        success : function(list) {
        	let a = 0;
          	for (let i = 0; i < list.length; i++) {
				const replyId = list[i].id;
				const replyMediaObject = $(`
						
						<table class="table table-bordered">
							<thead id="replyhead" class="">
								<tr>
									<th id="userprofile">
											<img	id = "reply-profile" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-iBqF1VCpU79WLGw_qgx0jFSuMlmLRTO25mJkJKqJ7KArrxjWB-eu2KQAFrOdW2fFKso&usqp=CAU"class="img-thumbnail rounded-circle mx-auto d-block " alt="UserProfile Picture"/>
									</th>
									<th id="replynickname">
										<div id ="reply-nickname" class="h6"></div>
									</th>
									<th id="replymenu">
											<div class="reply-menu"></div>
									</th>
									<th id="replytime">
										<span id = "reply-time" class="h5 ms-3 mt-0 pt-0"></span>
									</th>
								</tr>
							</thead>
							<tbody id="replybody">
								<tr>
									<td id="rereplyfold">
										<button id="rereply-fold\${replyId}"><i class="fas fa-caret-down fa-2x"></i></a>
									</td>
									<td colspan="3">
										<div id = "reply-text\${replyId}" class="col h6"></div>
										<div class="input-group" id="input-group\${list[i].id}" style="display:none;">
											<textarea id="replyTextarea\${list[i].id}" class="form-control reply-modi"></textarea>
											<div class="input-group-append">
												<button class="btn btn-outline-danger cancel-button"><i class="fas fa-ban"></i></button>
												<button class="btn btn-outline-primary" id="sendReply\${list[i].id}">
												<i class="far fa-comment-dots fa-lg"></i>
												</button>
											</div>
										</div>
									</td>
									</tr>
								</tbody>
							</table>
							 <table class="table table-borderless">
	                               <tbody id="rereply-input-body">
	                               		<tr>
	                                		<td>
		                                		<div id="rereplyListContainer\${list[i].id}"></div>
		                           				</div>
	                                		</td>
	                                	</tr>
	                               	</tbody>
	                           	 </table>
							<div class="fold\${replyId}" style="display:none;">
                                <table class="table table-borderless">
                                	<thead id="rereply-input-head">
                                		<tr>
                            				<c:if test="${not empty sessionScope.loginUser }">
                                			<th>
                                				<div class="rereplyinput input-group">
                                    				<textarea id="rereplyTextarea\${list[i].id}" class="form-control re-reply-input" placeholder="대댓글을 남겨보세요!"></textarea>
					                                <div class="input-group-append">
					                                    <button id="sendReReply\${list[i].id}" class="btn btn-block send-rereply-btn">
					                                        <i class="far fa-comment-dots fa-2x my-auto"></i>
					                                    </button>
					                                </div>
                                				</div>
                                			</th>
                          				</c:if>
                                		</tr>
                                	</thead>
                                </table>
                               </div>
                              
					`);
				
			    // 대댓글 리스트 함수 
				  const listReReply = function() {
			      $("#rereplyListContainer"+replyId).empty();
			      $.ajax({
			        url : appRoot + "/helprereply/reply/" + replyId,
			        success : function(relist) {
			          	for (let i = 0; i < relist.length; i++) {
							const rereplyId = relist[i].id;
							const rereplyMediaObject = $(`
                                    <div class="">
				                    <i class="fa fa-share"></i>
									<table class="table table-borderless">
										<thead id="rereplyhead">
											<tr>
												<th id="userprofile">
													<img	id = "rereply-profile" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-iBqF1VCpU79WLGw_qgx0jFSuMlmLRTO25mJkJKqJ7KArrxjWB-eu2KQAFrOdW2fFKso&usqp=CAU"class="img-thumbnail rounded-circle mx-auto d-block " alt="UserProfile Picture"/>
												</th>
												<th id="rereplynickname">
													<div id ="rereply-nickname" class="h6"></div>
												</th>
												<th id="rereplymenu">
													<div class="rereply-menu"></div>
												</th>
												<th id="rereplytime">
													<span id = "rereply-time" class="h5 ms-3 mt-0 pt-0"></span>
												</th>
											</tr>
										</thead>
										<tbody id="rereplybody">
											<tr>
												<td colspan="4">
												<div id = "rereply-text\${relist[i].id}" class="col h6"></div>
												<div class="input-group" id="re-input-group\${relist[i].id}" style="display:none;">
													<textarea id="rereplyTextarea\${relist[i].id}" class="form-control re-reply-modi"></textarea>
													<div class="input-group-append">
														<button class="btn btn-outline-danger re-cancel-button"><i class="fas fa-ban"></i></button>
														<button class="btn btn-outline-primary" id="sendReReplyMd\${relist[i].id}">
														<i class="far fa-comment-dots fa-lg"></i>
														</button>
													</div>
												</div>
												</td>
											</tr> 
										</tbody>
									</table> 
								</div>
							`);
								
							//대댓글 수정 삭제 
							
							//대댓글 수정 등록 버튼 
							rereplyMediaObject.find("#sendReReplyMd" + relist[i].id).click(function() {
								const rereply = rereplyMediaObject.find("#rereplyTextarea"+relist[i].id).val();
								const data =  {
										reReply : rereply		
								};
								//대댓글 수정 요청 
								$.ajax({
									url : appRoot + "/helprereply/" + relist[i].id,
									type : "put",
									contentType : "application/json",
									data : JSON.stringify(data),
									complete : function() {
										listReReply();
									}
								});
							});//대댓글 수정 등록 버튼 끝
							
							
							rereplyMediaObject.find(".rereply-nickname").append(relist[i].nickname);
							rereplyMediaObject.find(".rereply-body").text(relist[i].reReply);
							rereplyMediaObject.find(".re-reply-modi").text(relist[i].reReply);
							rereplyMediaObject.find(".re-cancel-button").click(function() {
								console.log(rereplyId);
								replyMediaObject.find("#rereply-text"+rereplyId).show();
								$("#re-input-group" + rereplyId).hide();
								rereplyMediaObject.find("#rereplyModify").show();
								rereplyMediaObject.find("#rereplyDelete").show();
							});
							
							
							if (relist[i].own) {
								// 본인이 작성한 것만 수정버튼 추가
								const remodifyButton = $("<button id='rereplyModify' class='btn btn-outline-primary'><i class='fas fa-edit'></i></button>")
								remodifyButton.click(function() {
									$(this).parent().parent().parent().parent().parent().find('#rereply-text' + rereplyId).hide();// this는 클릭이벤트가 발생한 버튼
									$(this).parent().parent().parent().parent().parent().find(`#re-input-group\${relist[i].id}`).show();
									$(this).parent().find('#rereplyModify').hide();
									$(this).parent().find('#rereplyDelete').hide();
								});
								rereplyMediaObject.find(".rereply-menu").append(remodifyButton);
							}
							if (relist[i].own || ${sessionScope.loginUser.adminQuali eq 1}) {
								// 삭제버튼도 추가
								const reremoveButton = $("<button id='rereplyDelete' class='btn btn-outline-danger'><i class='far fa-trash-alt'></i></button>");
								const blank = $(" ");
								reremoveButton.click(function(){
									if (confirm("Sure you want to delete?")){
										$.ajax({
											url : appRoot +"/helprereply/"+relist[i].id,
											type : "delete",
											complete : function(){
												listReReply();
												//listReplyCount();
											}
										})
									}
								})
								rereplyMediaObject.find(".rereply-menu").append(reremoveButton);
							} //대댓글 수정 삭제 끝 
							
							$("#rereplyListContainer"+replyId).append(rereplyMediaObject);
							
							rereplyMediaObject.find("#rereply-nickname").text(relist[i].nickname);
							rereplyMediaObject.find("#rereply-text"+rereplyId).text(relist[i].reReply);
							rereplyMediaObject.find("#rereply-time").text(relist[i].inserted);
							

			          	}// 대댓글 for 문 종료 
			        }
			      });
			    } //대댓글 리스트 함수 종료 
			    listReReply();
				
				//댓글 수정 등록 버튼 
				replyMediaObject.find("#sendReply" + list[i].id).click(function() {
					const reply = replyMediaObject.find("#replyTextarea"+list[i].id).val();
					const data =  {
							reply : reply		
					};
					//댓글 수정 요청 
					$.ajax({
						url : appRoot + "/helpreply/" + list[i].id,
						type : "put",
						contentType : "application/json",
						data : JSON.stringify(data),
						complete : function() {
							listReply();
						}
					});
				});//댓글 수정 등록 버튼 끝
				
				
				replyMediaObject.find(".reply-nickName").append(list[i].nickName);
				replyMediaObject.find(".reply-body").text(list[i].reply);
				replyMediaObject.find(".reply-modi").text(list[i].reply);
				replyMediaObject.find(".cancel-button").click(function() {
					replyMediaObject.find("#reply-text"+replyId).show();
					$("#input-group" + replyId).hide();
					replyMediaObject.find("#replyModify").show();
					replyMediaObject.find("#replyDelete").show();
				});
				
				
				if (list[i].own) {
					// 본인이 작성한 것만 수정버튼 추가
					const modifyButton = $("<button id='replyModify' class='btn btn-outline-primary'><i class='fas fa-edit'></i></button>")
					modifyButton.click(function() {
						$(this).parent().parent().parent().parent().parent().find('#reply-text' + replyId).hide();// this는 클릭이벤트가 발생한 버튼
						$(this).parent().parent().parent().parent().parent().find(`#input-group\${list[i].id}`).show();
						$(this).parent().find('#replyModify').hide();
						$(this).parent().find('#replyDelete').hide();
					});
					replyMediaObject.find(".reply-menu").append(modifyButton);
				}
				if (list[i].own || ${sessionScope.loginUser.adminQuali eq 1}) {
					// 삭제버튼도 추가
					const removeButton = $("<button id='replyDelete' class='btn btn-outline-danger'><i class='far fa-trash-alt'></i></button>");
					const blank = $(" ");
					removeButton.click(function(){
						if (confirm("Sure you want to delete?")){
							$.ajax({
								url : appRoot +"/helpreply/"+list[i].id,
								type : "delete",
								complete : function(){
									listReply();
									listReplyCount();
								}
							})
						}
					})
					replyMediaObject.find(".reply-menu").append(removeButton);
				}
				
				$("#replyListContainer").append(replyMediaObject);
				
				replyMediaObject.find("#reply-nickname").text(list[i].nickname);
				replyMediaObject.find("#reply-text"+replyId).text(list[i].reply);
				replyMediaObject.find("#reply-time").text(list[i].inserted);
				
				
				  //대댓글 등록하기 
				$("#sendReReply"+list[i].id).click(function() {
					const rereply =$("#rereplyTextarea"+list[i].id).val();
					const memberId = '${sessionScope.loginUser.id}';
					const replyId = list[i].id;
					const nickname = '${sessionScope.loginUser.nickname}';
					const boardId = '${post.id}';
					const data = {
							boardId : boardId,
							reReply : rereply,
							uid : memberId,
							replyId : replyId,
							nickname : nickname
					};
					
					$.ajax({
						url : appRoot+ "/helprereply/write",
						type : "post",
						data : data,
						success : function() {
							// textarea reset
							$("#rereplyTextarea"+list[i].id).val(""); 
						},
						error : function(){
							alert("Logged out! Please login again!");
						},
						complete : function() {
							//refresh
							listReReply();
							//listReReplyCount();
							//countInBoard();
						}
					})
				})//대댓글 등록하기 끝 
				
				
/* 				//각 댓글에 달린 대댓글 개수 세기 
				const listReReplyCount = function() {
					$.ajax({
						url : appRoot+ "/helprereply/count/"+replyId,
						type : "get",
						success : function(recount) {
							//console.log(recount);
						}
					})
				}
				listReReplyCount(); */
				
				
				// 대댓글 입력창만 토글
				$("#rereply-fold"+list[i].id).click(function() {
					$("#replyListContainer").find(".fold"+list[i].id).toggle();
				});

				
			} //for문종료 	
        } //success property value function 끝 
      }); //ajax 종료 (댓글리스트 불러오기 완료)
    } //listReply 정의하는 function 종료 
    listReply(); // 페이지 로딩 후 댓글 리스트 가져오는 함수 한 번 실행
    
	//댓글 등록 
	$("#sendReply").click(function() {
		const reply =$("#replyTextarea").val();
		const memberId = '${sessionScope.loginUser.id}';
		const boardId = '${post.id}';
		const nickname = '${sessionScope.loginUser.nickname}';
		const data = {
				reply : reply,
				uid : memberId,
				boardId : boardId,
				nickname : nickname
		};
		
		$.ajax({
			url : appRoot+ "/helpreply/write",
			type : "post",
			data : data,
			success : function() {
				// textarea reset
				$("#replyTextarea").val(""); 
			},
			error : function(){
				alert("Logged out! Please login again!");
			},
			complete : function() {
				// list refresh
				listReply();
				listReplyCount();
			}
		})
	})//댓글전송
	
/* 	//게시판에 달린 대댓글 개수 세기 (댓글수와 합칠 용도)
	const countInBoard = function() {
		$.ajax({
			url : appRoot+ "/helprereply/countb/"+${post.id},
			type : "get",
			success : function(recountb) {
				console.log(recountb);
			}
		})
	}
	countInBoard(); */
	
	//댓글 갯수
	const listReplyCount = function() {
		const boardId = '${board.id}';
		$.ajax({
			url : appRoot+ "/helpreply/count/"+${post.id},
			type : "get",
			success : function(count) {
				const replyCountObject = $(`<p class="replyCount fa-2x" style="margin-bottom:0px;"><i class="fa fa-comments"></i> </p>`);
				$(".replyCount").parents().find(".replyCount").replaceWith(replyCountObject);
				$(".replyCount").parents().find(".replyCount").append(count);
			}
		})
	}
	listReplyCount();
});
</script>
</body>
</html>