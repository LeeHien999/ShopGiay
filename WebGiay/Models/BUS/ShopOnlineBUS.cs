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
            return db.Query<SanPham>("Select Top 4 * from SanPham where GhiChu = N'New'");
        }

        public static IEnumerable<SanPham> BestSeller()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("Select Top 8 * from SanPham where LuotView >0");
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
    }
}