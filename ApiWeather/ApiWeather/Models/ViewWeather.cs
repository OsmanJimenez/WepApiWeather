using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ApiWeather.Models
{
    public class ViewWeather
    {
        [Key]
        public int id_Weather { get; set; }
        public DateTime Observation_Time { get; set; }
        public int Temperature { get; set; }
        public String Weather_Descriptions { get; set; }
        public int Wind_Speed { get; set; }
        public int Wind_Degree { get; set; }
        public String Wind_Dir { get; set; }
        public int Pressure { get; set; }
        public int Precip { get; set; }
        public int Humidity { get; set; }
        public int Cloudcover { get; set; }
        public int Feelslike { get; set; }
        public int Uv_Index { get; set; }

        public String City_name { get; set; }
        [Required]
        public int City_id { get; set; }
    }
}
