using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Connection.Classes
{
    public class ToDo
    {
        string assingedMember;
        DateTime dueDate;

        public ToDo() { }
        public ToDo(string assignedMember, DateTime dueDate)
        {
            this.AssignedMember = assignedMember;
            this.DueDate = dueDate;
        }
        public string AssignedMember { get; set; }
        public DateTime DueDate { get; set; }
    }
}