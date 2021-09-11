using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ApiWeather.Models
{
    public class ViewNews
    {
        [Key]
        public int id_New { get; set; }
        public String Author { get; set; }
        public String Title { get; set; }
        public String Description_New { get; set; }
        public String Url_New { get; set; }
        public String Url_To_Image { get; set; }
        public DateTime Published_At { get; set; }
        public String Content { get; set; }
        public int City_id { get; set; }
    }
}
