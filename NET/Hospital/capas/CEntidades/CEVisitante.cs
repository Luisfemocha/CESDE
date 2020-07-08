using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEVisitante
    {
        private int idv;
        private String nomv;
        private byte edadv;
        private String telefono;

        public int Idv { get => idv; set => idv = value; }
        public string Nomv { get => nomv; set => nomv = value; }
        public byte Edadv { get => edadv; set => edadv = value; }
        public string Telefono { get => telefono; set => telefono = value; }
    }
}