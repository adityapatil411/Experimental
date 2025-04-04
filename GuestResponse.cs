using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class GuestResponse { 
    [Required]
        public string Name { get; set; }
    [Required]
    public string Email { get; set; }
    [Required]
    public string Phone { get; set; }
        [Required(ErrorMessage = "Plz let us know if you eill attend..??")]
        public bool ? WillAttend { get; set; }
    }
}