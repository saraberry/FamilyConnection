﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Connection.Classes
{
    public class List
    {
        int listItemID, familyID;
        string listItem, listType;
        bool isComplete;

        public List() { }
        public List(int listItemID, int familyID, string listItem, bool isComplete, string listType)
        {
            this.ListItemID = listItemID;
            this.FamilyID = familyID;
            this.ListItem = listItem;
            this.IsComplete = isComplete;
            this.ListType = listType;

        }
        public int ListItemID { get; set; }
        public int FamilyID { get; set; }
        public string ListItem { get; set; }
        public string ListType { get; set; }
        public bool IsComplete { get; set; }
    }
}