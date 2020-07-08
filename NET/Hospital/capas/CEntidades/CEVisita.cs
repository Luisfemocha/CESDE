using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEVisita
    {
        private int idvis;
        private int idv1;
        private int idp2;
        private DateTime fechav;

        public int Idvis { get => idvis; set => idvis = value; }
        public int Idv1 { get => idv1; set => idv1 = value; }
        public int Idp2 { get => idp2; set => idp2 = value; }
        public DateTime Fechav { get => fechav; set => fechav = value; }
    }
}