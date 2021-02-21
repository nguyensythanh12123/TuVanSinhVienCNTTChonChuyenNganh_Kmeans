using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PhanMem_HoTroChonChuyenNganh.BUS
{
    class BUS_MONHOC
    {
        DAL.DAL_KetNoiSQL kn = new DAL.DAL_KetNoiSQL();
        public List<string> loadTenMH_TheoCN(string tenChuyenNganh) {
            string sql = "select tenMH from monHoc,chuyenNganh"
                       + " where monHoc.maChuyenNganh=chuyenNganh.maChuyenNganh"
                       + " and tenChuyenNganh=N'" + tenChuyenNganh.Trim() + "'";
            try {
                List<string> dsTenMH = new List<string>();
                kn.Mo();
                SqlDataReader rd=kn.ExecuteReader(sql);
                while (rd.Read()) {
                    dsTenMH.Add(rd["tenMH"].ToString());
                }
                kn.Dong();
                return dsTenMH;
            }
            catch {
                return null;
            }
        }
        public DataTable loadMH() {
            return kn.getData("Select * from monHoc");   
        }
    }
}
