using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CountryCityInformationManagementWebApp.DAL.Gateway;
using CountryCityInformationManagementWebApp.DAL.Model;
using CountryCityInformationManagementWebApp.DAL.Model.ViewModel;

namespace CountryCityInformationManagementWebApp.Manager
{
    public class CountryManager
    {
        CountryGateway aCountryGateway = new CountryGateway();

        public string SaveCountry(Country aCountry)
        {
            if (aCountryGateway.DoesCountryExist(aCountry.CountryName))
            {
                return "Country Name Already Exist In Country List";
            }
            else
            {
                if (aCountryGateway.SaveCountry(aCountry) > 0)
                {
                    return "Country Added Successfully";
                }
                else
                {
                    return "Country Added Failed";
                }
            }
        }

        public List<Country> GetAllCountryData()
        {
            return aCountryGateway.GetAllCountryData();
        }

        public List<ViewCountriesViewModel> GetViewCountryListWithTotal(string countryName)
        {
            return aCountryGateway.GetViewCountryListTotal(countryName);
        }
    }
}