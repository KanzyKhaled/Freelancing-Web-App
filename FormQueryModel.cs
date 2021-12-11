using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FreelancerSystem
{
    public class FormQueryModel
    {
        public int ClientName { get; set; }
        public int Jobtype { get; set; }
        public string CreationDate { get; set; }

        public List<PostsTable> QueryResults { get; set; }

        public FormQueryModel()
        {
            this.QueryResults = new List<PostsTable>();
        }
    }
}