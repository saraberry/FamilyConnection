using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Connection.Classes
{
    public class ToDo : List
    {

        DateTime dueDate;

        public ToDo() { }
        public ToDo(DateTime dueDate, int listItemID, int familyID, string listItem, bool isComplete, string listType) : base(listItemID, familyID, listItem, isComplete, listType)
        {
            this.DueDate = dueDate;
        }
        public DateTime DueDate { get; set; }
    }
}