<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!class gugudan {

		// 구구단 기본 틀, 함수 호출 -> 콘솔에 출력하는 메소드
		void Cal(int a) {
			// 구구단 단나누기 = 입력값으로 받음
			int dan = a;

			for (int i = 2; i < 10; i += dan) { // 단 수만큼 이동
				for (int j = 1; j < 10; j++) { // 곱하는 수(뒷자리)
					for (int k = 0; k < dan; k++) {

						System.out.printf("%d * %d = %d", (i + k), j, (i + k) * j);
						if (k < dan) {
							System.out.print("\t");
						} else {
							System.out.print("\n");
						}

					}
				}
			}
		}
		// 구구단 기본 틀, 함수 호출 -> 브라우저로 출력하는 메소드
		void Cal1(JspWriter out, int a) throws Exception{
			// 구구단 단나누기 = 입력값으로 받음
			int dan = a;

			for (int i = 2; i < 10; i += dan) { // 단 수만큼 이동
				for (int j = 1; j < 10; j++) { // 곱하는 수(뒷자리)
					for (int k = 0; k < dan; k++) {

						out.print(String.format("%d * %d = %d", (i + k), j, (i + k) * j));
						if (k < dan) {
							out.print("\t");
						} else {
							out.print("\n");
						}

					}
				}
			}
		}
	}%>
<%
int num = 0;
String snum = request.getParameter("num");

//객체 생성
gugudan gugu = new gugudan();
gugu.Cal(num);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
gugu.Cal1(out,num);
%>
</body>
</html>