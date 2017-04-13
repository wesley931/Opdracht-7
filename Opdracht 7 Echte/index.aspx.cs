using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Opdracht_7_Echte
{
    public partial class index : System.Web.UI.Page
    {
        
        

        public static class Globals
        {
            public static Int32 getal1; // Getal1 voor de rekenmachine
            public static Int32 getal2;
            public static Int32 getal3;
            public static Int32 getal4;
            public static Int32 getal5;
            public static Int32 cijfer = 10;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void lblSom_Click(object sender, EventArgs e)
        {
            Random generator = new Random(); // De random generator die de nummers maakt

            int max = Convert.ToInt32(txtHoogste.Text);// De hoogste waarde die de random nummer mag zijn

            for(int i=1;i<6;i++)
            {
                int randomGetal = generator.Next(max) + 1;
                var lblGetalI = ((Label)FindControl("lblGetal" + i)); // Zoekt de label waarin het getal word weergegeven

                lblGetalI.Text = randomGetal.ToString();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            for(int i=1;i < 6; i++)
            {
                var lblGetalI = ((Label)FindControl("lblGetal" + i));// Haalt het cijfer op dat in de label random is aangemaakt
                int getal = Convert.ToInt32(lblGetalI.Text); //Het cijfer in de label wordt een int

                var antwoodGetaali = ((TextBox)FindControl("txtAntwoord" + i)); // Het antwoord dat is ingevoerd 
                int antwoord = Convert.ToInt32(antwoodGetaali.Text); // Het ingevoerde antwoord wordt naar een int geconventeerd

                var beoordeling = ((Label)FindControl("lblUitkomst" + i)); // De label voor goed en fout

                if(antwoord == getal * i)// Een if die gaat kijken als het antwoord klopt
                {
                    beoordeling.Text = "Goed";
                }
                else
                {
                    beoordeling.Text = "Fout";
                    Globals.cijfer = Globals.cijfer - 2;
                }
                
            }
            if (Globals.cijfer <= 0)
            {
                Globals.cijfer = 1;
                lblScoreCijfer.Text = Globals.cijfer.ToString();
            }
            else
            {
                lblScoreCijfer.Text = Globals.cijfer.ToString();
            }
        }
    }
}