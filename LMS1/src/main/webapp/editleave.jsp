<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Edit Leave</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>

<body class="bg-light">

<div class="container py-5">

<div class="card border-0 shadow-lg rounded-4 mx-auto"
     style="max-width:800px;">

<div class="card-header bg-primary text-white">

<h3>
Edit Leave
</h3>

</div>

<div class="card-body p-4">

<form action="/updateleave"
      method="post">

<input type="hidden"
       name="id"
       value="${leave.id}">

<input type="hidden"
       name="email"
       value="${leave.email}">

<div class="mb-3">

<label class="form-label">
Employee Name
</label>

<input type="text"
       name="employeeName"
       value="${leave.employeeName}"
       class="form-control"
       required>

</div>

<div class="mb-3">

<label class="form-label">
Leave Type
</label>

<select name="leaveType"
        class="form-select"
        required>

<option>${leave.leaveType}</option>
<option>Casual Leave</option>
<option>Sick Leave</option>
<option>Earned Leave</option>
<option>Emergency Leave</option>
<option>Medical Leave</option>

</select>

</div>

<div class="row">

<div class="col-md-6">

<label class="form-label">
From Date
</label>

<input type="date"
       name="fromDate"
       value="${leave.fromDate}"
       class="form-control"
       required>

</div>

<div class="col-md-6">

<label class="form-label">
To Date
</label>

<input type="date"
       name="toDate"
       value="${leave.toDate}"
       class="form-control"
       required>

</div>

</div>

<div class="mt-3">

<label class="form-label">
Reason
</label>

<textarea name="reason"
          class="form-control"
          required>${leave.reason}</textarea>

</div>

<div class="mt-3">

<label class="form-label">
Status
</label>

<select name="status"
        class="form-select">

<option>${leave.status}</option>
<option>Pending</option>
<option>Approved</option>
<option>Rejected</option>

</select>

</div>

<div class="mt-4">

<button class="btn btn-primary">
Update Leave
</button>

<a href="/viewleaves"
   class="btn btn-secondary">

Cancel

</a>

</div>

</form>

</div>

</div>

</div>

</body>
</html>