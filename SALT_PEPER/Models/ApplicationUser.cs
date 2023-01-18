using Microsoft.AspNetCore.Identity;

namespace SALT_PEPER.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string NombreCompleto { get; set; }
        public string Direccion { get; set; }
        public string Celular { get; set; }
    }
}
