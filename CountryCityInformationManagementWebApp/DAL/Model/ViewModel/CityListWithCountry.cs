using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityInformationManagementWebApp.DAL.Model.ViewModel
{
    public class CityListWithCountry
    {
        public int Id { get; set; }
        public string CityName { get; set; }
        public long NoOfDwellers { get; set; }
        public string CountryName { get; set; }
    }
}