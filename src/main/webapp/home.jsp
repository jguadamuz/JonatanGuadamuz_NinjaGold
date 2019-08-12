<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Ninja Gold Game</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/home.js"></script>
</head>
<body>

	<header>
		<p>Your Gold:</p>
		<span id="score"><c:out value="${moneyTotal}"/></span>
	</header>

	<article>
		<form id="farm" action="/Gold" method="post">
			<div>
				<label>Farm</label>
			</div>
			<div>
				<label>(earns 10-20 gold)</label>
			</div>
			<div>
				<button>Find Gold!</button>
			</div>
			<input type="hidden" name="choice" value="farm">
		</form>
		<form id="cave" action="/Gold" method="post">
			<div>
				<label>Cave</label>
			</div>
			<div>
				<label>(earns 5-10 gold)</label>
			</div>
			<div>
				<button>Find Gold!</button>
			</div>
			<input type="hidden" name="choice" value="cave">
		</form>
		<form id="house" action="/Gold" method="post">
			<div>
				<label>House</label>
			</div>
			<div>
				<label>(earns 2-5 gold)</label>
			</div>
			<div>
				<button>Find Gold!</button>
			</div>
			<input type="hidden" name="choice" value="house">
		</form>
		<form id="casino" action="/Gold" method="post">
			<div>
				<label>Casino!</label>
			</div>
			<div>
				<label>(earns/takes 0-50 gold)</label>
			</div>
			<div>
				<button>Find Gold!</button>
			</div>
			<input type="hidden" name="choice" value="casino">
		</form>
	</article>

	<div>
		<p>Activities:</p>
	</div>

	<div id='fake_textarea' contenteditable="true"><c:out value="${message}"/></div>
</body>
</html>