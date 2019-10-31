<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Fourket</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link href="css/index.css" rel="stylesheet">
</head>
<body>
	<div class="header">
		<jsp:include page="header.jsp"/>
	</div>
	<div class="container">
    <div class="accordion">
      <ul>
        <li tabindex="1">
          <div>
            <a href="#">
              <h2>First</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
            </a>
          </div>
        </li>
        <li tabindex="2">
          <div>
            <a href="#">
              <h2>Second</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
            </a>
          </div>
        </li>
        <li tabindex="3">
          <div>
            <a href="woo/index.jsp">
              <h2>Third</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
            </a>
          </div>
        </li>
        <li tabindex="4">
          <div>
            <a href="dy/d_main.html">
              <h2>Four</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
            </a>
          </div>
        </li>
      </ul>
    </div>
	</div>
	<div class="footer">
	</div>
</body>
</html>
