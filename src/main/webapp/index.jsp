<!DOCTYPE html>
<html>
<head>
    <title>Real-Time Payment Page</title>
    <script>
        function showLoader() {
            document.getElementById("loading").style.display = "block";
        }

        function showResult(result) {
            document.getElementById("loading").style.display = "none";
            document.getElementById("result").innerText = result;
        }
    </script>
</head>
<body>
    <h2>Make a Payment</h2>
    <form action="pay" method="post" onsubmit="showLoader()">
        <label>Payer:</label>
        <input type="text" name="payer" required /><br><br>

        <label>Amount:</label>
        <input type="number" name="amount" step="0.01" required /><br><br>

        <label>Method:</label>
        <select name="method">
            <option value="CreditCard">Credit Card</option>
            <option value="PayPal">PayPal</option>
            <option value="UPI">UPI</option>
        </select><br><br>

        <input type="submit" value="Pay" />
    </form>

    <div id="loading" style="display:none;">
        Processing payment... Please wait.
    </div>

    <div id="result">
        <% 
            String result = (String) request.getAttribute("result");
            if (result != null) {
        %>
            <h3><%= result %></h3>
        <% } %>
    </div>
</body>
</html>
