using CrimeBusterSpace;
using System;
using System.Collections.Generic;
using System.Web.UI.DataVisualization.Charting;

namespace The_Elite_Programmers_Frontend
{
    public partial class stats : System.Web.UI.Page
    {
        Client client = new Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayAlertsData();
        }

        private void setUpFilter()
        {
            filterDates.Visible = false;
            if (statFilter.SelectedValue.Equals("range"))
            {
                filterDates.Visible = true;
            }
        }

        public async void DisplayAlertsData()
        {
            setUpFilter();

            var alerts = await client.ApiAlertsGetAsync();

            if (statFilter.SelectedValue.Equals("today"))
            {
                List<Alert> dataByToday = new List<Alert>();
                foreach (var x in alerts)
                {
                    //DateTimeOffset.
                    int numDays = (DateTimeOffset.Now - x.AlertTime).Days;
                    if (numDays == 0)
                    {
                        dataByToday.Add(x);
                    }
                }

                ICollection<Alert> todayData = dataByToday;
                SortedDictionary<string, int> data = CountStats(todayData);
                DisplayResults(data);
            }
            else if (statFilter.SelectedValue.Equals("week"))
            {
                List<Alert> dataByWeek = new List<Alert>();
                foreach (var x in alerts)
                {
                    //DateTimeOffset.
                    int numDays = (DateTimeOffset.Now - x.AlertTime).Days;
                    if (numDays <= 7)
                    {
                        dataByWeek.Add(x);
                    }
                }

                ICollection<Alert> weekData = dataByWeek;
                SortedDictionary<string, int> data = CountStats(weekData);
                DisplayResults(data);
            }
            else if (statFilter.SelectedValue.Equals("month"))
            {
                List<Alert> dataByMonth = new List<Alert>();
                foreach (var x in alerts)
                {
                    //DateTimeOffset.
                    int numDays = (DateTimeOffset.Now - x.AlertTime).Days;
                    if (numDays <= 31)
                    {
                        dataByMonth.Add(x);
                    }
                }

                ICollection<Alert> monthData = dataByMonth;
                SortedDictionary<string, int> data = CountStats(monthData);
                DisplayResults(data);
            }
            else if (statFilter.SelectedValue.Equals("year"))
            {
                List<Alert> dataByYear = new List<Alert>();
                foreach (var x in alerts)
                {
                    //DateTimeOffset.
                    int numDays = (DateTimeOffset.Now - x.AlertTime).Days;
                    if (numDays <= 365)
                    {
                        dataByYear.Add(x);
                    }
                }

                ICollection<Alert> yearData = dataByYear;
                SortedDictionary<string, int> data = CountStats(yearData);
                DisplayResults(data);
            }
            else if (statFilter.SelectedValue.Equals("range"))
            {

            }
            else
            {
                SortedDictionary<string, int> data = CountStats(alerts);
                DisplayResults(data);
            }



        }

        private void DisplayResults(SortedDictionary<string, int> data)
        {
            Series series = Chart.Series["Series1"];
            //Display results on Map
            var keys = data.Keys;
            foreach (var k in keys)
            {
                series.Points.AddXY(k, data[k]);
            }

            //Display results in a table
            int counter = 0;
            string tableHtml
             = "<table class='table'><thead class='thead-dark'><tr><th scope='col'></th><th scope='col'>Crime Type</th><th scope='col'>Count</th><tr></thead><tbody>";
            foreach (var x in data)
            {
                counter++;
                tableHtml += "<tr style='background:#ffffff;'><th scope'row>" + counter + "</th><td>" + x.Key + "</td><td>" + x.Value + "</td></tr>";
            }
            tableHtml += "</tbody></table>";

            statsTable.InnerHtml = tableHtml;
        }

        private SortedDictionary<string, int> CountStats(ICollection<Alert> alerts)
        {
            SortedDictionary<string, int> data = new SortedDictionary<string, int>();

            //Count crime occurences
            foreach (Alert x in alerts)
            {
                string strType = x.CrimeTypeId;

                if (data.ContainsKey(strType))
                {
                    int value = data[strType];
                    value++;
                    data.Remove(strType);
                    data.Add(strType, value);
                }
                else
                {
                    data.Add(strType, 1);
                }
            }

            return data;
        }
    }
}