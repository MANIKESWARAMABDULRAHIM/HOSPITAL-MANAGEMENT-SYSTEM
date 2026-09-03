<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<title>LMS | Employee Registration</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

body {
    background: #f3f6fa;
}

.register-card {
    max-width: 900px;
    margin: 45px auto;
    border: none;
    border-radius: 20px;
}

.header {
    background: #173b67;
    color: white;
    border-radius: 20px 20px 0 0;
}

</style>

</head>

<body>

<div class="container">

<div class="card register-card shadow-lg">

<div class="header p-4 text-center">

<h2>
Employee Registration
</h2>

<p class="mb-0">
Create your employee account
</p>

</div>

<div class="card-body p-4">

<%
String status =
(String) request.getAttribute("status");

if(status != null) {
%>

<div class="alert alert-info">
<%= status %>
</div>

<%
}
%>

<form action="/save"
      method="post">

<div class="row g-3">

<div class="col-md-6">

<label class="form-label">
Full Name
</label>

<input type="text"
       name="name"
       class="form-control"
       required>

</div>

<div class="col-md-6">

<label class="form-label">
Email
</label>

<input type="email"
       name="email"
       class="form-control"
       required>

</div>

<div class="col-md-6">

<label class="form-label">
Password
</label>

<input type="password"
       name="password"
       class="form-control"
       minlength="6"
       required>

</div>

<div class="col-md-6">

<label class="form-label">
Age
</label>

<input type="number"
       name="age"
       class="form-control"
       min="18"
       max="70"
       required>

</div>

<div class="col-md-6">

<label class="form-label">
Gender
</label>

<select name="gender"
        class="form-select"
        required>

<option value="">Select Gender</option>
<option>Male</option>
<option>Female</option>
<option>Other</option>

</select>

</div>

<div class="col-md-6">

<label class="form-label">
Mobile
</label>

<input type="tel"
       name="mobile"
       class="form-control"
       pattern="[0-9]{10}"
       required>

</div>

<div class="col-md-6">

<label class="form-label">
Department
</label>

<select name="department"
        class="form-select"
        required>

<option value="">Select Department</option>
<option>IT</option>
<option>HR</option>
<option>Finance</option>
<option>Sales</option>
<option>Marketing</option>
<option>Operations</option>

</select>

</div>

<div class="col-md-6">

<label class="form-label">
Address
</label>

<input type="text"
       name="address"
       class="form-control"
       required>

</div>

</div>

<div class="text-center mt-4">

<button type="submit"
        class="btn btn-primary px-5">

Register

</button>

<a href="/login.jsp"
   class="btn btn-outline-secondary px-5 ms-2">

Login

</a>

</div>

</form>

</div>

</div>

</div>

</body>
</html>