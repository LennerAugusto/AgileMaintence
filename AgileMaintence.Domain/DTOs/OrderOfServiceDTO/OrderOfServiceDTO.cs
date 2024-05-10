using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgileMaintence.Domain.DTOs.OrderOfServiceDTO
{
    public class OrderOfServiceDTO
    {
        public int Id { get; set; }
        public string ClientName { get; set; }
        public string Vehicle { get; set; }
        public string Plate { get; set; }
        public string ProblemSumary { get; set; }
        public string StartDate { get; set; }

        public string EndDate { get; set; }
    }
}
