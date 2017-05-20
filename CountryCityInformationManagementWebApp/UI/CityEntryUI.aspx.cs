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
    public partial class CityEntryUI : System.Web.UI.Page
    {
        CountryManager aCountryManager = new CountryManager();
        CityManager aCityManager = new CityManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCountryNameOnDropDownList();
            }
            LoadAllDataOnGridView();
        }

        public void LoadCountryNameOnDropDownList()
        {
            List<Country> countries = aCountryManager.GetAllCountryData();
            countryDropDownList.DataSource = countries;
            countryDropDownList.DataTextField = "CountryName";
            countryDropDownList.DataValueField = "Id";
            countryDropDownList.DataBind();
        }

        public void LoadAllDataOnGridView()
        {
            List<CityListWithCountry> cityListWithCountries = aCityManager.GetAllCityData();
            cityGridView.DataSource = cityListWithCountries;
            cityGridView.DataBind();
        }

        public void ResetField()
        {
            nameTextBox.Text = String.Empty;
            cityAboutEditor.Value = String.Empty;
            noOfDwellersTextBox.Text = String.Empty;
            locationTextBox.Text = String.Empty;
            weatherTextBox.Text = String.Empty;
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            City aCity = new City();

            if (nameTextBox.Text == "")
            {
                messageLabel.Text = "Enter City Name";
                return;
            }
            else
            {
                aCity.CityName = nameTextBox.Text;

            }
            if (cityAboutEditor.Value == "")
            {
                messageLabel.Text = "Enter City About";
                return;
            }
            else
            {
                aCity.CityAbout = cityAboutEditor.Value;
            }

            if (noOfDwellersTextBox.Text == "")
            {
                messageLabel.Text = "Enter No Of. Dwellers";
                return;
            }
            else
            {
                int parsedValue;
                if (!int.TryParse(noOfDwellersTextBox.Text, out parsedValue))
                {
                    messageLabel.Text = "No Of. Dwellers Must be a number value";
                    return;
                }
                else
                {

                    Int64 population = Convert.ToInt64(noOfDwellersTextBox.Text);
                    if (population <= 0)
                    {
                        messageLabel.Text = "Population must be greater than zero";
                        return;
                    }
                    aCity.NoOfDwellers = population;

                }
            }

            if (locationTextBox.Text == "")
            {
                messageLabel.Text = "Enter Location";
                return;
            }
            else
            {
                aCity.Location = locationTextBox.Text;
            }

            if (weatherTextBox.Text == "")
            {
                messageLabel.Text = "Enter Weather";
                return;
            }
            else
            {
                aCity.Weather = weatherTextBox.Text;
            }

            aCity.CountryId = Convert.ToInt32(countryDropDownList.SelectedValue);

            string message = aCityManager.SaveCity(aCity);

            if (message == "City Added Successfully")
            {
                messageLabelGreen.Text = message;
                messageLabel.Text = String.Empty;
            }
            else
            {
                messageLabel.Text = message;
            }

            LoadAllDataOnGridView();
            ResetField();

        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}