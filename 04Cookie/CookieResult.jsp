<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CookieResult.jsp</title>
</head>
<body>
    <h2>쿠키값 확인하기(쿠키가 생성된 이후의 페이지)</h2>
    <%
    Cookie[] cookies = request.getCookies();	//cookie받아온 것을 저장
    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {	// 반복문을 통해 출력
            String cookieName = cookies[i].getName();
            String cookieValue = cookies[i].getValue();
            out.println(String.format("쿠키명 : %s - 쿠키값 : %s<br/>",
                                      cookieName, cookieValue));
        }        
    }
    %>
</body>
</html>