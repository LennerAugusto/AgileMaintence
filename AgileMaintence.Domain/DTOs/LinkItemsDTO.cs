using Microsoft.AspNetCore.Components.Routing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgileMaintence.Domain.DTOs
{
    public class LinkItemsDTO
    {
        public LinkItemsDTO(string link,
           string text,
           string icon,
           NavLinkMatch match = NavLinkMatch.All,
           List<LinkItemsDTO> childrens = null,
           string policy = null)
        {
            Link = link;
            Text = text;
            Icon = icon;
            Childrens = childrens;
            Match = match;
            Policy = policy;
        }

        public string Link { get; set; }
        public string Text { get; set; }
        public string Icon { get; set; }
        public List<LinkItemsDTO> Childrens { get; set; }
        public NavLinkMatch Match { get; set; }
        public string Policy { get; set; }
    }
}
