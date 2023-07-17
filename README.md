# ShopGiay
Project with Asp.net

#Hướng dẫn chạy project trên máy
#B1: Tạo lại database dựa vào file script trong thư mục DB với tên là WebBanGiay.

#B2: Vào project chọn SEVER EXPLORER -> DATA CONNECTIONS -> ADD CONNECTION -> MICROSOFT SQL SERVER -> Nhập SERVER NAME -> SELECT OR ENTER A DATABASE NAME -> WebBanGiay -> OK.

#B3: Ghép nối DB với project: Chọn SOLUTION EXPLORER -> Web.config:
     - Ở dòng connect string có tên "ShopOnlineConnection" xóa đường dẫn trong connectionString
     - Vào lại SEVER EXPLORER -> DATA CONNECTIONS -> WebBanGiay -> Coppy phần Connection string và dán lại vào connectionString trong Web.conFig
     
#B4: Cập nhật lại cho project: Chọn SOLUTION EXPLORER -> Models -> Generated -> Database.tt -> nhấn space đại vào 1 chỗ nào đó sau đó Ctrl + s -> OK.

#B5: Chạy và xem project.

#Lưu ý: Do project này được xây dựng từ microsoft visual code 2017 nên khi chạy trên các phiên bản cao hơn có thể báo yêu cầu cập nhật nên cứ bấm ok vào cái nào recommend sau đó khởi động lại project.

