<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-2">Name:</div>
            <div class="col-6">{{ $data['name'] }}</div>
        </div>
        <div class="row">
            <div class="col-2">Email:</div>
            <div class="col-6">{{ $data['email'] }}</div>
        </div>
        <div class="row">
            <div class="col-2">Phone Number:</div>
            <div class="col-6">{{ $data['phone_number'] }}</div>
        </div>
        <div class="row">
            <div class="col-2">Message:</div>
            <div class="col-6">{{ $data['message'] }}</div>
        </div>
    </div>
</body>
</html>