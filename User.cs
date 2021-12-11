using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace FreelancerSystem
{
    interface User
    { 
        int GetRole(string role);
        string GetPhotoId(string imageFile);


    }
}
