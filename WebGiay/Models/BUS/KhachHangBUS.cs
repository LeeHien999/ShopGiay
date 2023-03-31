using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ShopOnlineConnection;

namespace WebGiay.Models.BUS
{
    public class KhachHangBUS
    {
        public static IEnumerable<AspNetUser> DanhSach()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<AspNetUser>("Select * from AspNetUsers where Id != 'c8045a02-841c-4c3c-a70c-91fae27faebc'");
        }

        public static void Delete(String id)
        {
            var db = new ShopOnlineConnectionDB();
            var kh = db.SingleOrDefault<AspNetUser>("select * from AspNetUsers where Id='"+ id + "'");
            db.Delete("AspNetUsers", id, kh);
        }

        public static AspNetUser ChiTietKH(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<AspNetUser>("Select * from AspNetUsers where Id='" + id + "'");
        }

        public static void Update(String id, AspNetUser kh)
        {
            var db = new ShopOnlineConnectionDB();
            db.Update(kh, id);
        }
    }
}