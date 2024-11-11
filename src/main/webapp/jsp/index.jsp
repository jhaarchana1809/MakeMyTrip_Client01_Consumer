<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passenger Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center mb-4">Passenger Form</h2>
    <form action="bookTicket" method="post">
        <!-- Name Field -->
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name" placeholder="Enter your name" required>
        </div>

        <!-- Age Field -->
        <div class="form-group">
            <label for="age">Age</label>
            <input type="number" class="form-control" name="age" placeholder="Enter your age" required min="0">
        </div>

        <!-- From Location Field -->
        <div class="form-group">
            <label for="from">From</label>
            <input type="text" class="form-control" name="fromLocation" placeholder="Departure location" required>
        </div>

        <!-- To Location Field -->
        <div class="form-group">
            <label for="to">To</label>
            <input type="text" class="form-control" name="toLocation" placeholder="Destination location" required>
        </div>
        
        <!-- Train Number Field -->
        <div class="form-group">
            <label for="trainNo">Train Number</label>
            <input type="number" class="form-control" name="trainNo" placeholder="Enter train number" required>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-primary btn-block">Submit</button>
    </form>
    <a href="search">Search Ticket</a>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
