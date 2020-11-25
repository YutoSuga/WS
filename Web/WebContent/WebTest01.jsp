<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>タグ調べサイト</title>

</head>


<body>
	<header>
		<h1>タグ調べサイト</h1>
	</header>
	<div>
		<p>
			調べたいタグの中身を書いてね！ <br>(半角で入力してね) <br> 例…a→＜a＞タグで表示するよ
		</p>
		<c:if test="${not empty message }">
			<p>
				☆${param.tag}の実行結果☆<br>
				赤：${param.red}、緑：${param.green}、青：${param.blue}
			</p>
			${message}
		</c:if>
	</div>
	<div>

		<a>☆入力フォーム☆</a><br>
		<form action="test/test01" method="POST">
			タグを入力してみて<input type="text" name="tag" value="${param.tag}"><br>
			色を選択して 赤 <select name="red">
				<c:forEach begin="0" end="255" step="1" var="i">
					<option value="${i}">${i}</option>
				</c:forEach>
			</select> 緑<select name="green">
				<c:forEach begin="0" end="255" step="1" var="i">
					<option>${i}</option>
				</c:forEach>
			</select> 青 <select name="blue">
				<c:forEach begin="0" end="255" step="1" var="i">
					<option>${i}</option>
				</c:forEach>
			</select> <br> <input type="submit" value="実行">
		</form>
	</div>
</body>

</html>