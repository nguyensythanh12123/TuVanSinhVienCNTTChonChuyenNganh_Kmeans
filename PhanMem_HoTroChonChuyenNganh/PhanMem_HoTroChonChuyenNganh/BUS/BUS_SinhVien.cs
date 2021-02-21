using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PhanMem_HoTroChonChuyenNganh.DAL;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using PhanMem_HoTroChonChuyenNganh.DTO;
using System.Xml;
using System.IO;

namespace PhanMem_HoTroChonChuyenNganh.BUS
{
    class BUS_SinhVien
    {
        DAL_KetNoiSQL kn = new DAL_KetNoiSQL();
        DTO_SinhVien NT = new DTO_SinhVien(7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7);
        DTO_SinhVien ND = new DTO_SinhVien(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);
        public List<DTO_SinhVien> getDSDV(int soLuong) {
            List<DTO_SinhVien> dssv = new List<DTO_SinhVien>();
            try
            {
                string sql = "select top "+soLuong+" * from DS_SINHVIEN";
                kn.Mo();
                SqlDataReader rd=kn.ExecuteReader(sql);
                while (rd.Read()) {
                    DTO_SinhVien sv = new DTO_SinhVien();
                    sv.MSSV1 = rd["MSSV"].ToString();
                    sv.HoTen1 = rd["hoTen"].ToString();
                    sv.HDH1 = double.Parse(rd["HDH"].ToString());
                    sv.HQT_CSDL1 = double.Parse(rd["HQT_CSDL"].ToString());
                    sv.KTMT1 = double.Parse(rd["KTMT"].ToString());
                    sv.CSDL1 = double.Parse(rd["CSDL"].ToString());
                    sv.CTDLGT1 = double.Parse(rd["CTDL"].ToString());
                    sv.LTHDT1 = double.Parse(rd["LTHDT"].ToString());
                    sv.MMT1 = double.Parse(rd["MMT"].ToString());
                    sv.NMLT1 = double.Parse(rd["NMLT"].ToString());
                    sv.TH_CSDL1 = double.Parse(rd["TH_CSDL"].ToString());
                    dssv.Add(sv);
                }
                kn.Dong();
                return dssv;
            }
            catch {
                return dssv;
            }
        }

        public DataTable loadTimKiem(string ms) {
            return kn.getData("Select * from DS_SInhVien where MSSV='" + ms + "'"); 
        }

        public Object[] getTen(int soLuong)
        {
            List<string> dssv = new List<string>();
            try
            {
                string sql = "select top " + soLuong + " ten from DS_SINHVIEN";
                kn.Mo();
                SqlDataReader rd = kn.ExecuteReader(sql);
                while (rd.Read())
                {
                    string sv ;
                    sv= rd["hoTen"].ToString();
                    dssv.Add(sv);
                }
                kn.Dong();
                return dssv.Cast<Object>().ToArray();
            }
            catch
            {
                return null;
            }
        }

        public List<DTO_CNPM> SVKN_CNPM() {
            string sql = "select * from DS_SinhVien"
                       + " where NMLT>4 "
                       + " and LTHDT>4 and CTDLGT>4";
            List<DTO_CNPM> dssv = new List<DTO_CNPM>();
            try
            {
                kn.Mo();
                SqlDataReader rd = kn.ExecuteReader(sql);
                while (rd.Read())
                {
                    DTO_CNPM sv = new DTO_CNPM();
                    sv.MSSV1 = rd["MSSV"].ToString();
                    sv.LT_CTDLGT1 = double.Parse(rd["LT_CTDLGT"].ToString());
                    sv.LT_LTHDT1 = double.Parse(rd["LT_LTHDT"].ToString());
                    sv.LT_NMLT1 = double.Parse(rd["LT_NMLT"].ToString());
                    dssv.Add(sv);
                }
                kn.Dong();
                return dssv;
            }
            catch
            {
                return dssv;
            }
        }
        public List<DTO_HTTT> SVKN_HTTT()
        {
            string sql = "select * from DS_SinhVien"
                       + " where HQT_CSDL>4 and LT_CSDL>4 and TH_CSDL>4";
            List<DTO_HTTT> dssv = new List<DTO_HTTT>();
            try
            {
                kn.Mo();
                SqlDataReader rd = kn.ExecuteReader(sql);
                while (rd.Read())
                {
                    DTO_HTTT sv = new DTO_HTTT();
                    sv.MSSV1 = rd["MSSV"].ToString();
                    sv.HQT_CSDL1 = double.Parse(rd["HQT_CSDL"].ToString());
                    sv.LT_CSDL1 = double.Parse(rd["LT_CSDL"].ToString());
                    sv.TH_CSDL1 = double.Parse(rd["TH_CSDL"].ToString());
                    dssv.Add(sv);
                }
                kn.Dong();
                return dssv;
            }
            catch
            {
                return dssv;
            }
        }
        public List<DTO_MMT> SVKN_MMT()
        {
            string sql = "select * from DS_SinhVien"
                       + " where MMT>4 and KTMT>4"
                       + " and HDH>4";
            List<DTO_MMT> dssv = new List<DTO_MMT>();
            try
            {
                kn.Mo();
                SqlDataReader rd = kn.ExecuteReader(sql);
                while (rd.Read())
                {
                    DTO_MMT sv = new DTO_MMT();
                    sv.MSSV1 = rd["MSSV"].ToString();
                    sv.HDH1 = double.Parse(rd["HDH"].ToString());
                    sv.KTMT1 = double.Parse(rd["KTMT"].ToString());
                    sv.LT_MMT1 = double.Parse(rd["LT_MMT"].ToString());
                    dssv.Add(sv);
                }
                kn.Dong();
                return dssv;
            }
            catch
            {
                return dssv;
            }
        }
        public bool KiemTra_Trung(int[] diemBD, int n)
        {//Kiểm tra trùng giữa phần tử n với tất cả các phần tử bắt đầu của cụm
            for (int i = 0; i < diemBD.Count(); i++)
            {
                if (diemBD[i] == n)
                {
                    return false;
                }
            }
            return true;
        }
        public double khoangCach_CNPM(DTO_SinhVien sv1, DTO_SinhVien sv2)
        {
            return Math.Sqrt(Math.Pow(sv1.CTDLGT1 - sv2.CTDLGT1, 2) + Math.Pow(sv1.LTHDT1 - sv2.LTHDT1, 2) + Math.Pow(sv1.NMLT1 - sv2.NMLT1, 2) );
        }
        public double khoangCach_HTTT(DTO_SinhVien sv1, DTO_SinhVien sv2)
        {
            return Math.Sqrt(Math.Pow(sv1.HQT_CSDL1 - sv2.HQT_CSDL1, 2) + Math.Pow(sv1.CSDL1 - sv2.CSDL1, 2) + Math.Pow(sv1.TH_CSDL1- sv2.TH_CSDL1, 2));
        }
        public double khoangCach_MMT(DTO_SinhVien sv1, DTO_SinhVien sv2)
        {
            return Math.Sqrt(Math.Pow(sv1.HDH1 - sv2.HDH1, 2) + Math.Pow(sv1.KTMT1 - sv2.KTMT1, 2) + Math.Pow(sv1.MMT1 - sv2.MMT1, 2));
        }
        public void taoMang_Rong(DTO_SinhVien[][] kq, double[][] mang2C_KC)
        {
            //Tạo mảng chuỗi chứa các giá trị null
            for (int i = 0; i < kq.GetLength(0); i++)
            {
                kq[i] = new DTO_SinhVien[1];
            }
        }
        public void tinhKC_CNPM(List<DTO_SinhVien> dsSV, List<DTO_SinhVien> dsGom, double[][] mang2C_KC)
        {//Tạo mảng 2 chiều double chứa khoảng cách giữa các phần tử
            for (int i = 0; i < dsSV.Count(); i++)
            {
                for (int j = 0; j < dsGom.Count(); j++)
                {
                    double kc = khoangCach_CNPM(dsSV[i], dsGom[j]);
                    mang2C_KC[i][j] = kc;
                }
            }
        }
        public void tinhKC_HTTT(List<DTO_SinhVien> dsSV, List<DTO_SinhVien> dsGom, double[][] mang2C_KC)
        {//Tạo mảng 2 chiều double chứa khoảng cách giữa các phần tử
            for (int i = 0; i < dsSV.Count(); i++)
            {
                for (int j = 0; j < dsGom.Count(); j++)
                {
                    double kc = khoangCach_HTTT(dsSV[i], dsGom[j]);
                    mang2C_KC[i][j] = kc;
                }
            }
        }
        public void tinhKC_MMT(List<DTO_SinhVien> dsSV, List<DTO_SinhVien> dsGom, double[][] mang2C_KC)
        {//Tạo mảng 2 chiều double chứa khoảng cách giữa các phần tử
            for (int i = 0; i < dsSV.Count(); i++)
            {
                for (int j = 0; j < dsGom.Count(); j++)
                {
                    double kc = khoangCach_MMT(dsSV[i], dsGom[j]);
                    mang2C_KC[i][j] = kc;
                }
            }
        }
        public void tinhKC_3CN(List<DTO_SinhVien> dsSV, List<DTO_SinhVien> dsGom, double[][] mang2C_KC)
        {//Tạo mảng 2 chiều double chứa khoảng cách giữa các phần tử
            for (int i = 0; i < dsSV.Count(); i++)
            {
                for (int j = 0; j < dsGom.Count(); j++)
                {
                    double kc = khoangCach_MMT(dsSV[i], dsGom[j]);
                    mang2C_KC[i][j] = kc;
                }
            }
        }
        public DTO_SinhVien tinhKCTB_CNPM(DTO_SinhVien[][] lstTenPTu)
        {//Tính tâm cụm của mỗi cụm mới tạo
            DTO_SinhVien kq = new DTO_SinhVien();
            double tong4 = 0;
            double tong5 = 0;
            double tong6 = 0;
            int tongDiem = 0;
            for (int i = 0; i < lstTenPTu[0].Length; i++)
            {
                        tong4 += lstTenPTu[0][i].NMLT1;
                        tong5 += lstTenPTu[0][i].LTHDT1;
                        tong6 += lstTenPTu[0][i].CTDLGT1;
                        tongDiem++;
            }
            kq.CTDLGT1 = tong6/tongDiem;
            kq.LTHDT1 = tong5 / tongDiem;
            kq.NMLT1 = tong4 / tongDiem;
            return kq;
        }
        public int slSV(){
            return (int)kn.ExecuteScalar("Select count(*) from DS_SINHVIEN");
        }
        public void gomCum(double[][] mang2C_KC, DTO_SinhVien[][] kq,int soLuong)
        {
            List<DTO_SinhVien> ds = getDSDV(soLuong);
            for (int i = 0; i < mang2C_KC.Count(); i++)
            {
                double min = mang2C_KC[i][0];
                int viTri = 0;
                for (int j = 1; j < mang2C_KC[i].Length; j++)
                {
                    if (j == 2)
                        break;
                    if (min > mang2C_KC[i][j])
                    {
                        min = mang2C_KC[i][j];
                        viTri = j;
                    }
                }
                themPhanTu(kq, ds[i], viTri);
                kq[viTri][kq[viTri].Length-1].KhoangCach = min;
            }
        }
        public void themPhanTu(DTO_SinhVien[][] mangKq, DTO_SinhVien sv, int viTri)
        {
            //Thêm 1 tên mới vào mảng chuỗi chứa tên các biến của mỗi cụm
            int k = mangKq[viTri].Length;
            if (mangKq[viTri][k - 1] == null)
                mangKq[viTri][k - 1] = sv;
            else
            {
                Array.Resize(ref mangKq[viTri], mangKq[viTri].Length + 1);
                mangKq[viTri][k] = sv;
            }
        }
        public DTO_SinhVien[][] Kmeans_CNPM(List<DTO_SinhVien> lstTam, double[][] mang2C_KC,int soLuong)
        {
            //
            DTO_SinhVien[][] kq = new DTO_SinhVien[2][];
            taoMang_Rong(kq, mang2C_KC);
            //
            tinhKC_CNPM(getDSDV(soLuong), lstTam, mang2C_KC);
            //
            //List<DTO_SinhVien> lst_TamCum = taoTamCum_Moi(kq);
            gomCum(mang2C_KC, kq,soLuong);
            return kq;
        }
        public DTO_SinhVien[][] Kmeans_HTTT(List<DTO_SinhVien> lstTam, double[][] mang2C_KC,int soLuong)
        {
            //
            DTO_SinhVien[][] kq = new DTO_SinhVien[2][];
            List<DTO_SinhVien> nguong = new List<DTO_SinhVien>();
            taoMang_Rong(kq, mang2C_KC);
            //
            tinhKC_HTTT(getDSDV(soLuong), lstTam, mang2C_KC);
            //
            //List<DTO_SinhVien> lst_TamCum = taoTamCum_Moi(kq);
            gomCum(mang2C_KC, kq, soLuong);
            return kq;
        }
        public DTO_SinhVien[] themPhanTu_1C(DTO_SinhVien[] mangKq, DTO_SinhVien sv)
        {
            //Thêm 1 tên mới vào mảng chuỗi chứa tên các biến của mỗi cụm
            Array.Resize(ref mangKq, mangKq.Length + 1);
            mangKq[mangKq.Length - 1] = sv;
            return mangKq;
        }
        public DTO_SinhVien[][] Kmeans_MMT(List<DTO_SinhVien> lstTam, double[][] mang2C_KC,int soLuong)
        {
            //
            DTO_SinhVien[][] kq = new DTO_SinhVien[2][];
            List<DTO_SinhVien> nguong = new List<DTO_SinhVien>();
            taoMang_Rong(kq, mang2C_KC);
            //
            tinhKC_MMT(getDSDV(soLuong), lstTam, mang2C_KC);
            //
            //List<DTO_SinhVien> lst_TamCum = taoTamCum_Moi(kq);
            gomCum(mang2C_KC, kq, soLuong);
            return kq;
        }
        public int TimViTri(DTO_SinhVien[] ds,DTO_SinhVien sv)
        {
            for (int i = 0; i < ds.Count(); i++) {
                if (ds[i].MSSV1 == sv.MSSV1)
                    return i;
            }
            return -1;
        }
        public DTO_SinhVien[] xoaPtu(DTO_SinhVien[] ds, DTO_SinhVien sv)
        {
            int viTri = TimViTri(ds, sv);
            for (int i = 0; i < ds.Count(); i++) {
                if (i > viTri) {
                    DTO_SinhVien t = ds[i];
                    ds[i] = sv;
                    ds[i - 1] = t;
                }
            }
            Array.Resize(ref ds, ds.Length - 1);
            return ds;
        }
        //public bool kTra_KhoangCach() { 

        //}
        public void gomCumMoi(DTO_SinhVien[][] cnpm, DTO_SinhVien[][] httt, DTO_SinhVien[][] mmt)
        {
            bool kt1 = false;
            for (int i = 0; i < cnpm[0].Length; i++)
            {
                if (kt1 == true)
                {
                    i--;
                    kt1 = false;
                }
                DTO_SinhVien svHT = httt[0].FirstOrDefault(ht => ht.MSSV1 == cnpm[0][i].MSSV1);
                DTO_SinhVien svM = mmt[0].FirstOrDefault(m => m.MSSV1 == cnpm[0][i].MSSV1);
                int viTri = i;
                if (svHT != null && cnpm[0][viTri].KhoangCach > svHT.KhoangCach)
                    {
                        cnpm[0] = xoaPtu(cnpm[0], cnpm[0][viTri]);
                        kt1 = true;
                        if (i == cnpm[0].Length)
                            break;
                    }
                if (svM != null && cnpm[0][viTri].KhoangCach > svM.KhoangCach)
                    {
                        kt1 = true;
                        cnpm[0] = xoaPtu(cnpm[0], cnpm[0][viTri]);
                    }
            }
            //HTTT
            bool kt2 = false;
            for (int i = 0; i < httt[0].Length; i++)
            {
                if (kt2 == true)
                {
                    i--;
                    kt2 = false;
                }
                DTO_SinhVien svM = mmt[0].FirstOrDefault(m => m.MSSV1 == httt[0][i].MSSV1);
                DTO_SinhVien svCN = cnpm[0].FirstOrDefault(cn => cn.MSSV1 == httt[0][i].MSSV1);
                int viTri = i;
                if (svM != null && httt[0][viTri].KhoangCach > svM.KhoangCach)
                    {
                        httt[0] = xoaPtu(httt[0], httt[0][viTri]);
                        kt2 = true;
                        if (i == httt[0].Length)
                            break;
                    }
                    if (svCN != null && httt[0][viTri].KhoangCach > svCN.KhoangCach)
                    {
                        httt[0] = xoaPtu(httt[0], httt[0][viTri]);
                        kt2 = true;
                    }
            }
            //MMT
            bool kt3 = false;
            for (int i = 0; i < mmt[0].Length; i++)
            {
                if (kt3 == true)
                {
                    i--;
                    kt3 = false;
                }
                DTO_SinhVien svHT = httt[0].FirstOrDefault(ht => ht.MSSV1 ==mmt[0][i].MSSV1);
                DTO_SinhVien svCN = cnpm[0].FirstOrDefault(cn => cn.MSSV1 == mmt[0][i].MSSV1);
                
                if (svHT != null && mmt[0][i].KhoangCach > svHT.KhoangCach)
                {
                    mmt[0] = xoaPtu(mmt[0], mmt[0][i]);
                    kt3 = true;
                    if (i == mmt[0].Length)
                        break;
                }
                if (svCN != null && mmt[0][i].KhoangCach > svCN.KhoangCach)
                {
                    mmt[0] = xoaPtu(mmt[0], mmt[0][i]);
                    kt3 = true; 
                }
            }
        }
        public DTO_SinhVien tinhKCTB_HTTT(DTO_SinhVien[][] lstTenPTu)
        {//Tính tâm cụm của mỗi cụm mới tạo
            DTO_SinhVien kq = new DTO_SinhVien();
            double tong1 = 0;
            double tong2 = 0;
            double tong3 = 0;
            int tongDiem = 0;
            for (int i = 0; i < lstTenPTu[0].Length; i++)
            {
                 tong1 += lstTenPTu[0][i].HQT_CSDL1;
                 tong2 += lstTenPTu[0][i].CSDL1;
                 tong3 += lstTenPTu[0][i].TH_CSDL1;
                 tongDiem++;
            }
            kq.HQT_CSDL1 = tong1/ tongDiem;
            kq.CSDL1 = tong2 / tongDiem;
            kq.TH_CSDL1 = tong3 / tongDiem;
            return kq;
        }
        public DTO_SinhVien tinhKCTB_MMT(DTO_SinhVien[][] lstTenPTu)
        {//Tính tâm cụm của mỗi cụm mới tạo
            DTO_SinhVien kq = new DTO_SinhVien();
            double tong1 = 0;
            double tong3 = 0;
            double tong4 = 0;
            int tongDiem = 0;
            for (int i = 0; i < lstTenPTu[0].Length; i++)
            {
                tong1 += lstTenPTu[0][i].MMT1;
                tong3 += lstTenPTu[0][i].KTMT1;
                tong4 += lstTenPTu[0][i].HDH1;
                tongDiem++;
            }
            kq.MMT1 = tong1 / tongDiem;
            kq.KTMT1 = tong3 / tongDiem;
            kq.HDH1 = tong4 / tongDiem;
            return kq;
        }
        public bool soSanh_CNPM(List<DTO_SinhVien> nguong, List<DTO_SinhVien> nguong_Moi)
        {
            for (int i = 0; i < nguong.Count(); i++)
            {
                if (nguong[i].CTDLGT1 != nguong_Moi[i].CTDLGT1 && nguong[i].LTHDT1 != nguong_Moi[i].LTHDT1 && nguong[i].NMLT1 != nguong_Moi[i].NMLT1 )
                    return false;
            }
            return true;
        }
        public bool soSanh_HTTT(List<DTO_SinhVien> nguong, List<DTO_SinhVien> nguong_Moi)
        {
            for (int i = 0; i < nguong.Count(); i++)
            {
                if (nguong[i].HQT_CSDL1 != nguong_Moi[i].HQT_CSDL1 && nguong[i].CSDL1 != nguong_Moi[i].CSDL1 && nguong[i].TH_CSDL1 != nguong_Moi[i].TH_CSDL1)
                    return false;
            }
            return true;
        }
        public bool soSanh_MMT(List<DTO_SinhVien> nguong, List<DTO_SinhVien> nguong_Moi)
        {
            for (int i = 0; i < nguong.Count(); i++)
            {
                if (nguong[i].HDH1 != nguong_Moi[i].HDH1 && nguong[i].KTMT1 != nguong_Moi[i].KTMT1 && nguong[i].MMT1 != nguong_Moi[i].MMT1 )
                    return false;
            }
            return true;
        }
        public List<DTO_SinhVien> taoTamCum_Moi(DTO_SinhVien[][] kq)
        {
            //Tính tâm cụm lại các cụm
            //Tạo 1 List<Diem2D> chứa các tâm cụm mới
            List<DTO_SinhVien> lst_TamCum = new List<DTO_SinhVien>();
            for (int i = 0; i < kq.GetLength(0); i++)
            {
                if (kq[i] == null)
                    break;
                lst_TamCum.Add(tinhKCTB_CNPM(kq));
            }
            return lst_TamCum;
        }
        public DTO_SinhVien[][] dsCN = null;
        public DTO_SinhVien[][] dsHT = null;
        public DTO_SinhVien[][] dsM = null;

        public List<DTO_CNPM> hienThiCNPM(DTO_SinhVien[] ds ) {
            List<DTO_CNPM> kq = new List<DTO_CNPM>();
            for (int i = 0; i < ds.Length; i++) {
                DTO_CNPM cn = new DTO_CNPM();
                cn.MSSV1 = ds[i].MSSV1;
                cn.HoTen1 = ds[i].HoTen1;
                cn.LT_NMLT1 = ds[i].NMLT1;
                cn.LT_CTDLGT1 = ds[i].CTDLGT1;
                cn.LT_LTHDT1 = ds[i].LTHDT1;
                kq.Add(cn);
            }
            return kq;
        }

        public List<DTO_HTTT> hienThiHTTT(DTO_SinhVien[] ds)
        {
            List<DTO_HTTT> kq = new List<DTO_HTTT>();
            for (int i = 0; i < ds.Length; i++)
            {
                DTO_HTTT cn = new DTO_HTTT();
                cn.MSSV1 = ds[i].MSSV1;
                cn.HoTen1 = ds[i].HoTen1;
                cn.HQT_CSDL1 = ds[i].HQT_CSDL1;
                cn.LT_CSDL1 = ds[i].CSDL1;
                cn.TH_CSDL1 = ds[i].TH_CSDL1;
                kq.Add(cn);
            }
            return kq;
        }

        public List<DTO_MMT> hienThiMMT(DTO_SinhVien[] ds)
        {
            List<DTO_MMT> kq = new List<DTO_MMT>();
            for (int i = 0; i < ds.Length; i++)
            {
                DTO_MMT cn = new DTO_MMT();
                cn.MSSV1 = ds[i].MSSV1;
                cn.HoTen1 = ds[i].HoTen1;
                cn.KTMT1 = ds[i].KTMT1;
                cn.LT_MMT1 = ds[i].MMT1;
                cn.HDH1 = ds[i].HDH1;
                kq.Add(cn);
            }
            return kq;
        }

        //public void readFile()
        //{//Đọc file xml
        //    List<DTO_SinhVien> lst = new List<DTO_SinhVien>();
        //    String file = "D:/KhaiThacDuLieu/Kmeans/Test1.xml";
        //    try
        //    {
        //        XmlDocument reader = new XmlDocument();
        //        reader.Load(file);
        //        XmlNodeList nodeList = reader.SelectNodes("/TapHop/Diem");
        //        foreach (XmlNode node in nodeList)
        //        {
        //            DTO_SinhVien d = new DTO_SinhVien();
        //            d. = node["ten"].InnerText.ToString();
        //            d.X = float.Parse(node["x"].InnerText);
        //            d.Y = float.Parse(node["y"].InnerText);
        //            lstDiem.Add(d);
        //        }
        //    }
        //    catch (FileNotFoundException e)
        //    {
        //        Console.WriteLine(e.ToString());
        //    }
        //}

        public void Kmeans(int soLuong)
        {
            List<DTO_SinhVien>dsSV=getDSDV(soLuong);
            List<DTO_SinhVien> nguong = new List<DTO_SinhVien>();

            int n = soLuong;
            double[][] mang2C_cnpm = new double[n][];
            for (int i = 0; i < n; i++)
            {
                mang2C_cnpm[i] = new double[n];
            }
            double[][] mang2C_httt = new double[n][];
            for (int i = 0; i < n; i++)
            {
                mang2C_httt[i] = new double[n];
            }
            double[][] mang2C_mmt = new double[n][];
            for (int i = 0; i < n; i++)
            {
                mang2C_mmt[i] = new double[n];
            }
            nguong.Add(NT);
            nguong.Add(ND);
            DTO_SinhVien[][] dsCNPM = Kmeans_CNPM(nguong, mang2C_cnpm, soLuong);
            DTO_SinhVien[][] dsHTTT = Kmeans_HTTT(nguong, mang2C_httt, soLuong);
            DTO_SinhVien[][] dsMMT = Kmeans_MMT(nguong, mang2C_mmt, soLuong);

            DTO_SinhVien[][] cnpm = dsCNPM;
            DTO_SinhVien[][] httt = dsHTTT;
            DTO_SinhVien[][] mmt = dsMMT;
            //
            gomCumMoi(cnpm, httt, mmt);
            //Tao them 2 tam cum chua
            List<DTO_SinhVien> nguong_1 = new List<DTO_SinhVien>();
            List<DTO_SinhVien> nguong_2 = new List<DTO_SinhVien>();

            //Tinh KCTB Tạo 3 tâm cụm mới.
            List<DTO_SinhVien> nguong_CNPM = new List<DTO_SinhVien>();
            List<DTO_SinhVien> nguong_HTTT = new List<DTO_SinhVien>();
            List<DTO_SinhVien> nguong_MMT = new List<DTO_SinhVien>();
            DTO_SinhVien n1 = tinhKCTB_CNPM(cnpm);
            nguong_CNPM.Add(n1);
            DTO_SinhVien n2 = tinhKCTB_HTTT(httt);
            nguong_HTTT.Add(n2);
            DTO_SinhVien n3 = tinhKCTB_MMT(mmt);
            nguong_MMT.Add(n3);
            while (!soSanh_CNPM(nguong, nguong_CNPM) || !soSanh_HTTT(nguong_1, nguong_HTTT) || !soSanh_MMT(nguong_2, nguong_MMT))
            {
                DTO_SinhVien[][] kq=new DTO_SinhVien[3][];
                cnpm = dsCNPM;
                httt = dsHTTT;
                mmt = dsMMT;
                gomCumMoi(cnpm, httt, mmt);
                nguong = nguong_CNPM;
                nguong_1 = nguong_HTTT;
                nguong_2 = nguong_MMT;

                //
                tinhKC_CNPM(dsSV, nguong_CNPM, mang2C_cnpm);
                tinhKC_CNPM(dsSV, nguong_HTTT, mang2C_httt);
                tinhKC_CNPM(dsSV, nguong_MMT, mang2C_mmt);
                //
                taoMang_Rong(kq, mang2C_cnpm);
                taoMang_Rong(kq, mang2C_httt);
                taoMang_Rong(kq, mang2C_mmt);
                //
                gomCum(mang2C_cnpm, kq, soLuong);
                gomCum(mang2C_httt, kq, soLuong);
                gomCum(mang2C_mmt, kq, soLuong);
                //
                nguong_CNPM = new List<DTO_SinhVien>();
                nguong_HTTT = new List<DTO_SinhVien>();
                nguong_MMT = new List<DTO_SinhVien>();
                n1 = tinhKCTB_CNPM(cnpm);
                nguong_CNPM.Add(n1);
                n2 = tinhKCTB_HTTT(httt);
                nguong_HTTT.Add(n2);
                n3 = tinhKCTB_MMT(mmt);
                nguong_MMT.Add(n3);
            }
            dsCN = cnpm;
            dsHT = httt;
            dsM = mmt;
        }
    }
}
