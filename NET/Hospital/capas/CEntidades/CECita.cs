using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades{
    public class CECita{
        private int idc;
        private int idp1;
        private int ide1;
        private DateTime fechac;
        private int diagnostico;

        public int Idc { get => idc; set => idc = value; }
        public int Idp1 { get => idp1; set => idp1 = value; }
        public int Ide1 { get => ide1; set => ide1 = value; }
        public DateTime Fechac { get => fechac; set => fechac = value; }
        public int Diagnostico { get => diagnostico; set => diagnostico = value; }
    }
}