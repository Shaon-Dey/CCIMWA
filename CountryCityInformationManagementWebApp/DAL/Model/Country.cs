using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityInformationManagementWebApp.DAL.Model
{
    public class Country
    {
        public int Id { get; set; }
        public string CountryName { get; set; }
        public string CountryAbout { get; set; }
    }
}