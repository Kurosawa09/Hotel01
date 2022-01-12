 <!-- <html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h1>로그인</h1>
	
	<form action = "/member/login", method = "post">
		<table border = "1">
			<tr>
				<th>ID</th>
				<td>
					<input type = "text" name = "memberId">
				</td>
			</tr>
			<tr>
				<th>PW</th>
				<td>
					<input type = "password" name = "memberPw">
				</td>
			</tr>
			<tr>
				<td colspan = "2">
					<input type = "submit" value = "로그인">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>

 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="/resources/css/login.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
    
</head>

<body>
	<!-- Header -->
		<header id="header">
			<h1 id="logo"><a href="index.html">Landed</a></h1>
				<nav id="nav">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li>
							<a href="#">Layouts</a>
							<ul>
								<li><a href="left-sidebar.html">Left Sidebar</a></li>
								<li><a href="right-sidebar.html">Right Sidebar</a></li>
								<li><a href="no-sidebar.html">No Sidebar</a></li>
								<li>
									<a href="#">Submenu</a>
							<ul>
								<li><a href="#">Option 1</a></li>
								<li><a href="#">Option 2</a></li>
								<li><a href="#">Option 3</a></li>
								<li><a href="#">Option 4</a></li>
							</ul>
								</li>
							</ul>
							</li>
							<li><a href="elements.html">Elements</a></li>
							<li><a href="#" class="button primary">Sign Up</a></li>
						</ul>
					</nav>
				</header>
			<!-- Banner -->
   <form action="/member/login" method="post" class="loginForm">
      <h2 style="color:black;">Login</h2>
      <div class="idForm">
        <input type="text" class="id" placeholder="ID">
      </div>
      <div class="passForm">
        <input type="password" class="pw" placeholder="PW">
      </div>
      <button type="submit" class="btn">
        LOG INdddddd
      </button>
 
      <div class="bottomText">
        Don't you have ID? <a href="/member/join">sign up</a>
      </div>
    </form>
</body>				
</html> 