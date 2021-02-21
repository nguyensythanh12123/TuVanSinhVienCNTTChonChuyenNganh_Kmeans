using PhanMem_HoTroChonChuyenNganh.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PhanMem_HoTroChonChuyenNganh.BUS
{
    class BUS_Kmeans
    {
        BUS_SinhVien busSV = new BUS_SinhVien();

        //public void ranDom_BD(List<DTO_CNPM> cnpm,List<DTO_HTTT> httt,List<DTO_MMT> mmt) {
        //    Random r = new Random();
        //    int n= r.Next(0,busSV.SVKN_CNPM().Count());
        //    cnpm.Add(busSV.SVKN_CNPM()[n]);
        //    n = r.Next(0, busSV.SVKN_HTTT().Count());
        //    while (cnpm[0].MSSV1 == busSV.SVKN_HTTT()[n].MSSV1) {
        //        n = r.Next(0, busSV.SVKN_HTTT().Count());                
        //    }
        //    httt.Add(busSV.SVKN_HTTT()[n]);
        //    n = r.Next(0, busSV.SVKN_MMT().Count());
        //    while (cnpm[0].MSSV1 == busSV.SVKN_MMT()[n].MSSV1 || httt[0].MSSV1 == busSV.SVKN_MMT()[n].MSSV1) {
        //        n = r.Next(0, busSV.SVKN_MMT().Count());                
        //    }
        //    mmt.Add(busSV.SVKN_MMT()[n]);
        //}
        public double khoangCach_CNPM(DTO_CNPM sv1, DTO_CNPM sv2) {
            return Math.Sqrt(Math.Pow(sv1.LT_CTDLGT1 - sv2.LT_CTDLGT1, 2) + Math.Pow(sv1.LT_LTHDT1 - sv2.LT_LTHDT1, 2) + Math.Pow(sv1.LT_NMLT1 - sv2.LT_NMLT1, 2));
        }
        //public void tinhKC_CNPM(List<DTO_CNPM> dsCNPM, double[][] mang2C_KC)
        //{//Tạo mảng 2 chiều double chứa khoảng cách giữa các phần tử
        //    for (int i = 0; i < lstDiem.Count(); i++)
        //    {
        //        for (int j = 1; j < lstDiem.Count(); j++)
        //        {
        //            if (i > j)
        //            {
        //                continue;
        //            }
        //            if (i == j)
        //            {
        //                continue;
        //            }
        //            double kc = Math.Pow(((double)lstDiem[i].X - (double)lstDiem[j].X), 2) + Math.Pow(((double)lstDiem[i].Y - (double)lstDiem[j].Y), 2);
        //            mang2C_KC[i][j] = kc;
        //        }
        //    }
        //}

        public void kMeans()
        {
            //
            List<DTO_CNPM> svCN = new List<DTO_CNPM>();
            List<DTO_HTTT> svHT = new List<DTO_HTTT>();
            List<DTO_MMT> svM = new List<DTO_MMT>();
            //
            //ranDom_BD(svCN,svHT,svM);
        }
    }
}
