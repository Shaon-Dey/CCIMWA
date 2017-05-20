using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityInformationManagementWebApp.DAL.Model.ViewModel
{
    public class ViewCountriesViewModel
    {
        public int Id { get; set; }
        public string CountryName { get; set; }
        public string CountryAbout { get; set; }
        public int TotalCity { get; set; }
        public long TotalDwellers { get; set; }
    }
}