using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Connection.Classes
{
    public class Grocery
    {
        string storeName;
        decimal storePrice;

        public Grocery() { }
        public Grocery(string storeName, decimal storePrice)
        {
            this.StoreName = storeName;
            this.StorePrice = storePrice;
        }
        public string StoreName { get; set; }
        public decimal StorePrice { get; set; }
    }
}