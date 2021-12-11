using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace FreelancerSystem
{
    public class RegisterationFactory : User
    {
        public int GetRole(string role)
        {
            if(role == "Client")
            {
                return 2;
            }
            if (role == "Freelancer")
            {
                return 3;
            }
            return 0;

        }
        public string GetPhotoId(string imageFile)
        {
            if (imageFile != null)
            {
                var fileExtension = imageFile.Substring(imageFile.LastIndexOf('.'));
                var imageGuid = Guid.NewGuid().ToString();
                string imageId = imageGuid + fileExtension;
                return imageId;
            }
            
            return "";
        }

    }
}
