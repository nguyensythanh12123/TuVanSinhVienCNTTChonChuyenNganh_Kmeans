using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PhanMem_HoTroChonChuyenNganh.DTO
{
    class DTO_SinhVien
    {
        string MSSV, HoTen;

        public string HoTen1
        {
            get { return HoTen; }
            set { HoTen = value; }
        }

        public string MSSV1
        {
            get { return MSSV; }
            set { MSSV = value; }
        }
        double NMLT, LTHDT, CTDLGT;
        public double CTDLGT1
        {
            get { return CTDLGT; }
            set { CTDLGT = value; }
        }

        public double LTHDT1
        {
            get { return LTHDT; }
            set { LTHDT = value; }
        }

        public double NMLT1
        {
            get { return NMLT; }
            set { NMLT = value; }
        }

        double CSDL, TH_CSDL, HQT_CSDL;

        public double HQT_CSDL1
        {
            get { return HQT_CSDL; }
            set { HQT_CSDL = value; }
        }

        public double TH_CSDL1
        {
            get { return TH_CSDL; }
            set { TH_CSDL = value; }
        }

        public double CSDL1
        {
            get { return CSDL; }
            set { CSDL = value; }
        }
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

        public double MMT1
        {
            get { return LT_MMT; }
            set { LT_MMT = value; }
        }
        public DTO_SinhVien() { 
        
        }
        public DTO_SinhVien(double pLT_NMLT, double pTH_NMLT, double pLT_LTHDT, double pTH_LTHDT, double pLT_CTDLGT, double pTH_CTDLGT, double pLT_MMT, double pKTMT, double pTH_MMT, double pHDH,double pLT_CSDL, double pTH_CSDL,double pHQT_CSDL)
        {
            this.HDH1 = pHDH;
            this.HQT_CSDL1 = pHQT_CSDL;
            this.KTMT1 = pKTMT;
            this.CSDL1 = pLT_CSDL;
            this.CTDLGT1 = pLT_CTDLGT;
            this.LTHDT1 = pLT_LTHDT;
            this.MMT1 = pLT_MMT;
            this.NMLT1 = pLT_NMLT;
            this.TH_CSDL1 = pTH_CSDL;
        }
        double khoangCach;

        public double KhoangCach
        {
            get { return khoangCach; }
            set { khoangCach = value; }
        }
    }
}
