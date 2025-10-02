<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find Flights - Search</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(to right,#1a1a1a 0%,#1a1a1a 10%,#e2e7ed 10%,#e2e7ed 90%,#1a1a1a 90%,#1a1a1a 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        .logo img {
            width: 40px;
            height: 40px;
        }

        .logo h1 {
            font-size: 1.8rem;
            color: #1a1a1a;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            background: #e2e7ed; /* Added background color to container */
            padding: 20px;
            border-radius: 10px;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
            padding: 15px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-weight: 500;
        }

        .btn-primary {
            background: #007bff;
            color: white;
        }

        .btn-primary:hover {
            background: #0069d9;
        }

        .booking-form {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }

        .form-row {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-bottom: 15px;
            align-items: flex-end;
        }

        .form-group {
            flex: 1;
            min-width: 150px;
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .button-row {
            display: flex;
            justify-content: center;
            margin-top: 10px;
        }

        label {
            font-weight: 500;
            color: #333;
            font-size: 0.9rem;
        }

        input, select {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 0.95rem;
        }

        input:focus, select:focus {
            outline: none;
            border-color: #007bff;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-top: 15px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background: #f8f9fa;
            font-weight: 600;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .form-row {
                flex-direction: column;
            }
            
            .form-group {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h2>Search Flights</h2>
        </header>
        
        <form class="booking-form" id="searchForm">
            <div class="form-row">
                <div class="form-group">
                    <label for="from">From:</label>
                    <input type="text" id="from" name="from" placeholder="City or Airport" required>
                </div>
                <div class="form-group">
                    <label for="to">To:</label>
                    <input type="text" id="to" name="to" placeholder="City or Airport" required>
                </div>
                <div class="form-group">
                    <label for="departure">Departure:</label>
                    <input type="date" id="departure" name="departure" required>
                </div>
                <div class="form-group">
                    <label for="return">Return:</label>
                    <input type="date" id="return" name="return">
                </div>
                <div class="form-group">
                    <label for="class">Class:</label>
                    <select id="class" name="class" required>
                        <option value="economy">Economy</option>
                        <option value="business">Business</option>
                        <option value="first">First Class</option>
                    </select>
                </div>
            </div>
            <div class="button-row">
                <button type="submit" class="btn btn-primary" id="searchBtn">Search Flights</button>
            </div>
        </form>
        
        <div id="results"></div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Set default date values
            const today = new Date();
            const tomorrow = new Date(today);
            tomorrow.setDate(tomorrow.getDate() + 1);
            
            const departureInput = document.getElementById('departure');
            const returnInput = document.getElementById('return');
            
            departureInput.valueAsDate = today;
            returnInput.valueAsDate = tomorrow;
            
            // Handle form submission
            document.getElementById('searchForm').addEventListener('submit', function(e) {
                e.preventDefault();
                
                const from = document.getElementById('from').value;
                const to = document.getElementById('to').value;
                const departure = document.getElementById('departure').value;
                const returnDate = document.getElementById('return').value;
                const travelClass = document.getElementById('class').value;
                
                // Display sample results (in a real app, this would be an API call)
                const resultsDiv = document.getElementById('results');
                
                resultsDiv.innerHTML = `
                    <table>
                        <thead>
                            <tr>
                                <th>Flight No.</th>
                                <th>From</th>
                                <th>To</th>
                                <th>Departure Date</th>
                                <th>Arrival Date</th>
                                <th>Price</th>
                                <th>Company</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>FF123</td>
                                <td>${from}</td>
                                <td>${to}</td>
                                <td>${departure} 10:00 AM</td>
                                <td>${departure} 12:30 PM</td>
                                <td>$299</td>
                                <td>FindFlights Air</td>
                                <td><button class='btn btn-primary'>Book</button></td>
                            </tr>
                            <tr>
                                <td>FF456</td>
                                <td>${from}</td>
                                <td>${to}</td>
                                <td>${departure} 2:00 PM</td>
                                <td>${departure} 4:30 PM</td>
                                <td>$349</td>
                                <td>FindFlights Air</td>
                                <td><button class='btn btn-primary'>Book</button></td>
                            </tr>
                        </tbody>
                    </table>
                `;
            });
        });
    </script>
</body>
</html>
<%
%>