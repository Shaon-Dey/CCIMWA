using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityInformationManagementWebApp.DAL.Model;
using CountryCityInformationManagementWebApp.Manager;

namespace CountryCityInformationManagementWebApp.UI
{
    public partial class CountryEntryUI : System.Web.UI.Page
    {
        CountryManager aCountryManager = new CountryManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadAllCountryDataOnGridView();
        }

        public void LoadAllCountryDataOnGridView()
        {
            List<Country> countries = aCountryManager.GetAllCountryData();
            countryAboutGridView.DataSource = countries;
            countryAboutGridView.DataBind();
        }

        public void ResetFields()
        {
            nameTextBox.Text = string.Empty;
            countryAboutEditor.Value = string.Empty;
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Country aCountry = new Country();

            if (nameTextBox.Text == "")
            {
                messageLabel.Text = "Enter a Country Name";
                return;
            }
            aCountry.CountryName = nameTextBox.Text;


            if (countryAboutEditor.Value == "")
            {
                messageLabel.Text = "Enter a Country Information";
                return;
            }
            aCountry.CountryAbout = countryAboutEditor.Value;

            string message = aCountryManager.SaveCountry(aCountry);

            if (message == "Country Added Successfully")
            {
                messageLabelGreen.Text = message;
                messageLabel.Text = String.Empty;
            }
            else
            {
                messageLabel.Text = message;
            }


            LoadAllCountryDataOnGridView();
            ResetFields();
        }

        protected void countryAboutGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            countryAboutGridView.PageIndex = e.NewPageIndex;
            LoadAllCountryDataOnGridView();
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}