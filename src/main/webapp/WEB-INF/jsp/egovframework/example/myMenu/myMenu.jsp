<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>title</title>

<script type="text/javascript">

	$(document).ready(function() {
		console.log("내가 만든 메서드 출력.");
	});
	
	// p218 예제1(continue문)
	for(var i=1; i<=10; i++) {	// i가 1부터 10까지 for문을 돌고 11이되면 for문 빠져나감
		continue;				// for문은 계속 돌지만 continue에 의해서 아래 문장은 실행 X
		console.log(i+"<br>");
	}
	console.log("최종 i="+i);		// i=11
	
	// p219 예제2(break문)
	for(var i=1; i<=10; i++) {	
		break;					// break에 의해서 for문 시작하자마자 for문 밖으로 빠져나감
		console.log(i+"<br>");
	}
	console.log("최종 i="+i);		// i=1
	
	//p274 예제1(지역변수와 전역변수 구분)
	var name="test1";						// 전역변수 name에 문자열 test1을 넣음
	function func1() {
		var name="test2";					// func1 함수의 지역변수 name에 문자열 test2를 넣음
		console.log("2. name = "+name);		// 접근 순위가 더 높은 func1 함수의 지역변수 name 출력
	}
	
	function func2() {
		var name="test3";					// func2 함수의 지역변수 name에 문자열 test3을 넣음
		console.log("3. name = "+name);		// 접근 순위가 더 높은 func2 함수의 지역변수 name 출력
	}
	
	function func3() {
		name="test20";						// 지역변수 선언이 아니라 전역변수 name에 문자열 test20을 엎어 씌움
		console.log("4. name = "+name);		// 전역 변수 name 출력
	}
	
	console.log("1. name = "+name);			// 전역변수 name 이므로 test1이 출력
	func1();
	func2();
	func3();
	console.log("5. name = "+name);			// func3 함수에서 전역변수에 엎어씌웠으므로 test20이 출력
	
	// p345 예제1(변수에 함수를 저장)
	function hello(name) {					// 매개변수 name
		console.log(name+"님 환영합니다.");
	}
	hello("웹동네");							// 매개변수에 "웹동네"를 넣었으므로 웹동네님 환영합니다. 출력
	var func = hello;						// 함수를 변수 func에 저장
	func("딴동네");							// 변수를 함수처럼 사용 가능
	
	// p345 예제2(매개변수 값으로 함수를 사용)
	function hello1() {						
		console.log("hello.");
	}
	function hello2() {
		console.log("안녕하세요.");
	}
	
	function execute(func) {				// 매개변수 func으로 함수명이 넘어올시 
		func();								// 괄호를 붙여 함수호출가능
	}
	
	execute(hello1);						// 매개 변수값으로 함수를 넘김
	execute(hello2);
	
</script>
</head>
<body>
	
</body>
</html>