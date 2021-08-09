using System;
using System.Collections.Generic;
using CrimeBusterSpace;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace The_Elite_Programmers_Frontend
{
    public partial class dailyUpdates : System.Web.UI.Page
    {
        Client client = new Client();

        int incCounter = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string date = Convert.ToString(DateTime.Today.DayOfWeek + "  " + DateTime.Today.Day + "/" + DateTime.Today.Month + "/" + DateTime.Today.Year);
            currentDate.InnerText = date;
            getIncidents();
        }

        private async void getIncidents()
        {
            List<string> incidents = new List<string>();

            SortedDictionary<string, int> inc = new SortedDictionary<string, int>();

            var data = await client.ApiAlertsGetAsync();

            foreach (var x in data)
            {
                incidents.Add(x.CrimeTypeId);
            }

            foreach (string x in incidents)
            {
                incCounter++;
                if (inc.Count != 0)
                {
                    if (inc.ContainsKey(x))
                    {
                        int val = inc[x];
                        val++;
                        inc.Remove(x);
                        inc.Add(x, val);
                    }
                    else
                    {
                        inc.Add(x, 1);
                    }
                }
                else
                {
                    inc.Add(x, 1);
                }

            }

            string strIncidents = "<p>";
            foreach (var x in inc)
            {
                strIncidents += "<span style='text-indent: 30px;'><b>" + x.Key + "</b></span> : " + x.Value + "<br/>";
            }

            strIncidents += "</p>";

            mainContent.InnerHtml = "<p>" + incCounter + " incidents have been reported so far in your area and it's nearby surroundings.<br/>" +
                "The details of incidents that have occured have been outlined below:<br/>" + strIncidents +
                "</p>";

            //Try to create a 2D array that contains name of location as a column containing types of incidents as rows
            string incByLocation = checkIncidentsByLocation(data);

            mainContent.InnerHtml += "<p><b><span style='color:red;'>Areas affected</span></b> : <br/>" + incByLocation + "</p><br/>";

        }

        private string checkIncidentsByLocation(ICollection<Alert> data)
        {
            string info = "";
            string[,] locationIncidents = new string[2, 4];

            locationIncidents[0, 0] = "Auckland Park";
            locationIncidents[0, 1] = "Theft";
            locationIncidents[0, 2] = "Carjacking";
            locationIncidents[0, 3] = "Hijacking";

            locationIncidents[1, 0] = "Bryanston";
            locationIncidents[1, 1] = "Housebreaking";
            locationIncidents[1, 2] = "Murder";
            locationIncidents[1, 3] = "Other";

            for (int x = 0; x < 2; x++)
            {
                info += "Incident that occured at <b>" + locationIncidents[x, 0] + "</b> :<br/><ul>";
                for (int y = 1; y < 4; y++)
                {
                    info += "<li>" + locationIncidents[x, y] + "</li>";
                }
                info += "</ul>";
            }

            return info;
        }

    }
}