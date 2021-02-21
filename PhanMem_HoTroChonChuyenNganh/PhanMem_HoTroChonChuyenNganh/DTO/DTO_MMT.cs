using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PhanMem_HoTroChonChuyenNganh.DTO
{
    class DTO_MMT
    {
        
        
        double LT_MMT, KTMT, HDH;

        public double HDH1
        {
            get { return HDH; }
            set { HDH = value; }
        }


        public double KTMT1
        {
            get { return KTMT; }
            set { KTMT = value; }
        }

        public double LT_MMT1
        {
            get { return LT_MMT; }
            set { LT_MMT = value; }
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
