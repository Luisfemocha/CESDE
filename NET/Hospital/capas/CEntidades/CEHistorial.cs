using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEHistorial
    {
        private int idph;
        private int idp3;
        private int idenf1;
        private DateTime fechad;
        private String notas;

        public int Idph { get => idph; set => idph = value; }
        public int Idp3 { get => idp3; set => idp3 = value; }
        public int Idenf1 { get => idenf1; set => idenf1 = value; }
        public DateTime Fechad { get => fechad; set => fechad = value; }
        public string Notas { get => notas; set => notas = value; }

    }
}