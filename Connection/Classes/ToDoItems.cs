using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Connection.Classes
{
    public class ToDoItems : List
    {

        DateTime dueDate;

        public ToDoItems() { }
        public ToDoItems(DateTime dueDate, int listItemID, int familyID, string listItem, string isComplete, string listType) : base(listItemID, familyID, listItem, isComplete, listType)
        {
            this.DueDate = dueDate;
        }
        public DateTime DueDate { get; set; }
    }
}