<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment status</title>
    <link rel="stylesheet" type="text/css" href="style.css">

</head>
<body><div>
    <div class="header">
       <h2>Payment status</h2>
    </div>
    <div class ="content">
        <form action="functions.php" method="post">
            <label>Payment Type</label><br>
            <select name="paymode">
                <option>Cash</option>
                <option>Mpesa</option>
                <option>Credit card</option>
            </select><br>
            <label>Payment ID</label><br>
            <input type="text" name="payid"placeholder="Enter transaction Id"><br>
            <label>Payers Name</label><br>
            <input type="text" name="payname"placeholder="Enter payers details"><br>
            <label>Payment Time</label><br>
            <input type="date" name="paydate"placeholder="Date of payment"><br>
            <label>Payment Time</label><br>
            <input type="time" name="paytime"placeholder="Time of payment"><br>
            <button type="submit" name="pay">Pay</button>
        </form>
    </div>

    </div>
</body>
</html>