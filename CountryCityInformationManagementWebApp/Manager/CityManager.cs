using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CountryCityInformationManagementWebApp.DAL.Gateway;
using CountryCityInformationManagementWebApp.DAL.Model;
using CountryCityInformationManagementWebApp.DAL.Model.ViewModel;

namespace CountryCityInformationManagementWebApp.Manager
{
    public class CityManager
    {
        CityGateway aCityGateway = new CityGateway();

        public string SaveCity(City aCity)
        {
            if (aCityGateway.DoesCityExist(aCity.CityName))
            {
                return "This City Already Exist In City List";
            }
            else
            {

                if (aCityGateway.SaveCity(aCity) > 0)
                {
                    return "City Added Successfully";
                }
                else
                {
                    return "City Save Failed";
                }
            }
        }

        public List<CityListWithCountry> GetAllCityData()
        {
            return aCityGateway.GetAllCityData();
        }

        public List<ViewCitiesAllListCityAndCountryWise> GetViewCitiesDataByCityName(string cityName)
        {
            return aCityGateway.GetViewCitiesDataByCityName(cityName);
        }

        public List<ViewCitiesAllListCityAndCountryWise> GetViewCitiesDataByCountryName(int searchCountryId)
        {
            return aCityGateway.GetViewCitiesDataByCountryName(searchCountryId);
        }

        public List<ViewCitiesAllListCityAndCountryWise> GetViewCitiesDataAll()
        {
            return aCityGateway.GetViewCitiesDataAll();
        }
    }
}