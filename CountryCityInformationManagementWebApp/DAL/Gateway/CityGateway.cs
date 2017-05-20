using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CountryCityInformationManagementWebApp.DAL.Model;
using CountryCityInformationManagementWebApp.DAL.Model.ViewModel;

namespace CountryCityInformationManagementWebApp.DAL.Gateway
{
    public class CityGateway : DefaultGateway
    {
        public int SaveCity(City aCity)
        {
            Query = "INSERT INTO Citys VALUES(@CityName, @CityAbout, @Dwellers, @Location, @Weather, @CountryId)";

            Command = new SqlCommand(Query, Connection);

            Connection.Open();

            Command.Parameters.AddWithValue("CityName", aCity.CityName);
            Command.Parameters.AddWithValue("CityAbout", aCity.CityAbout);
            Command.Parameters.AddWithValue("Dwellers", aCity.NoOfDwellers);
            Command.Parameters.AddWithValue("Location", aCity.Location);
            Command.Parameters.AddWithValue("Weather", aCity.Weather);
            Command.Parameters.AddWithValue("CountryId", aCity.CountryId);

            int rowAffected = Command.ExecuteNonQuery();
            Connection.Close();

            return rowAffected;
        }

        public bool DoesCityExist(string cityName)
        {
            Query = "SELECT * FROM Citys WHERE CityName = @CityName";

            Command = new SqlCommand(Query, Connection);

            Connection.Open();
            Command.Parameters.AddWithValue("CityName", cityName);

            Reader = Command.ExecuteReader();

            bool hasRow = Reader.HasRows;

            Reader.Close();
            Connection.Close();

            return hasRow;
        }

        public List<CityListWithCountry> GetAllCityData()
        {
            Query = "SELECT * FROM CityListWithCountryName ORDER BY CityName ASC";

            Command = new SqlCommand(Query, Connection);

            List<CityListWithCountry> cityListWithCountries = new List<CityListWithCountry>();

            Connection.Open();
            Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                CityListWithCountry aCityListWithCountry = new CityListWithCountry();

                aCityListWithCountry.CityName = Reader["CityName"].ToString();
                aCityListWithCountry.NoOfDwellers = Convert.ToInt64(Reader["NoOfDwellers"]);
                aCityListWithCountry.CountryName = Reader["CountryName"].ToString();

                cityListWithCountries.Add(aCityListWithCountry);
            }

            Reader.Close();
            Connection.Close();

            return cityListWithCountries;
        }

        public List<ViewCitiesAllListCityAndCountryWise> GetViewCitiesDataByCityName(string searchKey)
        {
            Query = "SELECT * FROM ViewCitiesAllListCityAndCountryWise WHERE CityName LIKE '%" + searchKey + "%'";

            Command = new SqlCommand(Query, Connection);

            List<ViewCitiesAllListCityAndCountryWise> viewCitiesAllListCityAndCountryWises = new List<ViewCitiesAllListCityAndCountryWise>();

            Connection.Open();
            Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                ViewCitiesAllListCityAndCountryWise aViewCitiesAllListCityAndCountryWise = new ViewCitiesAllListCityAndCountryWise();

                aViewCitiesAllListCityAndCountryWise.CityName = Reader["CityName"].ToString();
                aViewCitiesAllListCityAndCountryWise.CityAbout = Reader["CityAbout"].ToString();
                aViewCitiesAllListCityAndCountryWise.NoOfDwellers = Convert.ToInt64(Reader["NoOfDwellers"]);
                aViewCitiesAllListCityAndCountryWise.Location = Reader["Location"].ToString();

                aViewCitiesAllListCityAndCountryWise.Weather = Reader["Weather"].ToString();
                aViewCitiesAllListCityAndCountryWise.CountryName = Reader["CountryName"].ToString();
                aViewCitiesAllListCityAndCountryWise.CountryAbout = Reader["CountryAbout"].ToString();

                viewCitiesAllListCityAndCountryWises.Add(aViewCitiesAllListCityAndCountryWise);
            }

            Reader.Close();
            Connection.Close();

            return viewCitiesAllListCityAndCountryWises;
        }

        public List<ViewCitiesAllListCityAndCountryWise> GetViewCitiesDataByCountryName(int searchCountryId)
        {
            Query = "SELECT Citys.CityName, Citys.CityAbout, Citys.NoOfDwellers, Citys.Location,Citys.Weather,Countrys.CountryName, Countrys.CountryAbout FROM Countrys JOIN Citys ON Countrys.Id = Citys.CountryId WHERE Countrys.Id = @countryId";
            Command = new SqlCommand(Query, Connection);
            Command.Parameters.Clear();
            Command.Parameters.AddWithValue("countryId", searchCountryId);
            List<ViewCitiesAllListCityAndCountryWise> viewCitiesAllListCityAndCountryWises = new List<ViewCitiesAllListCityAndCountryWise>();

            Connection.Open();
            Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                ViewCitiesAllListCityAndCountryWise aViewCitiesAllListCityAndCountryWise = new ViewCitiesAllListCityAndCountryWise();

                aViewCitiesAllListCityAndCountryWise.CityName = Reader["CityName"].ToString();
                aViewCitiesAllListCityAndCountryWise.CityAbout = Reader["CityAbout"].ToString();
                aViewCitiesAllListCityAndCountryWise.NoOfDwellers = Convert.ToInt64(Reader["NoOfDwellers"]);
                aViewCitiesAllListCityAndCountryWise.Location = Reader["Location"].ToString();

                aViewCitiesAllListCityAndCountryWise.Weather = Reader["Weather"].ToString();
                aViewCitiesAllListCityAndCountryWise.CountryName = Reader["CountryName"].ToString();
                aViewCitiesAllListCityAndCountryWise.CountryAbout = Reader["CountryAbout"].ToString();

                viewCitiesAllListCityAndCountryWises.Add(aViewCitiesAllListCityAndCountryWise);
            }

            Reader.Close();
            Connection.Close();

            return viewCitiesAllListCityAndCountryWises;
        }

        public List<ViewCitiesAllListCityAndCountryWise> GetViewCitiesDataAll()
        {
            Query = "SELECT * FROM ViewCitiesAllListCityAndCountryWise ORDER BY CityName ASC";

            Command = new SqlCommand(Query, Connection);

            List<ViewCitiesAllListCityAndCountryWise> viewCitiesAllListCityAndCountryWises = new List<ViewCitiesAllListCityAndCountryWise>();

            Connection.Open();
            Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                ViewCitiesAllListCityAndCountryWise aViewCitiesAllListCityAndCountryWise = new ViewCitiesAllListCityAndCountryWise();

                aViewCitiesAllListCityAndCountryWise.CityName = Reader["CityName"].ToString();
                aViewCitiesAllListCityAndCountryWise.CityAbout = Reader["CityAbout"].ToString();
                aViewCitiesAllListCityAndCountryWise.NoOfDwellers = Convert.ToInt64(Reader["NoOfDwellers"]);
                aViewCitiesAllListCityAndCountryWise.Location = Reader["Location"].ToString();

                aViewCitiesAllListCityAndCountryWise.Weather = Reader["Weather"].ToString();
                aViewCitiesAllListCityAndCountryWise.CountryName = Reader["CountryName"].ToString();
                aViewCitiesAllListCityAndCountryWise.CountryAbout = Reader["CountryAbout"].ToString();

                viewCitiesAllListCityAndCountryWises.Add(aViewCitiesAllListCityAndCountryWise);
            }

            Reader.Close();
            Connection.Close();

            return viewCitiesAllListCityAndCountryWises;
        }
    }
}