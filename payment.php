<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Payment Page</title>
  <link rel="stylesheet" href="css/payment.css" />
</head>
<body>
  <main class="payment-container">
    <h1>Payment</h1>
    <div class="payment-methods">
      <label>
        <input type="radio" name="payment-method" checked />
        <span>Pay with Credit Card</span>
      </label>
      <label>
        <input type="radio" name="payment-method" />
        <span>PayPal</span>
      </label>
      <label>
        <input type="radio" name="payment-method" />
        <span>Amazon Pay</span>
      </label>
    </div>
    <div class="payment-form">
      <div class="billing-info">
        <h2>Billing Info</h2>
        <label>Full Name
          <input type="text" placeholder="John Doe" />
        </label>
        <label>Billing Address
          <input type="text" placeholder="Fyrenot" />
        </label>
        <label>City
          <input type="text" placeholder="Stockholm" />
        </label>
        <label>Zip Code
          <input type="text" placeholder="12304" />
        </label>
        <label>Country
          <input type="text" placeholder="Sweden" />
        </label>
      </div>
      <div class="credit-card-info">
        <h2>Credit Card Info</h2>
        <label>Cardholder's Name
          <input type="text" placeholder="John Doe" />
        </label>
        <label>Card Number
          <input type="text" placeholder="5456-6456-7656-0456" />
        </label>
        <label>Exp Month
          <input type="text" placeholder="08" />
        </label>
        <label>Exp Year
          <input type="text" placeholder="18" />
        </label>
        <label>CVC Number
          <input type="text" placeholder="468" />
        </label>
      </div>
    </div>
    <div class="buttons">
    <button type="button" onclick="window.history.back()">Batal</button>
      <button type="button">Proceed</button>
    </div>
  </main>
</body>
</html>
