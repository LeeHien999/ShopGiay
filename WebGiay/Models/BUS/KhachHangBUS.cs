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
    }
}