using AgileMaintence.Domain.DTOs.AddressesDTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgileMaintence.Domain.DTOs.ClientDTO
{
    public class ClientResponseDTO
    {
        public Guid Id { get; set; }
        public bool IsActive { get; set; }
        public string Name { get; set; }
        public string Cpf { get; set; }
        public string Phone { get; set; }
        public List<AddressesResponseDTO> Adresses { get; set; }
    }
}
