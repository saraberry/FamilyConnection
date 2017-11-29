using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Connection.Classes
{
    public class Activity
    {
        int activityID, familyID;
        string activityName;
        DateTime startDate, endDate, time;

        public Activity() { }
        public Activity(int activityID, int familyID, string activityName, DateTime startDate, DateTime endDate, DateTime time)
        {
            this.ActivityID = activityID;
            this.FamilyID = familyID;
            this.ActivityName = activityName;
            this.StartDate = startDate;
            this.EndDate = endDate;
            this.Time = time;
        }
        public int ActivityID { get; set; }
        public int FamilyID { get; set; }
        public string ActivityName { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public DateTime Time { get; set; }
    }
}