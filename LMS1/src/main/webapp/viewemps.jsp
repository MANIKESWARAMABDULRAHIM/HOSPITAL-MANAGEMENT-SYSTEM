<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
    uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<title>Employees | LMS</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body {
    background: #f5f7fb;
    font-family: Arial, sans-serif;
}

.navbar {
    background: #173b67;
}

.page-title {
    font-weight: 700;
    color: #173b67;
}

.employee-card {
    border: none;
    border-radius: 18px;
    overflow: hidden;
}

.table thead th {
    background: #173b67;
    color: white;
    padding: 15px;
    white-space: nowrap;
}

.table tbody td {
    padding: 14px;
    vertical-align: middle;
}

.table tbody tr:hover {
    background: #f1f5fb;
}

.btn-action {
    margin: 2px;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-dark">

<div class="container-fluid px-4">

<span class="navbar-brand fw-bold">

<i class="bi bi-calendar-check"></i>

LMS Admin

</span>

<div>

<a href="/admin"
   class="btn btn-light me-2">

<i class="bi bi-speedometer2"></i>

Dashboard

</a>

<a href="/logout"
   class="btn btn-outline-light">

<i class="bi bi-box-arrow-right"></i>

Logout

</a>

</div>

</div>

</nav>


<!-- MAIN CONTENT -->

<div class="container-fluid px-4 py-5">

<div class="d-flex justify-content-between
            align-items-center mb-4">

<div>

<h2 class="page-title">

<i class="bi bi-people-fill"></i>

Employee Records

</h2>

<p class="text-muted mb-0">

Manage registered employees.

</p>

</div>

</div>


<!-- TABLE CARD -->

<div class="card employee-card shadow-sm">

<div class="table-responsive">

<table class="table table-hover mb-0">

<thead>

<tr>

<th>ID</th>

<th>Name</th>

<th>Email</th>

<th>Age</th>

<th>Gender</th>

<th>Mobile</th>

<th>Department</th>

<th>Address</th>

<th>Action</th>

</tr>

</thead>


<tbody>

<c:forEach
    var="employee"
    items="${empList}">

<tr>

<td>

<span class="badge bg-secondary">

${employee.id}

</span>

</td>


<td class="fw-semibold">

${employee.name}

</td>


<td>

${employee.email}

</td>


<td>

${employee.age}

</td>


<td>

${employee.gender}

</td>


<td>

${employee.mobile}

</td>


<td>

<span class="badge bg-info text-dark">

${employee.department}

</span>

</td>


<td>

${employee.address}

</td>


<td>

<!-- VIEW -->

<a href="/findByEmail?email=${employee.email}"
   class="btn btn-sm btn-primary btn-action">

<i class="bi bi-eye"></i>

View

</a>


<!-- EDIT -->

<a href="/editEmployee?id=${employee.id}"
   class="btn btn-sm btn-warning btn-action">

<i class="bi bi-pencil-square"></i>

Edit

</a>


<!-- DELETE -->

<a href="/delete?id=${employee.id}"
   class="btn btn-sm btn-danger btn-action"
   onclick="return confirm('Are you sure you want to delete this employee?')">

<i class="bi bi-trash"></i>

Delete

</a>

</td>

</tr>

</c:forEach>

</tbody>

</table>

</div>

</div>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>