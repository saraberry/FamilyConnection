using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Connection.Classes
{
    public class GroceryItems : List
    {
        string storeName;
        double storePrice;

        public GroceryItems() { }
        public GroceryItems(int listItemID, int familyID, string listItem, string isComplete, string listType, string storeName, double storePrice) :base (listItemID, familyID, listItem, isComplete, listType)
        {
            this.StoreName = storeName;
            this.StorePrice = storePrice;
        }
        public string StoreName { get; set; }
        public double StorePrice { get; set; }
    }
}