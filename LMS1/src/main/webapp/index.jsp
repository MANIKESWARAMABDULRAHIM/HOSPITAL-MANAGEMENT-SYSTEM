<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<title>LMS | Leave Management System</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body {
    font-family: Arial, sans-serif;
    background: #f5f7fb;
}

.navbar {
    background: #173b67;
}

.navbar-brand,
.nav-link {
    color: white !important;
}

.hero {
    min-height: 85vh;
    display: flex;
    align-items: center;
    background:
        linear-gradient(rgba(13,43,76,.78),rgba(13,43,76,.78)),
        url("https://images.unsplash.com/photo-1450101499163-c8848c66ca85?auto=format&fit=crop&w=1600&q=80")
        center/cover;
}

.hero h1 {
    font-size: 55px;
    font-weight: 700;
}

.feature-card {
    border: none;
    border-radius: 18px;
    padding: 25px;
    transition: .3s;
}

.feature-card:hover {
    transform: translateY(-8px);
}

.icon {
    font-size: 40px;
    color: #173b67;
}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg">

<div class="container">

<a class="navbar-brand fw-bold" href="/">
<i class="bi bi-calendar-check"></i>
LMS
</a>

<div>

<a class="nav-link d-inline-block px-3"
   href="/aboutus">
About
</a>

<a class="nav-link d-inline-block px-3"
   href="/contactus">
Contact
</a>

<a href="/login.jsp"
   class="btn btn-light">
Login
</a>

</div>

</div>

</nav>

<section class="hero text-white">

<div class="container">

<div class="row">

<div class="col-lg-7">

<h1>
Leave Management System
</h1>

<p class="lead mt-3">
A simple and efficient platform to manage
employee leave requests digitally.
</p>

<a href="/login.jsp"
   class="btn btn-light btn-lg mt-3 px-4">

<i class="bi bi-box-arrow-in-right"></i>
Get Started

</a>

</div>

</div>

</div>

</section>

<section class="py-5">

<div class="container">

<div class="text-center mb-5">

<h2>Powerful Leave Management</h2>

<p class="text-muted">
Manage employee leave operations easily and efficiently.
</p>

</div>

<div class="row g-4">

<div class="col-md-4">

<div class="card feature-card shadow-sm h-100 text-center">

<i class="bi bi-calendar-plus icon"></i>

<h4 class="mt-3">Apply Leave</h4>

<p>
Employees can submit leave requests
quickly through the system.
</p>

</div>

</div>

<div class="col-md-4">

<div class="card feature-card shadow-sm h-100 text-center">

<i class="bi bi-person-check icon"></i>

<h4 class="mt-3">Admin Approval</h4>

<p>
Administrators can review and manage
leave requests.
</p>

</div>

</div>

<div class="col-md-4">

<div class="card feature-card shadow-sm h-100 text-center">

<i class="bi bi-database-check icon"></i>

<h4 class="mt-3">Centralized Records</h4>

<p>
Employee and leave information is
stored securely in MySQL.
</p>

</div>

</div>

</div>

</div>

</section>

<footer class="bg-dark text-white text-center p-4">

© 2026 Leave Management System

</footer>

</body>
</html>