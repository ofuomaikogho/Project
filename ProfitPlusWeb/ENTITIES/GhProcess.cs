using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace ENTITIES
{
    public class GhProcess 
    {
        public long userId {get; set;}
        public string email {get; set;}
        public string package {get; set;}
        public string status {get; set;}
        public string count {get; set;}
        public DateTime date {get; set;}
    }
}