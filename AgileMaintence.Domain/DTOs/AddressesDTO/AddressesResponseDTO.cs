using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgileMaintence.Domain.DTOs.AddressesDTO
{
    public class AddressesResponseDTO
    {
        public Guid ClientId { get; set; }
        public string Name { get; set; }
        public string Number { get; set; }
        public string Logradouro { get; set; }
        public string City {  get; set; }
        public string State { get; set; }
        public int ZipCode { get; set; }
        public Guid Id { get; set; }
        public bool IsActive { get; set; }
    }
}
