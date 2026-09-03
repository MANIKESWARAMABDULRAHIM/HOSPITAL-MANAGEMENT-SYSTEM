<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Search Employee</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>

<body class="bg-light">

<div class="container py-5">

<div class="card border-0 shadow-lg rounded-4 mx-auto"
     style="max-width:600px;">

<div class="card-body p-5">

<h2 class="text-center">
Search Employee
</h2>

<p class="text-center text-muted">
Search using employee email
</p>

<form action="/findByEmail"
      method="get">

<div class="mb-4">

<label class="form-label">
Employee Email
</label>

<input type="email"
       name="email"
       class="form-control"
       placeholder="employee@gmail.com"
       required>

</div>

<button class="btn btn-primary w-100">
Search
</button>

</form>

<a href="/admin"
   class="btn btn-secondary w-100 mt-3">

Back to Dashboard

</a>

</div>

</div>

</div>

</body>
</html>