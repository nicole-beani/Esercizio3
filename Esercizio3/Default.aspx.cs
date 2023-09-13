using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Esercizio3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AggiungiPiatto_Click(object sender, EventArgs e)
        {
            
            string Opzioni = " ";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    Opzioni += $"{CheckBoxList1.Items[i].Text},";
                }
                Result.InnerHtml = $"{Lista.SelectedItem.Text} </br>" + $"{Opzioni}";
            }

            double pizzaPrice = 0;
            double aggPrezzo = 0;
            double totalPrice = 0;

            string selezPizza = Lista.SelectedItem.Value;
            switch (selezPizza)
            {
                case "margherita":
    pizzaPrice = 10;
    break;
case "diavola":
    pizzaPrice = 13;
    break;
case "quattroFormaggi":
    pizzaPrice = 15;
    break;
case "capricciosa":
    pizzaPrice = 14;
    break;
case "napoli":
    pizzaPrice = 16;
    break;
case "prosciuttoEfunghi":
    pizzaPrice = 13;
    break;
case "vegetariana":
    pizzaPrice = 11;
    break;
case "marinara":
    pizzaPrice = 12;
    break;
            }
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    aggPrezzo += Convert.ToDouble(CheckBoxList1.Items[i].Value);

                }
            }
            totalPrice = pizzaPrice + aggPrezzo;
            vediamo.Text = $"${totalPrice}";
        }
        

      
    }

}
