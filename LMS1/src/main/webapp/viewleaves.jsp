<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"
    uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Admin | Leave Requests</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>

<body class="bg-light">

<div class="container-fluid py-5 px-4">

<div class="d-flex justify-content-between mb-4">

<div>

<h2>Leave Requests</h2>

<p class="text-muted">
Review and manage employee leave applications.
</p>

</div>

<a href="/admin"
   class="btn btn-secondary">

Dashboard

</a>

</div>

<div class="card border-0 shadow-sm rounded-4">

<div class="table-responsive">

<table class="table table-hover align-middle mb-0">

<thead class="table-dark">

<tr>

<th>ID</th>
<th>Employee</th>
<th>Email</th>
<th>Type</th>
<th>From</th>
<th>To</th>
<th>Reason</th>
<th>Status</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<c:forEach var="leave"
           items="${leaves}">

<tr>

<td>${leave.id}</td>

<td>${leave.employeeName}</td>

<td>${leave.email}</td>

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

<td>

<a href="/approve/${leave.id}"
   class="btn btn-sm btn-success">

Approve

</a>

<a href="/reject/${leave.id}"
   class="btn btn-sm btn-danger">

Reject

</a>

<a href="/deleteleave?id=${leave.id}"
   class="btn btn-sm btn-outline-dark"
   onclick="return confirm('Delete this leave?')">

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

</body>
</html>