<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submission Result</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">Form Submission Result</h1>
    <div class="card">
        <div class="card-body">
            <p class="card-text"><strong>Name:</strong> <%= request.getAttribute("namejsp") %></p>
            <p class="card-text"><strong>Email:</strong> <%= request.getAttribute("emailjsp") %></p>
            <p class="card-text"><strong>Ciclo:</strong> <%= request.getAttribute("ciclojsp") %></p>
            <p class="card-text"><strong>Ciclos faltantes:</strong> te faltan <%= request.getAttribute("faltajsp") %> ciclos</p>
        </div>
    </div>
    <a href="index.jsp" class="btn btn-primary mt-3">Back to Form</a>
</div>

<!-- Bootstrap JS (optional, but needed for some Bootstrap features) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>