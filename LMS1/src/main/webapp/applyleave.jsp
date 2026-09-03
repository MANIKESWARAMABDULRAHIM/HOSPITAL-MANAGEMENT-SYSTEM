<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<title>LMS | Apply Leave</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>

<body class="bg-light">

<div class="container py-5">

<div class="card shadow-lg border-0 rounded-4 mx-auto"
     style="max-width:850px;">

<div class="card-header bg-primary text-white text-center p-4">

<h2>
Apply for Leave
</h2>

<p class="mb-0">
Submit your leave request
</p>

</div>

<div class="card-body p-4">

<form action="/saveleave"
      method="post">

<div class="row g-3">

<div class="col-md-6">

<label class="form-label">
Employee Name
</label>

<input type="text"
       name="employeeName"
       class="form-control"
       required>

</div>

<div class="col-md-6">

<label class="form-label">
Leave Type
</label>

<select name="leaveType"
        class="form-select"
        required>

<option value="">Select Leave Type</option>
<option>Casual Leave</option>
<option>Sick Leave</option>
<option>Earned Leave</option>
<option>Emergency Leave</option>
<option>Medical Leave</option>

</select>

</div>

<div class="col-md-6">

<label class="form-label">
From Date
</label>

<input type="date"
       name="fromDate"
       class="form-control"
       required>

</div>

<div class="col-md-6">

<label class="form-label">
To Date
</label>

<input type="date"
       name="toDate"
       class="form-control"
       required>

</div>

<div class="col-12">

<label class="form-label">
Reason
</label>

<textarea name="reason"
          class="form-control"
          rows="5"
          placeholder="Enter reason for leave"
          required></textarea>

</div>

</div>

<div class="text-center mt-4">

<button type="submit"
        class="btn btn-primary px-5">

Submit Leave

</button>

<a href="/employee.jsp"
   class="btn btn-outline-secondary px-5 ms-2">

Cancel

</a>

</div>

</form>

</div>

</div>

</div>

</body>
</html>