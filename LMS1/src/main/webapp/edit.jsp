<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<title>Edit Employee | LMS</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body {
    background: #f5f7fb;
    font-family: Arial, sans-serif;
}

.edit-card {
    max-width: 900px;
    margin: 50px auto;
    border: none;
    border-radius: 20px;
    overflow: hidden;
}

.card-header {
    background: #173b67;
    color: white;
    padding: 25px;
}

.form-control,
.form-select {
    border-radius: 10px;
    padding: 11px;
}

.form-control:focus,
.form-select:focus {
    box-shadow: 0 0 0 .2rem rgba(13,110,253,.15);
}

</style>

</head>

<body>


<div class="container">

<div class="card edit-card shadow-lg">


<!-- HEADER -->

<div class="card-header">

<h2 class="mb-1">

<i class="bi bi-person-gear"></i>

Edit Employee

</h2>

<p class="mb-0">

Update employee information

</p>

</div>


<!-- BODY -->

<div class="card-body p-4">


<form action="/edituser"
      method="post">


<!-- ID -->

<input type="hidden"
       name="id"
       value="${employee.id}">


<div class="row g-4">


<!-- NAME -->

<div class="col-md-6">

<label class="form-label fw-semibold">

Full Name

</label>

<input type="text"
       name="name"
       value="${employee.name}"
       class="form-control"
       required>

</div>


<!-- EMAIL -->

<div class="col-md-6">

<label class="form-label fw-semibold">

Email

</label>

<input type="email"
       name="email"
       value="${employee.email}"
       class="form-control"
       required>

</div>


<!-- AGE -->

<div class="col-md-6">

<label class="form-label fw-semibold">

Age

</label>

<input type="number"
       name="age"
       value="${employee.age}"
       class="form-control"
       min="18"
       max="70"
       required>

</div>


<!-- GENDER -->

<div class="col-md-6">

<label class="form-label fw-semibold">

Gender

</label>

<select name="gender"
        class="form-select"
        required>

<option value="Male"
        ${employee.gender == 'Male' ? 'selected' : ''}>

Male

</option>

<option value="Female"
        ${employee.gender == 'Female' ? 'selected' : ''}>

Female

</option>

<option value="Other"
        ${employee.gender == 'Other' ? 'selected' : ''}>

Other

</option>

</select>

</div>


<!-- MOBILE -->

<div class="col-md-6">

<label class="form-label fw-semibold">

Mobile Number

</label>

<input type="tel"
       name="mobile"
       value="${employee.mobile}"
       class="form-control"
       pattern="[0-9]{10}"
       required>

</div>


<!-- DEPARTMENT -->

<div class="col-md-6">

<label class="form-label fw-semibold">

Department

</label>

<select name="department"
        class="form-select"
        required>

<option value="IT"
        ${employee.department == 'IT' ? 'selected' : ''}>

IT

</option>

<option value="HR"
        ${employee.department == 'HR' ? 'selected' : ''}>

HR

</option>

<option value="Finance"
        ${employee.department == 'Finance' ? 'selected' : ''}>

Finance

</option>

<option value="Sales"
        ${employee.department == 'Sales' ? 'selected' : ''}>

Sales

</option>

<option value="Marketing"
        ${employee.department == 'Marketing' ? 'selected' : ''}>

Marketing

</option>

<option value="Operations"
        ${employee.department == 'Operations' ? 'selected' : ''}>

Operations

</option>

</select>

</div>


<!-- ADDRESS -->

<div class="col-12">

<label class="form-label fw-semibold">

Address

</label>

<textarea name="address"
          class="form-control"
          rows="3"
          required>${employee.address}</textarea>

</div>


</div>


<!-- BUTTONS -->

<div class="d-flex gap-2 mt-4">

<button type="submit"
        class="btn btn-primary px-4">

<i class="bi bi-check-circle"></i>

Update Employee

</button>


<a href="/findAll"
   class="btn btn-secondary px-4">

<i class="bi bi-arrow-left"></i>

Cancel

</a>

</div>


</form>

</div>

</div>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>