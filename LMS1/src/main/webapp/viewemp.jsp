<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Employee Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>

<body class="bg-light">

<div class="container py-5">

<div class="card border-0 shadow-lg rounded-4 mx-auto"
     style="max-width:700px;">

<div class="card-header bg-primary text-white p-4">

<h3>
Employee Details
</h3>

</div>

<div class="card-body p-4">

<div class="row g-3">

<div class="col-md-6">
<strong>ID</strong>
<p>${employee.id}</p>
</div>

<div class="col-md-6">
<strong>Name</strong>
<p>${employee.name}</p>
</div>

<div class="col-md-6">
<strong>Email</strong>
<p>${employee.email}</p>
</div>

<div class="col-md-6">
<strong>Age</strong>
<p>${employee.age}</p>
</div>

<div class="col-md-6">
<strong>Gender</strong>
<p>${employee.gender}</p>
</div>

<div class="col-md-6">
<strong>Mobile</strong>
<p>${employee.mobile}</p>
</div>

<div class="col-md-6">
<strong>Department</strong>
<p>${employee.department}</p>
</div>

<div class="col-md-6">
<strong>Address</strong>
<p>${employee.address}</p>
</div>

</div>

<a href="/findAll"
   class="btn btn-secondary">

Back

</a>

</div>

</div>

</div>

</body>
</html>