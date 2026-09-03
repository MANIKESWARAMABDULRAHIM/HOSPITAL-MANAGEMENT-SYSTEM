<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<title>LMS | Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body {
    min-height: 100vh;

    background:
        linear-gradient(rgba(16,45,78,.85),rgba(16,45,78,.85)),
        url("https://images.unsplash.com/photo-1450101499163-c8848c66ca85?auto=format&fit=crop&w=1600&q=80")
        center/cover;

    display: flex;
    align-items: center;
    justify-content: center;
}

.login-card {
    width: 420px;
    border: none;
    border-radius: 20px;
}

.login-icon {
    font-size: 55px;
    color: #173b67;
}

</style>

</head>

<body>

<div class="card login-card shadow-lg p-4">

<div class="text-center">

<i class="bi bi-person-circle login-icon"></i>

<h2 class="fw-bold mt-2">
Welcome Back
</h2>

<p class="text-muted">
Login to Leave Management System
</p>

</div>

<%
String status =
(String) request.getAttribute("status");

if(status != null) {
%>

<div class="alert alert-danger">
<%= status %>
</div>

<%
}
%>

<form action="/login"
      method="post">

<div class="mb-3">

<label class="form-label">
Email
</label>

<div class="input-group">

<span class="input-group-text">
<i class="bi bi-envelope"></i>
</span>

<input type="email"
       name="email"
       class="form-control"
       placeholder="Enter email"
       required>

</div>

</div>

<div class="mb-3">

<label class="form-label">
Password
</label>

<div class="input-group">

<span class="input-group-text">
<i class="bi bi-lock"></i>
</span>

<input type="password"
       name="password"
       class="form-control"
       placeholder="Enter password"
       required>

</div>

</div>

<button class="btn btn-primary w-100 py-2">
<i class="bi bi-box-arrow-in-right"></i>
Login
</button>

</form>

<div class="text-center mt-3">

<p>
Don't have an account?
<a href="/register.jsp">
Register
</a>
</p>

<a href="/" class="text-decoration-none">
Back to Home
</a>

</div>

</div>

</body>
</html>