using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Connection.Classes
{
    public class Activity
    {
        int activityID, familyID, memberID;
        decimal cost;
        string activityName, repeat;
        DateTime startDate, endDate, time, reminder;

        public Activity() { }
        public Activity(int activityID, int familyID, int memberID, decimal cost, string activityName, string repeat, DateTime startDate, DateTime endDate, DateTime time, DateTime reminder)
        {
            this.ActivityID = activityID;
            this.FamilyID = familyID;
            this.MemberID = memberID;
            this.Cost = cost;
            this.ActivityName = activityName;
            this.Repeat = repeat;
            this.StartDate = startDate;
            this.EndDate = endDate;
            this.Time = time;
            this.Reminder = reminder;
        }
        public int ActivityID { get; set; }
        public int FamilyID { get; set; }
        public int MemberID { get; set; }
        public decimal Cost { get; set; }
        public string ActivityName { get; set; }
        public string Repeat { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public DateTime Time { get; set; }
        public DateTime Reminder { get; set; }
    }
}