<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
    uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>My Leaves</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>

<body class="bg-light">

<div class="container py-5">

<div class="d-flex justify-content-between align-items-center mb-4">

<div>

<h2>My Leave Applications</h2>

<p class="text-muted">
Track your leave requests.
</p>

</div>

<a href="/applyleave"
   class="btn btn-primary">

Apply New Leave

</a>

</div>

<div class="card border-0 shadow-sm rounded-4">

<div class="table-responsive">

<table class="table table-hover align-middle mb-0">

<thead class="table-dark">

<tr>

<th>ID</th>
<th>Employee</th>
<th>Leave Type</th>
<th>From</th>
<th>To</th>
<th>Reason</th>
<th>Status</th>

</tr>

</thead>

<tbody>

<c:forEach var="leave"
           items="${leaves}">

<tr>

<td>${leave.id}</td>

<td>${leave.employeeName}</td>

<td>${leave.leaveType}</td>

<td>${leave.fromDate}</td>

<td>${leave.toDate}</td>

<td>${leave.reason}</td>

<td>

<c:choose>

<c:when test="${leave.status == 'Approved'}">

<span class="badge bg-success">
Approved
</span>

</c:when>

<c:when test="${leave.status == 'Rejected'}">

<span class="badge bg-danger">
Rejected
</span>

</c:when>

<c:otherwise>

<span class="badge bg-warning text-dark">
Pending
</span>

</c:otherwise>

</c:choose>

</td>

</tr>

</c:forEach>

</tbody>

</table>

</div>

</div>

<br>

<a href="/employee.jsp"
   class="btn btn-secondary">

Back to Dashboard

</a>

</div>

</body>
</html>