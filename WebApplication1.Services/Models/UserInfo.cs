using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication1.Services.Models
{
    public class UserInfo
    {
        public string firstname { get; set; }
        public string lastname { get; set; }
        public DateTime dob { get; set; }
        public string gender { get; set; }
        public string education { get; set; }
        public string address { get; set; }
    }
}
