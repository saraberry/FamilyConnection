using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Connection.Classes
{
    public class Family
    {
        int familyID;
        DateTime subscriptionStart, subscriptionEnd;
        string HOHfirst, HOHlast;

        public Family()
        {
            familyID = 0;
            HOHfirst = null;
            HOHlast = null;
        }

        public Family(int familyID, DateTime subscriptionStart, DateTime subscriptionEnd, string HOHfirst, string HOHlast)
        {
            this.familyID = familyID;
            this.subscriptionStart = subscriptionStart;
            this.subscriptionEnd = subscriptionEnd;
            this.HOHfirst = HOHfirst;
            this.HOHlast = HOHlast;
        }

        public int FamilyID { get; set; }
        public DateTime SubscriptionStart { get; set; }
        public DateTime SubscriptionEnd { get; set; }
        public string HOHFirst { get; set; }
        public string HOHLast { get; set; }
    }
}