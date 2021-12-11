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
    
    public partial class PostsTable
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PostsTable()
        {
            this.AppliedPosts = new HashSet<AppliedPost>();
            this.FreelancerTables = new HashSet<FreelancerTable>();
            this.SavedPosts = new HashSet<SavedPost>();
            this.AppliedFreelancers = new HashSet<AppliedFreelancer>();
        }
    
        public int id { get; set; }
        public string client_name { get; set; }
        public string job_type { get; set; }
        public decimal job_budget { get; set; }
        public string creation_date { get; set; }
        public string job_desc { get; set; }
        public Nullable<int> num_proposal_sub { get; set; }
        public Nullable<int> rate { get; set; }
        public Nullable<int> acceptance { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AppliedPost> AppliedPosts { get; set; }
        public virtual ClientTable ClientTable { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FreelancerTable> FreelancerTables { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SavedPost> SavedPosts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AppliedFreelancer> AppliedFreelancers { get; set; }
    }
}
