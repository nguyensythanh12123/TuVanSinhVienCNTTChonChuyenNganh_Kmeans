using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PhanMem_HoTroChonChuyenNganh.DTO
{
    class DTO_CNPM
    {
       
        double LT_NMLT, LT_LTHDT, LT_CTDLGT;

        public double LT_CTDLGT1
        {
            get { return LT_CTDLGT; }
            set { LT_CTDLGT = value; }
        }

        public double LT_LTHDT1
        {
            get { return LT_LTHDT; }
            set { LT_LTHDT = value; }
        }

        public double LT_NMLT1
        {
            get { return LT_NMLT; }
            set { LT_NMLT = value; }
        }
        string MSSV, HoTen;


        public string MSSV1
        {
            get { return MSSV; }
            set { MSSV = value; }
        }
        public string HoTen1
        {
            get { return HoTen; }
            set { HoTen = value; }
        }

    }
}
