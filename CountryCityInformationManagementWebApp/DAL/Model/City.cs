using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityInformationManagementWebApp.DAL.Model
{
    public class City
    {
        public int Id { get; set; }
        public string CityName { get; set; }
        public string CityAbout { get; set; }
        public long NoOfDwellers { get; set; }
        public string Location { get; set; }
        public string Weather { get; set; }
        public int CountryId { get; set; }
    }
}