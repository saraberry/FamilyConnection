using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Connection.Classes
{
    public class Grocery : List
    {
        string storeName;
        decimal storePrice;

        public Grocery() { }
        public Grocery(int listItemID, int familyID, string listItem, bool isComplete, string listType, string storeName, decimal storePrice) :base (listItemID, familyID, listItem, isComplete, listType)
        {
            this.StoreName = storeName;
            this.StorePrice = storePrice;
        }
        public string StoreName { get; set; }
        public decimal StorePrice { get; set; }
    }
}