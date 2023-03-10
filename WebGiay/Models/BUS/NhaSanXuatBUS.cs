using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebGiay.Models.BUS
{
    public class NhaSanXuatBUS
    {
        public static IEnumerable<NhaSanXuat> DanhSach()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<NhaSanXuat>("Select * from NhaSanXuat where TinhTrang = 0");
        }

        public static IEnumerable<SanPham> ChiTiet(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("Select * from SanPham where MaNhaSanXuat = '" + id +"'");
        }
    }
}