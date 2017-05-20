using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityInformationManagementWebApp.DAL.Model;
using CountryCityInformationManagementWebApp.DAL.Model.ViewModel;
using CountryCityInformationManagementWebApp.Manager;

namespace CountryCityInformationManagementWebApp.UI
{
    public partial class ViewCitiesUI : System.Web.UI.Page
    {
        CountryManager aCountryManager = new CountryManager();
        CityManager aCityManager = new CityManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCountryNameOnDropDownList();
            }
            LoadAllData();
        }

        public void LoadCountryNameOnDropDownList()
        {
            List<Country> countries = aCountryManager.GetAllCountryData();
            countryDropDownList.DataSource = countries;
            countryDropDownList.DataTextField = "CountryName";
            countryDropDownList.DataValueField = "Id";
            countryDropDownList.DataBind();
        }

        public void LoadAllData()
        {
            List<ViewCitiesAllListCityAndCountryWise> viewCitiesAllListCityAndCountryWises = aCityManager.GetViewCitiesDataAll();
            viewCitiesGridView.DataSource = viewCitiesAllListCityAndCountryWises;
            viewCitiesGridView.DataBind();
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            if (searchRadioButtonList.SelectedValue == "City Name")
            {
                LoadDataByCityName();
                messageLabel.Text = String.Empty;
            }
            else if (searchRadioButtonList.SelectedValue == "Country Name")
            {
                LoadDataByCountryName();
                messageLabel.Text = String.Empty;
            }
            else
            {
                messageLabel.Text = "Check City Name Or Country Name";
            }
        }

        public void LoadDataByCityName()
        {
            string searchKey = cityNameSearchTextBox.Text;

            List<ViewCitiesAllListCityAndCountryWise> viewCitiesAllListCityAndCountryWises = aCityManager.GetViewCitiesDataByCityName(searchKey);
            viewCitiesGridView.DataSource = viewCitiesAllListCityAndCountryWises;
            viewCitiesGridView.DataBind();
        }

        public void LoadDataByCountryName()
        {
            int searchCountryId = Convert.ToInt32(countryDropDownList.SelectedValue);
            List<ViewCitiesAllListCityAndCountryWise> viewCitiesAllListCityAndCountryWises =
            aCityManager.GetViewCitiesDataByCountryName(searchCountryId);
            viewCitiesGridView.DataSource = viewCitiesAllListCityAndCountryWises;
            viewCitiesGridView.DataBind();
        }

        protected void viewCitiesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            viewCitiesGridView.PageIndex = e.NewPageIndex;

            if (searchRadioButtonList.SelectedValue == "City Name")
            {
                LoadDataByCityName();
            }
            else if (searchRadioButtonList.SelectedValue == "Country Name")
            {
                LoadDataByCountryName();
            }
            else
            {
                LoadAllData();
            }
        }
    }
}