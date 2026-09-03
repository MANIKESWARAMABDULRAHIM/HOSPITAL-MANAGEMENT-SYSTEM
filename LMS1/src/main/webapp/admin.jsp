<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<title>LMS | Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body {
    background: #f5f7fb;
}

.navbar {
    background: #173b67;
}

.card {
    border: none;
    border-radius: 18px;
}

.dashboard-card {
    transition: .3s;
}

.dashboard-card:hover {
    transform: translateY(-6px);
}

.icon {
    font-size: 45px;
}

</style>

</head>

<body>

<nav class="navbar navbar-dark">

<div class="container">

<span class="navbar-brand fw-bold">

<i class="bi bi-speedometer2"></i>
LMS Admin

</span>

<a href="/logout"
   class="btn btn-light">

Logout

</a>

</div>

</nav>

<div class="container py-5">

<h2 class="fw-bold">
Admin Dashboard
</h2>

<p class="text-muted">
Manage employees and leave requests.
</p>

<div class="row g-4 mt-2">

<div class="col-md-4">

<div class="card dashboard-card shadow-sm p-4">

<i class="bi bi-people icon text-primary"></i>

<h5 class="mt-3">
Employee Management
</h5>

<p class="text-muted">
View and manage employee records.
</p>

<a href="/findAll"
   class="btn btn-primary">

View Employees

</a>

</div>

</div>

<div class="col-md-4">

<div class="card dashboard-card shadow-sm p-4">

<i class="bi bi-calendar-check icon text-success"></i>

<h5 class="mt-3">
Leave Requests
</h5>

<p class="text-muted">
Review employee leave applications.
</p>

<a href="/viewleaves"
   class="btn btn-success">

Manage Leaves

</a>

</div>

</div>

<div class="col-md-4">

<div class="card dashboard-card shadow-sm p-4">

<i class="bi bi-search icon text-warning"></i>

<h5 class="mt-3">
Search Employee
</h5>

<p class="text-muted">
Find an employee using email.
</p>

<a href="/search.jsp"
   class="btn btn-warning">

Search

</a>

</div>

</div>

</div>

</div>

</body>
</html>