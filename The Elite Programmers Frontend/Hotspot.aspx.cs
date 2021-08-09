using Subgurim.Controles;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System.Drawing;
using CrimeBusterSpace;

namespace The_Elite_Programmers_Frontend
{
    public partial class Hotspot : System.Web.UI.Page
    {
        GLatLng mainLocation = new GLatLng(-26.176193381067023, 28.048188089799893);
        
        Client client = new Client();

        [Obsolete]
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                GMap1.setCenter(mainLocation, 5, GMapType.GTypes.Normal);
                setup();

            }

        }

        [Obsolete]
        protected void Default_Click(object sender, EventArgs e)
        {

            GMap1.setCenter(mainLocation, 5, GMapType.GTypes.Normal);
            setup();

        }

        [Obsolete]
        protected  void Satellite_Click(object sender, EventArgs e)
        {
            GMap1.setCenter(mainLocation, 5, GMapType.GTypes.Satellite);
            setup();
        }

        [Obsolete]
        protected void Physical_Click(object sender, EventArgs e)
        {
            GMap1.setCenter(mainLocation, 5, GMapType.GTypes.Physical);
           // String na = GMap1.getGMapLoadFunctionName();
           // Console.WriteLine(na);
            // GMap1.P
            setup();
        }

        [Obsolete]
        protected void Hybrid_Click(object sender, EventArgs e)
        {
            GMap1.setCenter(mainLocation, 5, GMapType.GTypes.Hybrid);
            setup();
        }

        [Obsolete]
        private async void setup()
        {
            GMap1.addGMapUI(new GMapUI());
            GMap1.Add(new GControl(GControl.preBuilt.LargeMapControl));
            GMap1.Add(new GControl(GControl.preBuilt.SmallMapControl));
            GMap1.Add(new GCustomCursor(cursor.crosshair, cursor.help));
            GMap1.enableGKeyboardHandler = true;
            GMap1.Add(new GControl(GControl.preBuilt.LargeMapControl));
            GMap1.Add(new GControl(GControl.preBuilt.MapTypeControl));
            GMap1.Add(new GControl(GControl.extraBuilt.TextualOnClickCoordinatesControl, new GControlPosition(GControlPosition.position.Top_Right)));



            var list = await client.ApiAlertsGetAsync();
             foreach (var i in list)
             {
                 decimal La = Convert.ToDecimal(i.Longi);
                 decimal Lon = Convert.ToDecimal(i.Lat);

                 GLatLng mainLocation1 = new GLatLng((double)Lon, (double)La);
                 PinLetter pinLetter = crimeType(i.CrimeTypeId);
                 GMarker icono = new GMarker(mainLocation1, new GMarkerOptions(new GIcon(pinLetter.ToString(), pinLetter.Shadow())));
            
                 GInfoWindow window = new GInfoWindow(icono, " <a href =\"" + "i.Address" + "\">" + i.CrimeTypeId + "</a>", false, GListener.Event.mouseover);
                 GMap1.Add(window);
                 //markers.Add(icono);

             }


        }

        private PinLetter crimeType(String CrimeType) {
            PinLetter pinLetter = null;
            if (CrimeType == "Smash and Grab")
            {
                pinLetter = new PinLetter("C", Color.Red, Color.White);
            }
            else if (CrimeType == "Murder") {
                pinLetter = new PinLetter("C", Color.SkyBlue, Color.White);
            }
            else if (CrimeType == "Assault") {
                pinLetter = new PinLetter("C", Color.Yellow, Color.White);
            }
            else if (CrimeType == "Vandalism") {
                pinLetter = new PinLetter("C", Color.Pink, Color.White);
            }
            else if (CrimeType == "Theft") {
                pinLetter = new PinLetter("C", Color.Blue, Color.White);
            }
            else {
                pinLetter = new PinLetter("C", Color.Maroon, Color.White);
            }

            return pinLetter;
        }
    }
}


 
