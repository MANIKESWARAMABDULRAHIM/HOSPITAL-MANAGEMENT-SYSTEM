<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>My Profile</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>

<body class="bg-light">

<div class="container py-5">

<div class="card border-0 shadow-lg rounded-4 mx-auto"
     style="max-width:750px;">

<div class="card-header bg-primary text-white text-center p-4">

<h2>
Employee Profile
</h2>

</div>

<div class="card-body p-4">

<div class="text-center mb-4">

<div class="rounded-circle bg-primary text-white d-inline-flex
            align-items-center justify-content-center"
     style="width:90px;height:90px;font-size:40px;">

${employee.name.substring(0,1)}

</div>

<h3 class="mt-3">
${employee.name}
</h3>

<p class="text-muted">
${employee.department}
</p>

</div>

<div class="row g-3">

<div class="col-md-6">

<label class="fw-bold">
Email
</label>

<p>${employee.email}</p>

</div>

<div class="col-md-6">

<label class="fw-bold">
Mobile
</label>

<p>${employee.mobile}</p>

</div>

<div class="col-md-6">

<label class="fw-bold">
Age
</label>

<p>${employee.age}</p>

</div>

<div class="col-md-6">

<label class="fw-bold">
Gender
</label>

<p>${employee.gender}</p>

</div>

<div class="col-md-6">

<label class="fw-bold">
Department
</label>

<p>${employee.department}</p>

</div>

<div class="col-md-6">

<label class="fw-bold">
Address
</label>

<p>${employee.address}</p>

</div>

</div>

<a href="/employee.jsp"
   class="btn btn-secondary">

Back

</a>

</div>

</div>

</div>

</body>
</html>