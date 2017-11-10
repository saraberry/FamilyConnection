using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Connection.Classes
{
    public class Members
    {
        int memberID, familyID;
        string memberFirst, memberLast, memberRole;

        public Members() { }
        public Members(int memberID, int familyID, string memberFirst, string memberLast, string memberRole)
        {
            this.MemberID = memberID;
            this.FamilyID = familyID;
            this.MemberFirst = memberFirst;
            this.MemberLast = memberLast;
            this.MemberRole = memberRole;
        }
        public int MemberID { get; set; }
        public int FamilyID { get; set; }
        public string MemberFirst { get; set; }
        public string MemberLast { get; set; }
        public string MemberRole { get; set; }
    }
}