using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades{
    public class CEPaciente{
        private int idp;
        private String nomp;
        private int edadp;
        private String telp;

        public int Idp { get => idp; set => idp = value; }
        public string Nomp { get => nomp; set => nomp = value; }
        public int Edadp { get => edadp; set => edadp = value; }
        public string Telp { get => telp; set => telp = value; }
    }
}
