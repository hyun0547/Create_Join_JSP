<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="join_db.jsp">
		<p><label>아이디: <input type="text" name="id" /></label></p>
		<p><label>이름: <input type="text" name="name"/></label></p>
		<p><label>비밀번호: <input type="password" name="password"/></label></p>
		<p><label>비밀번호 확인: <input type="text" name="password_re"/></label></p>
		<p>
			성별 :
			남자<input type="radio" name="gender" value="남자" checked/>
			여자<input type="radio" name="gender" value="남자" checked/>
		</p>
		<p>
			<label>우편번호: 
				<input type="text" name="" class="postcodify_postcode5" value="" />
				<button type="button" id="postcodify_search_button">검색</button>
			</label>
		</p>
		<p><label>주소: <input type="text" name="" class="postcodify_address" value="" /></label></p>
		<p><label>상세주소: <input type="text" name="" class="postcodify_details" value="" /></label></p>
		<p><label>나머지 주소: <input type="text" name="" class="postcodify_extra_info" value="" /></label></p>
		<button>완료</button>
	</form>
</body>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
</html>