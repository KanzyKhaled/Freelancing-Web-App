//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FreelancerSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class AppliedPost
    {
        public int Id { get; set; }
        public int PostId { get; set; }
        public string FreelancerName { get; set; }
        public string StatusId { get; set; }
    
        public virtual FreelancerTable FreelancerTable { get; set; }
        public virtual PostsTable PostsTable { get; set; }
    }
}