# Hướng dẫn Cài Đặt và Cấu Hình Trước khi Chạy Dự Án ShopGiay

Trước khi bạn có thể chạy dự án ShopGiay thành công trên máy tính của mình, bạn cần thực hiện một số cài đặt và cấu hình sẵn có. Dưới đây là các bước để bạn thực hiện trước khi chạy dự án:

## Bước 1: Cài Đặt Môi Trường Phát Triển

1. Đảm bảo bạn đã cài đặt một môi trường phát triển phù hợp, chẳng hạn như Microsoft Visual Studio hoặc Visual Studio Code để mở và chỉnh sửa mã nguồn.

## Bước 2: Cài Đặt SQL Server

2. Đảm bảo bạn đã cài đặt SQL Server hoặc SQL Server Express trên máy tính của bạn. Bạn cần sử dụng SQL Server để lưu trữ cơ sở dữ liệu của dự án.

## Bước 3: Cài Đặt .NET Framework

3. Kiểm tra xem máy tính của bạn đã cài đặt .NET Framework, phiên bản phù hợp với dự án ShopGiay. Dự án có thể yêu cầu .NET Framework 4.5 trở lên. Nếu chưa cài đặt, hãy tải và cài đặt .NET Framework từ trang web chính thức của Microsoft.

## Bước 4: Sao Chép Dự Án

4. Sao chép dự án ShopGiay từ nguồn (repository) hoặc thư mục lưu trữ của bạn vào máy tính. Bạn có thể sử dụng Git để sao chép dự án từ một kho lưu trữ Git hoặc thực hiện sao chép thủ công từ tệp ZIP của dự án.

## Bước 5: Cấu Hình Kết Nối Cơ Sở Dữ Liệu

5. Trước khi chạy dự án, bạn cần cấu hình kết nối cơ sở dữ liệu:

    - Tạo lại cơ sở dữ liệu dựa trên tệp script có sẵn trong thư mục 'DB' với tên là 'WebBanGiay'.
    
    - Kết nối cơ sở dữ liệu với máy chủ SQL Server của bạn trong tệp 'Web.config' của dự án. Chắc chắn rằng connectionString đã được cấu hình đúng với thông tin máy chủ của bạn.

## Bước 6: Cập Nhật Dự Án

6. Trong Solution Explorer, mở thư mục 'Models' -> 'Generated' -> 'Database.tt' và nhấn một lần dấu cách bất kỳ trong tệp 'Database.tt', sau đó lưu lại (Ctrl + S) để cập nhật cơ sở dữ liệu của dự án.

## Bước 7: Chạy Dự Án

7. Bây giờ bạn đã cài đặt và cấu hình xong dự án ShopGiay. Hãy chạy dự án của bạn và kiểm tra kết quả.

## Lưu Ý

- Dự án này được xây dựng trên Microsoft Visual Studio 2017, vì vậy nếu bạn chạy trên các phiên bản cao hơn, có thể sẽ yêu cầu cập nhật. Bạn có thể bấm "OK" để đồng ý với các yêu cầu cập nhật và sau đó khởi động lại dự án.

- Nếu bạn gặp lỗi trong tệp 'Database.cs', hãy truy cập lại git, chọn tệp 'Database.cs', sao chép nội dung và dán lại vào tệp.

Chúc bạn thành công khi chạy dự án ShopGiay trên máy tính của mình!
