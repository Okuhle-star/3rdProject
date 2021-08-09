        // Load the Visualization API and the corechart package.
        google.charts.load('current', { 'packages': ['corechart'] });

        // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChart);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart() {

            // Create the data table.
            var data = google.visualization.arrayToDataTable([
                ['Category', 'Reported Cases', { role: 'style' }],
                ['Theft', 9549, 'silver'],
                ['Robbery at Residential Premises', 5288, 'silver'],
                ['Attempted Murder', 4582, 'silver'],
                ['Murder', 4976, 'silver'],
                ['Carjacking', 4513, 'silver'],
            ]);
            // Set chart options
            var options = {
                'title': 'Number of Crime Cases',
                'width': 996,
                'height': 500
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.ColumnChart(document.getElementById('displayGraph'));
            chart.draw(data, options);
        }