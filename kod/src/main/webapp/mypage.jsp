<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.dto.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기본 회원 정보 - 마이페이지</title>
	
	
	

<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
	

<!--  my page bigbox -->

    <!-- 
    <link rel="shortcut icon" href="https://static.msscdn.net/favicon.ico?202307311841" type="image/x-icon">
     --> 
    <link rel="stylesheet" type="text/css" href="https://static.msscdn.net/skin/musinsa/css/magazine_common.css?202307311841">
    <!-- 폰트 -->
    <!-- <link rel="stylesheet" type="text/css" href="https://static.msscdn.net/skin/musinsa/css/store_common.css?202307311841"> -->
    <!--  
    <link rel="stylesheet" href="https://static.msscdn.net/ui/build/pc/css/common.css">
    <link rel="stylesheet" type="text/css" href="https://static.msscdn.net/ui/musinsa/resources/common/css/icon.min.css?202307311841">
    <link rel="shortcut icon" href="https://static.msscdn.net/favicon.ico?202307311841" type="image/x-icon">
    <link rel="stylesheet" href="https://static.msscdn.net/platform/css/common.css">
    <link rel="stylesheet" type="text/css" href="https://static.msscdn.net/skin/musinsa/css/new.css?202307311841">
    -->
     <link rel="stylesheet" type="text/css" href="https://static.msscdn.net/skin/musinsa/css/sub.css?202307311841"> 
    <!-- 중요한거 -->
    <link rel="stylesheet" type="text/css" href="https://static.msscdn.net/skin/musinsa/css/layout.min.css?202307311841">
    <link rel="stylesheet" type="text/css" href="https://static.msscdn.net/skin/musinsa/css/style.min.css?202307311841">
    <link rel="stylesheet" type="text/css" href="https://static.msscdn.net/skin/musinsa/css/media_query.css?202307311841">
    <script src="https://static.msscdn.net/skin/musinsa/js/jquery.lazyload.min.js?202307311841" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="https://static.msscdn.net/skin/musinsa/css/mypage.min.css?202307311841">
    <link rel="stylesheet" type="text/css" href="https://static.msscdn.net/skin/musinsa/css/guide.min.css?202307311841">
    <link type="text/css" rel="stylesheet" href="css/mypage2.css" />
    <script src="https://static.msscdn.net/static/member/js/ajax.js?202307311841" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/crypto-js.min.js?202307311841"></script>
    <script src="https://static.msscdn.net/static/member/js/security.js?202307311841"></script>
    <script type="text/javascript" src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>
    <script type="text/javascript" src="https://static.msscdn.net/platform/js/common.js"></script>
    <script src="https://static.msscdn.net/static/member/js/constant.js?202307311841" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/ui/config.js?202307311841" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/ui.js?202307311841" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/string.js?202307311841" type="text/javascript"></script>
    <!-- /중요한거 -->
    
    <link type="text/css" rel="stylesheet" href="css/mypage.css" />
    <!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />
	<!-- Slick -->
	<link type="text/css" rel="stylesheet" href="css/slick.css" />
	<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
	
	<!-- nouislider -->
	<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />
	
	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
    	<!-- 
    
        <script type="text/javascript" src="https://static.msscdn.net/static/common/1.2.0/pc.js"></script>
    	<input type="hidden" id="imageResourceUrl" value="https://image.msscdn.net">
     	-->
      <body>
      
      <jsp:include page="util/header.jsp"></jsp:include>
	<jsp:include page="util/navigation.jsp"></jsp:include> 
<div class="container mypage musinsa" >
	<main class="content" style="height: 100%; margin-bottom: 10vh;">
		<div id="commonMypage" style="position : absolute; top: 250px; left: 170px;">
			<nav class="sc-1t1fxnz-0 bdKVYa">
				<div class="sc-1t1fxnz-3 dMLoMw">
					<h3>나의 쇼핑 활동</h3>
					<a href="" class="sc-14dbciz-0 bblXMI">개인 정보 변경</a>
					<a href="myOrderList.do" class="sc-14dbciz-0 bblXMI">주문 목록 조회</a>
					<a href="paySelect.do" class="sc-14dbciz-0 bblXMI">장바구니 관리</a>
					<a href="javascript:handleAddressManage()" id="addressManage" class="sc-14dbciz-0 bblXMI">배송지 관리</a>
				</div>
				<div class="sc-1t1fxnz-3 dMLoMw">
					<h3>커뮤니티</h3>
					<a href="" class="sc-14dbciz-0 bblXMI">커뮤니티</a>
				</div>
			</nav>
		</div>
		<section class="mypage-cont" >
			<input type="hidden" id="defaultImage" name="defaultImage">
			<h1 class="hidden">회원 정보 변경</h1>
			<!-- 기본 회원정보 -->
			<section class="n-section-block">
				<header class="n-section-title first info_views-area">
					<h1 class="tit">
						개인정보변경 <span></span>
					</h1>
				</header>
				<table class="n-table table-row my-info-modify">
					<colgroup>
						<col style="width: 190px">
						<col style="width: *">
						<col style="width: 50%">
					</colgroup>
					<tbody>
						<tr>
						</tr>
						<tr class="my-info-img" style="display: none" id="change-profile-image-area">
							<th scope="row">사진</th>
							<td>
								<div>
									<div class="img" id="profile-backGround-image" style="background-image: url(https://image.msscdn.net/mfile_s01/_simbols/_basic/g.png)"></div>
								</div>
								<p class="txt">
									asdf
								</p>
							</td>
						</tr>
						<tr>
							<th scope="row">아이디</th>
							<td colspan="2"><strong>abcdefg</strong></td>
						</tr>
						<tr id="password-area">
							<th scope="row">비밀번호</th>
							<td><strong>**************</strong></td>
							<td>
								<button type="button" class="n-btn w100 btn-sm btn-default cert-hidden" id="change-password-btn">비밀번호 변경</button>
							</td>
						</tr>
						<!--비밀번호 변경-->
						<tr id="change-password-area" style="display: none">
							<th scope="row">비밀번호</th>
							<td colspan="2">
								<div class="my-info-modify">
									<div class="my-info-modify">
										<input type="hidden" id="encryptPassword">
										<input type="hidden" id="encryptNewPassword">
										<input type="hidden" id="encryptConfirmPassword">
										<!--
										<div class="input">
								  		<label for="password">현재 비밀번호</label> 
											<div class="input-password__wrap " id="password_div">
												<input type="password" class="n-input" id="password">
											</div> -->	
											<span id="password-invalid" class="validate danger"></span>
										</div>
										<div class="input">
											<label for="newPassword">신규 비밀번호</label>
											<div class="input-password__wrap " id="newPassword_div">
												<input type="password" class="n-input" id="newPassword" maxlength="30">
											</div>
											<span id="new-password-invalid" class="validate danger"></span> <span id="valid-newPassword" class="validate" style="display: none">사용 가능한 비밀번호입니다.</span>
										</div>
										<div class="input">
											<label for="confirmPassword">신규 비밀번호 재 입력</label>
											<div class="input-password__wrap " id="confirmPassword_div">
												<input type="password" class="n-input" id="confirmPassword" maxlength="30">
											</div>
											<span id="confirm-password-invalid" class="validate danger"></span> <span id="valid-confirmPassword" class="validate" style="display: none">사용 가능한 비밀번호입니다.</span>
										</div>
										<div class="btn-group">
											<button type="button" class="n-btn btn-sm btn-lighter" style="color : red;" id="change-password-finish-btn">완료</button>
											<button type="button" class="n-btn btn-sm btn-lighter" id="change-password-cancel-btn">취소</button>
										</div>
									</div>
								</div>
							</td>
						</tr>
						
							<tr id="nickName-area">
								<th scope="row">이름(실명)</th>
								<td><strong>티모</strong></td>
								<td>
									<button type="button" class="n-btn w100 btn-sm btn-default cert-hidden" id="change-nickName-btn">이름 변경</button>
								</td>
							</tr>

							<tr id="change-nickName-area" style="display: none">
								<th scope="row">이름</th>
								<td colspan="2">
									<div class="my-info-modify my-info-modify--nickname">
										<ul class="n-info-txt">
											<li>이모티콘 및 일부 특수문자 사용 불가합니다. &amp;&lt;&gt;()'/"</li>
										</ul>
										<div class="input">
											<input type="text" id="nickName" class="n-input" placeholder="이름 입력(최소 2자)" maxlength="10">
											<span id="currentNickName" class="validate">현재 이름 : 티모</span> <span id="nicknameValidationMessage" class="validate" hidden></span>
										</div>
										<div class="btn-group">
											<button type="button" class="n-btn btn-sm btn-lighter" id="change-nickName-finish-btn" style="color:red;">완료</button>
											<button type="button" class="n-btn btn-sm btn-lighter" id="change-nickName-cancel-btn">취소</button>
										</div>
									</div>
								</td>
							</tr>

							<tr id="email-area">
							<th scope="row">이메일</th>
							<td><strong id="currentEmail" value="">abcd@gmail.com</strong></td>
							<td>
								<button type="button" class="n-btn w100 btn-sm btn-default cert-hidden" id="change-email-btn">이메일 변경</button>
							</td>
						</tr>
						<!--이메일 인증-->
							<tr id="change-email-area" style="display: none">
								<th scope="row">이메일</th>
								<td colspan="2">
									<div class="my-info-modify">
										<ul class="n-info-txt">
										</ul>
										<div class="input input-btn">
											<input type="text" class="n-input" placeholder="이메일 주소 입력" id="email" maxlength="50">
										</div>
										<div class="btn-group">
											<button type="button" class="n-btn btn-sm btn-lighter" id="change-nickName-finish-btn" style="color: red;">완료</button>
											<button type="button" class="n-btn btn-sm btn-lighter" id="change-email-cancel-btn">취소</button>
										</div>
									</div>
								</td>
							</tr>
							<tr id="mobile-area">
							<th scope="row">휴대전화</th>
							<td><strong>010-1234-5678</strong> <span class="certify"></span></td>
							<td>
							</td>
						</tr>
					</tbody>
				</table>
					<!-- 배송지 수정 모달 -->
					<div class="modal hidden">
						<div class="bg"></div>
						<div class="modalBox1">
							<form action="addressUpdate.do" method="post" id="form1" onsubmit="return validateForm2(event)">
							<button onclick="closeModal()" style="margin-bottom: 5%; float:right;">취소하기</button>
								<div class="form-group">
									<input class="input" type="text" name="adrsName" placeholder="주소지 이름">
								</div>
								<input type="hidden" name="adrsId" value="" id="ADRSID">
								<input type="text" id="sample4_postcode" name="adrsZipcode" placeholder="우편번호" style="display: inline-block; width: 30%; margin-left: 26px;" readonly>
								<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="display: inline-block; width: 20%; height: inherit; padding: 1rem 1rem;">
								<br> <br>
								<input type="text" id="sample4_roadAddress" name="adrsStreet" placeholder="도로명주소" readonly>
								<input type="text" id="sample4_jibunAddress" placeholder="지번주소" name="adrsLotNum" style="margin-top: 5px;" readonly>
								<span id="guide" style="color: #999; display: none"></span>
								<input type="text" id="sample4_detailAddress" name="adrsDetail" placeholder="상세주소" style="margin-top: 5px;">
								<input type="button" value="변경하기" onclick="validateForm2()" style="margin-left: 40%; margin-top: 5%;">
							</form>
						</div>
					</div>
					<!-- 배송지 수정 모달 -->
					
					<!-- 배송지 삭제 모달 -->
					<form action="addressDelete.do" method="POST" id="form2">
						<div style="margin-bottom: 5px;">
							<div class="modalDelete hidden" style="z-index:10;">
								<div class="bg2"></div>
								<div class="modalBox">
									<input type="hidden" name="adrsId" value="" id="ADRSID2">
									<p>정말로 삭제하시겠습니까?</p>
									<div>
										<button type="submit" onclick="addressDelete()">삭제</button>
										<button type="button" onclick="closeModal()">취소</button>
									</div>
								</div>
							</div>
						</div>
					</form>
					<!-- 배송지 삭제 모달 -->
					
					<!-- 배송지 추가 모달 -->
					<div class="modalInsert hidden" style="z-index: 10;">
						<div class="bg3"></div>
						<div class="modalBox1">
							<form action="addressInsert.do" method="post" id="form3" onsubmit="return validateForm(event)">
								<button onclick="closeModal()" style="margin-bottom: 5%; float: right;">취소하기</button>
								<div class="form-group">
									<input class="input" type="text" name="adrsName" placeholder="주소지 이름">
								</div>
								<input type="hidden" name="adrsId" value="" id="ADRSID">
								<input type="text" id="sample4_postcode2" name="adrsZipcode" placeholder="우편번호" style="display: inline-block; width: 30%;" readonly>
								<input type="button" onclick="sample4_execDaumPostcode2()" value="우편번호 찾기" style="display: inline-block; width: 20%; height: inherit; padding: 1rem 1rem;">
								<br> <br>
								<input type="text" id="sample4_roadAddress2" name="adrsStreet" placeholder="도로명주소" readonly>
								<input type="text" id="sample4_jibunAddress2" placeholder="지번주소" name="adrsLotNum" style="margin-top: 5px;" readonly>
								<span id="guide" style="color: #999; display: none"></span>
								<input type="text" id="sample4_detailAddress" name="adrsDetail" placeholder="상세주소" style="margin-top: 5px;" required>
								<input type="button" value="주소지 추가하기" onclick="validateForm()" style="margin-left: 40%; margin-top: 5%;">
							</form>
						</div>
					</div>
					<!-- 배송지 추가 모달 -->
					<ul class="n-info-txt">
				</ul>
			</section>
			
			<!-- //기본 회원정보 -->
			<!-- 추가 회원정보 -->
			<section class="n-section-block" id="coffee">
				
			</section>
		</section>
	</main>

</div>
</body>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode2() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode2').value = data.zonecode;
                document.getElementById("sample4_roadAddress2").value = roadAddr;
                document.getElementById("sample4_jibunAddress2").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                /* if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                } */

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
    
    </script>	
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function sample4_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var roadAddr = data.roadAddress; // 도로명 주소 변수
							var extraRoadAddr = ''; // 참고 항목 변수

							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraRoadAddr !== '') {
								extraRoadAddr = ' (' + extraRoadAddr + ')';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample4_postcode').value = data.zonecode;
							document.getElementById("sample4_roadAddress").value = roadAddr;
							document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

							// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
							/* if(roadAddr !== ''){
							    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
							} else {
							    document.getElementById("sample4_extraAddress").value = '';
							} */

							var guideTextBox = document.getElementById("guide");
							// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
							if (data.autoRoadAddress) {
								var expRoadAddr = data.autoRoadAddress
										+ extraRoadAddr;
								guideTextBox.innerHTML = '(예상 도로명 주소 : '
										+ expRoadAddr + ')';
								guideTextBox.style.display = 'block';

							} else if (data.autoJibunAddress) {
								var expJibunAddr = data.autoJibunAddress;
								guideTextBox.innerHTML = '(예상 지번 주소 : '
										+ expJibunAddr + ')';
								guideTextBox.style.display = 'block';
							} else {
								guideTextBox.innerHTML = '';
								guideTextBox.style.display = 'none';
							}
						}
					}).open();
		}
	</script>
	<script>
	
	 <!-- password -->
     $("#change-password-btn").click(function (e) {
         e.preventDefault();
         $("#password-area").css("display", "none");
         $("#change-password-area").css("display", "");
     });

     $("#change-password-cancel-btn").click(function (e) {
         e.preventDefault();
         $("#password").val('');
         $("#newPassword").val('');
         $("#confirmPassword").val('');
         $("#password-area").css("display", "");
         $("#change-password-area").css("display", "none");
         $("#new-password-invalid").css("display", "none");
         $("#valid-newPassword").css("display", "none");
         $("#password-invalid").css("display", "none");
         $("#valid-password").css("display", "none");
         $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
         $("#change-password-finish-btn").prop('disabled', true);
         $("#newPassword").attr('class', 'n-input');
     });
	
     $("#change-nickName-btn").click(function (e) {
         e.preventDefault();
         $("#currentNickName").show();
         $("#nickName").removeClass('input-danger');
         $("#nickName-area").css("display", "none");
         $("#change-nickName-area").css("display", "");
         $("#nicknameValidationMessage").hide();
         $("#nickName").val("").focus();
     });

     $("#change-nickName-cancel-btn").click(function (e) {
         e.preventDefault();
         $("#nickName-area").css("display", "");
         $("#change-nickName-area").css("display", "none");
         $("#nickName").val("");
         $("#change-nickName-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
         $("#change-nickName-finish-btn").prop('disabled', true);
         $("#nicknameValidationMessage").css("display", "none");
         $("#valid-nickName").css("display", "none");
     });
	
     $("#change-email-btn").click(function (e) {
         e.preventDefault();
         $("#email-area").css("display", "none");
         $("#change-email-area").css("display", "");
         $("#send-authentication-email").attr('class', 'n-btn btn-sm btn-accent disabled');
         $("#send-authentication-email").prop('disabled', true);
         $("#change-email-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
         $("#change-email-finish-btn").prop('disabled', true);
     });

     $("#change-email-cancel-btn").click(function (e) {
         e.preventDefault();
         $("#email-area").css("display", "");
         $("#change-email-area").css("display", "none");
         $("#send-authentication-email").attr('class', 'n-btn btn-sm btn-accent disabled');
         $("#send-authentication-email").prop('disabled', true);
         $("#change-email-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
         $("#change-email-finish-btn").prop('disabled', true);
         $("#email").val("");
         $("#email-authTempKey").val("");
     });
	
	</script>
 
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<jsp:include page="util/footer.jsp"></jsp:include>
<script src="js/mypageAddress.js"></script>
</html>