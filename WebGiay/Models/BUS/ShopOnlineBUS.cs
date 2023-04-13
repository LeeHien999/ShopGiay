using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebGiay.Models.BUS
{
    public class ShopOnlineBUS
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("Select * from SanPham where TinhTrang = 0");
        }

        public static SanPham ChiTiet(String a)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<SanPham> ("Select * from SanPham where MaSanPham = @0", a);
        }
        public static IEnumerable<SanPham> Top4New()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("Select Top 4 * from SanPham where lower(GhiChu) like N'%new%' and LuotView < 1000 and TinhTrang = 0");
        }

        public static IEnumerable<SanPham> Top4ThinhHanh()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("Select Top 4 * from SanPham where TinhTrang = 0 and LuotView > 500 and SoLuongDaBan > 500");
        }

        public static IEnumerable<SanPham> BestSeller()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("Select Top 8 * from SanPham where TinhTrang = 0 and SoLuongDaBan > 500");
        }

        //--------Lấy thêm Tên NSX để load phần detail--------
        public static NhaSanXuat LayThongTinNhaSanXuat(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<NhaSanXuat>("Select * from NhaSanXuat where MaNhaSanXuat = " + id + "");
        }
        

        public static SanPham LoadAvatar(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<SanPham>("select * from SanPham where MaSanPham = '" + id + "'");
        }
        //---------------------------Admin---------------------
        public static IEnumerable<SanPham> DanhSachSP()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("Select * from SanPham");
        }

        public static void InsertSP(SanPham sp)
        {
            var db = new ShopOnlineConnectionDB();
            db.Insert(sp);
        }

        public static void UpdateSP(String id, SanPham sp)
        {
            var db = new ShopOnlineConnectionDB();
            db.Update(sp, id);
        }

        public static IEnumerable<SanPham>SearchSP(string srt)
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("select * from SanPham where Lower(TenSanPham) like '%" + srt + "%'");
        }

        //---sử dụng trong CheckOut -------
        public static SanPham LayThongTinMaSanPham(string tensp)
        {
            var db = new ShopOnlineConnectionDB();
            var sql = "select * from SanPham where TenSanPham = @0";
            return db.SingleOrDefault<SanPham>(sql, tensp);
        }
    }
}