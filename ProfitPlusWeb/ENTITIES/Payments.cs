﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace ENTITIES
{
    public class Payments
    {
        public long userId {get; set;}
        public string phEmail {get; set;}
        public string ghEmail {get; set;}
        public string package {get; set;}
        public byte[] paymentUpload {get; set;}
        public string status {get; set;}
        public DateTime date {get; set;}
    }
}