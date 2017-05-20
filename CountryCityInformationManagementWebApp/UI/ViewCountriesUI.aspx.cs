using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityInformationManagementWebApp.DAL.Model.ViewModel;
using CountryCityInformationManagementWebApp.Manager;

namespace CountryCityInformationManagementWebApp.UI
{
    public partial class ViewCountriesUI : System.Web.UI.Page
    {
        CountryManager aCountryManager = new CountryManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewAllCountries();
            }
        }

        public void ViewAllCountries()
        {
            List<ViewCountriesViewModel> countries = aCountryManager.GetViewCountryListWithTotal("");
            viewCountriesGridView.DataSource = countries;
            viewCountriesGridView.DataBind();
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            if (countrySearchTextBox.Text != "")
            {
                ViewCountryTotalSearch();
                messageLabel.Text = String.Empty;
            }
            else
            {
                messageLabel.Text = "Enter A Country Name";
                ViewAllCountries();
            }
        }

        public void ViewCountryTotalSearch()
        {
            string countryName = countrySearchTextBox.Text;

            List<ViewCountriesViewModel> countries = aCountryManager.GetViewCountryListWithTotal(countryName);
            viewCountriesGridView.DataSource = countries;
            viewCountriesGridView.DataBind();
        }

        protected void viewCitiesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            viewCountriesGridView.PageIndex = e.NewPageIndex;
            ViewCountryTotalSearch();
        }
    }
}