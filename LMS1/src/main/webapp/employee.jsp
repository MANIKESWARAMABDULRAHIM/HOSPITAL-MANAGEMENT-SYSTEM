<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<title>LMS | Employee Dashboard</title>

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
    transition: .3s;
}

.card:hover {
    transform: translateY(-5px);
}

.icon {
    font-size: 45px;
    color: #173b67;
}

</style>

</head>

<body>

<nav class="navbar navbar-dark">

<div class="container">

<span class="navbar-brand fw-bold">
<i class="bi bi-calendar-check"></i>
LMS Employee
</span>

<a href="/logout"
   class="btn btn-light">
Logout
</a>

</div>

</nav>

<div class="container py-5">

<div class="mb-5">

<h2 class="fw-bold">
Employee Dashboard
</h2>

<p class="text-muted">
Manage your leave requests and profile.
</p>

</div>

<div class="row g-4">

<div class="col-md-4">

<div class="card shadow-sm text-center p-4">

<i class="bi bi-calendar-plus icon"></i>

<h4 class="mt-3">
Apply Leave
</h4>

<p class="text-muted">
Submit a new leave request.
</p>

<a href="/applyleave"
   class="btn btn-primary">
Apply Now
</a>

</div>

</div>

<div class="col-md-4">

<div class="card shadow-sm text-center p-4">

<i class="bi bi-calendar2-week icon"></i>

<h4 class="mt-3">
My Leaves
</h4>

<p class="text-muted">
View your leave applications.
</p>

<a href="/myleaves"
   class="btn btn-primary">
View Leaves
</a>

</div>

</div>

<div class="col-md-4">

<div class="card shadow-sm text-center p-4">

<i class="bi bi-person-badge icon"></i>

<h4 class="mt-3">
My Profile
</h4>

<p class="text-muted">
View your employee profile.
</p>

<a href="/viewprofile"
   class="btn btn-primary">
View Profile
</a>

</div>

</div>

</div>

</div>

</body>
</html>