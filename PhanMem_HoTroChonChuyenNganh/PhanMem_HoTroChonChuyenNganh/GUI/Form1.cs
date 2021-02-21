using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using PhanMem_HoTroChonChuyenNganh.BUS;

namespace PhanMem_HoTroChonChuyenNganh
{
    public partial class Form1 : Form
    {
        BUS_ChuyenNganh busCN = new BUS_ChuyenNganh();
        BUS_MONHOC busMH = new BUS_MONHOC();
        BUS_Kmeans k = new BUS_Kmeans();
        BUS_SinhVien busSV = new BUS_SinhVien();
        public Form1()
        {
            InitializeComponent();
            k.kMeans();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //Load combox tên các môn học của học sinh viên
        }
        public void load_Tre()
        {
            treChuyenNganh.Nodes.Clear();
            //Load nodes cha
            for (int i = 0; i < busCN.loadChuyenNganh().Count(); i++)
            {
                treChuyenNganh.Nodes.Add(busCN.loadChuyenNganh()[i]);
            }
            //Load nodes con
            for (int i = 0; i < busCN.loadChuyenNganh().Count(); i++)
            {
                for (int j = 0; j < busMH.loadTenMH_TheoCN(treChuyenNganh.Nodes[i].Text).Count(); j++) {
                    treChuyenNganh.Nodes[i].Nodes.Add(busMH.loadTenMH_TheoCN(treChuyenNganh.Nodes[i].Text)[j]);
                }
            }
            treChuyenNganh.ExpandAll();
        }

        private void btn_HienCN_Click(object sender, EventArgs e)
        {
            //Hiển thị tên các chuyên ngành
            load_Tre();
            co = false;
        }

        private void dgv_DSSV_SelectionChanged(object sender, EventArgs e)
        {
        }

        private void cboDiemSo_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (dgv_DSSV.CurrentRow != null)
            //{
            //    if (cboDiemSo.Text == "ĐIỂM HỆ SỐ 10")
            //    {
            //        txtDiemHeSo.Text = busSV.getDiemHS_10(txtMSSV.Text).ToString();
            //    }
            //    if (cboDiemSo.Text == "ĐIỂM HỆ SỐ 4")
            //    {
            //        txtDiemHeSo.Text = busSV.getDiemHS_4(txtMSSV.Text).ToString();
            //    }
            //}
        }


        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            //Load dataGridView 
            dgv_DSSV.DataSource = busSV.getDSDV(busSV.slSV());
            lbSoLuongSV.Text = "Tổng sinh viên sau khi lọc: " + dgv_DSSV.RowCount.ToString() + " sinh viên";
            lbSoLuongSV.Visible = true;
        }

        bool co = false;
        DataGridViewTextBoxColumn hd1 = new DataGridViewTextBoxColumn();
        DataGridViewTextBoxColumn hd2 = new DataGridViewTextBoxColumn();
        DataGridViewTextBoxColumn hd3 = new DataGridViewTextBoxColumn();
        DataGridViewTextBoxColumn hd4 = new DataGridViewTextBoxColumn();
        DataGridViewTextBoxColumn hd5 = new DataGridViewTextBoxColumn();

        private void treChuyenNganh_AfterSelect(object sender, TreeViewEventArgs e)
        {
            if (busSV.dsCN == null || busSV.dsHT == null || busSV.dsM == null)
            {
                return;
            }
            dgv_DSSV.Columns.Clear();
            for (int i = 0; i < treChuyenNganh.Nodes.Count; i++)
            {
                if (treChuyenNganh.Nodes[i].IsSelected)
                {
                    if (treChuyenNganh.Nodes[i].Text == "Công nghệ phần mềm")
                    {
                        //dgv_DSSV.DataSource = busSV.SVKN_CNPM();
                        DTO.DTO_SinhVien[] obj1 = busSV.dsCN[0];
                        DTO.DTO_SinhVien[] obj2 = busSV.dsCN[1];
                        // Column1
                        // 
                        hd1.DataPropertyName = "MSSV1";
                        hd1.HeaderText = "MSSV";
                        hd1.Name = "Column1";
                        hd1.DisplayIndex = 1;
                        hd1.ReadOnly = true;
                        // 
                        // Column2
                        // 
                        hd2.DataPropertyName = "HoTen1";
                        hd2.HeaderText = "Họ tên";
                        hd2.Name = "Column2";
                        hd2.DisplayIndex = 2;
                        hd2.ReadOnly = true;
                        // 
                        // Column3
                        // 
                        hd3.DataPropertyName = "LT_NMLT1";
                        hd3.HeaderText = "Nhập môn lập trình";
                        hd3.Name = "Column3";
                        hd3.DisplayIndex = 3;
                        hd3.ReadOnly = true;
                        // 
                        // Column4
                        // 
                        hd4.DataPropertyName = "LT_LTHDT1";
                        hd4.HeaderText = "Lập trình hướng đối tượng";
                        hd4.Name = "Column4";
                        hd4.DisplayIndex = 4;
                        hd4.ReadOnly = true;
                        //
                        // Column5
                        // 
                        hd5.DataPropertyName = "LT_CTDLGT1";
                        hd5.HeaderText = "Cấu trúc dữ liệu";
                        hd5.Name = "Column5";
                        hd5.DisplayIndex = 5;
                        hd5.ReadOnly = true;
                        //
                        dgv_DSSV.Columns.Add(hd1);
                        dgv_DSSV.Columns.Add(hd2);
                        dgv_DSSV.Columns.Add(hd3);
                        dgv_DSSV.Columns.Add(hd4);
                        dgv_DSSV.Columns.Add(hd5);
                        //
                        if (co == false)
                        {
                            dgv_DSSV.DataSource = busSV.hienThiCNPM(obj1);
                            lbTB.Text = "Danh sách sinh viên phù hợp " + treChuyenNganh.SelectedNode.Text + "";
                        }
                        else
                        {
                            lbTB.Text = "Danh sách sinh viên không phù hợp " + treChuyenNganh.SelectedNode.Text + "";
                            dgv_DSSV.DataSource = busSV.hienThiCNPM(obj2);
                        }
                        loadcbo();
                        lbSoLuongSV.Text = "Tổng sinh viên sau khi lọc: " + dgv_DSSV.RowCount.ToString() + " sinh viên";
                        lbSoLuongSV.Visible = true;
                    }
                    if (treChuyenNganh.Nodes[i].Text == "Hệ thống thông tin")
                    {
                        //dgv_DSSV.DataSource = busSV.SVKN_HTTT();
                        DTO.DTO_SinhVien[] obj1 = busSV.dsHT[0];
                        DTO.DTO_SinhVien[] obj2 = busSV.dsHT[1];
                        // Column1
                        // 
                        hd1.DataPropertyName = "MSSV1";
                        hd1.HeaderText = "MSSV";
                        hd1.Name = "Column1";
                        hd1.DisplayIndex = 1;
                        hd1.ReadOnly = true;
                        // 
                        // Column2
                        // 
                        hd2.DataPropertyName = "HoTen1";
                        hd2.HeaderText = "Họ tên";
                        hd2.Name = "Column2";
                        hd2.DisplayIndex = 2;
                        hd2.ReadOnly = true;
                        // 
                        // Column3
                        // 
                        hd3.DataPropertyName = "LT_CSDL1";
                        hd3.HeaderText = "Cơ sở dữ liệu";
                        hd3.Name = "Column3";
                        hd3.DisplayIndex = 3;
                        hd3.ReadOnly = true;
                        // 
                        // Column4
                        // 
                        hd4.DataPropertyName = "TH_CSDL1";
                        hd4.HeaderText = "Thực hành cơ sở dữ liệu";
                        hd4.Name = "Column4";
                        hd4.DisplayIndex = 4;
                        hd4.ReadOnly = true;
                        //
                        // Column5
                        // 
                        hd5.DataPropertyName = "HQT_CSDL1";
                        hd5.HeaderText = "Hệ quản trị cơ sở dữ liệu";
                        hd5.Name = "Column5";
                        hd5.DisplayIndex = 5;
                        hd5.ReadOnly = true;
                        //
                        dgv_DSSV.Columns.Add(hd1);
                        dgv_DSSV.Columns.Add(hd2);
                        dgv_DSSV.Columns.Add(hd3);
                        dgv_DSSV.Columns.Add(hd4);
                        dgv_DSSV.Columns.Add(hd5);
                        //
                        if (co == false)
                        {
                            dgv_DSSV.DataSource = busSV.hienThiHTTT(obj1);
                            lbTB.Text = "Danh sách sinh viên phù hợp " + treChuyenNganh.SelectedNode.Text + "";
                        }
                        else
                        {
                            lbTB.Text = "Danh sách sinh viên không phù hợp " + treChuyenNganh.SelectedNode.Text + "";
                            dgv_DSSV.DataSource = busSV.hienThiHTTT(obj2);
                        }
                        loadcbo();
                        lbSoLuongSV.Text = "Tổng sinh viên sau khi lọc: " + dgv_DSSV.RowCount.ToString() + " sinh viên";
                        lbSoLuongSV.Visible = true;
                    }
                    if (treChuyenNganh.Nodes[i].Text == "Mạng máy tính")
                    {
                        //dgv_DSSV.DataSource = busSV.SVKN_MMT();
                        DTO.DTO_SinhVien[] obj1 = busSV.dsM[0];
                        DTO.DTO_SinhVien[] obj2 = busSV.dsM[1];
                        // Column1
                        // 
                        hd1.DataPropertyName = "MSSV1";
                        hd1.HeaderText = "MSSV";
                        hd1.Name = "Column1";
                        hd1.DisplayIndex = 1;
                        hd1.ReadOnly = true;
                        // 
                        // Column2
                        // 
                        hd2.DataPropertyName = "HoTen1";
                        hd2.HeaderText = "Họ tên";
                        hd2.Name = "Column2";
                        hd2.DisplayIndex = 2;
                        hd2.ReadOnly = true;
                        // 
                        // Column3
                        // 
                        hd3.DataPropertyName = "KTMT1";
                        hd3.HeaderText = "Kiến trúc máy tính";
                        hd3.Name = "Column3";
                        hd3.DisplayIndex = 3;
                        hd3.ReadOnly = true;
                        // 
                        // Column4
                        // 
                        hd4.DataPropertyName = "LT_MMT1";
                        hd4.HeaderText = "Mạng máy tính";
                        hd4.Name = "Column4";
                        hd4.DisplayIndex = 4;
                        hd4.ReadOnly = true;
                        //
                        // Column5
                        // 
                        hd5.DataPropertyName = "HDH1";
                        hd5.HeaderText = "Hệ điều hành";
                        hd5.Name = "Column5";
                        hd5.DisplayIndex = 5;
                        hd5.ReadOnly = true;
                        //
                        dgv_DSSV.Columns.Add(hd1);
                        dgv_DSSV.Columns.Add(hd2);
                        dgv_DSSV.Columns.Add(hd3);
                        dgv_DSSV.Columns.Add(hd4);
                        dgv_DSSV.Columns.Add(hd5);

                        if (co == false)
                        {
                            dgv_DSSV.DataSource = busSV.hienThiMMT(obj1);
                            lbTB.Text = "Danh sách sinh viên phù hợp " + treChuyenNganh.SelectedNode.Text + "";
                        }
                        else
                        {
                            lbTB.Text = "Danh sách sinh viên không phù hợp " + treChuyenNganh.SelectedNode.Text + "";
                            dgv_DSSV.DataSource = busSV.hienThiMMT(obj2);
                        }
                        loadcbo();
                        lbSoLuongSV.Text = "Tổng sinh viên sau khi lọc: " + dgv_DSSV.RowCount.ToString() + " sinh viên";
                        lbSoLuongSV.Visible = true;
                    }
                }
            }
        }

        public void loadcbo() {
            cboTimKiem.DataSource = dgv_DSSV.DataSource;
            cboTimKiem.DisplayMember = "HoTen1";
            cboTimKiem.ValueMember = "MSSV1";
        } 

        private void btnKmeans_Click(object sender, EventArgs e)
        {
            if (txtSoLuong.TextLength == 0) {
                txtSoLuong.Focus();
                MessageBox.Show("Bạn vui lòng chọn số lượng lớn hơn 0!","Thông báo");
                
                return;
            }
            busSV.Kmeans(int.Parse(txtSoLuong.Text));
            
            MessageBox.Show("Đã sắp xếp chọn chuyên ngành thành công!");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            load_Tre();
            co = true;
        }
        private void cboTimKiem_SelectedIndexChanged(object sender, EventArgs e)
        {
            busSV.loadTimKiem(cboTimKiem.SelectedValue.ToString());
        }
    }
}
