USE QuanLyChiTieuCN;
GO

-- 1. Tìm ID c?a tài kho?n 'nhomtruong' (Thay tên khác vào ?ây n?u b?n ??ng nh?p user khác)
DECLARE @TenUser NVARCHAR(50) = 'truongnhom'; 
DECLARE @UserID INT;

SELECT @UserID = MaNguoiDung FROM NGUOIDUNG WHERE TenDangNhap = @TenUser;

-- Ki?m tra n?u tìm th?y User thì m?i thêm
IF @UserID IS NOT NULL
BEGIN
    -- 2. Thêm danh m?c CHI TIÊU (Màu ??)
    INSERT INTO DANHMUC (TenDanhMuc, LoaiGiaoDich, MaNguoiDung) VALUES 
    (N'?n u?ng', 'Chi', @UserID),
    (N'Di chuy?n (X?ng/Xe)', 'Chi', @UserID),
    (N'Ti?n nhà/?i?n n??c', 'Chi', @UserID),
    (N'Mua s?m', 'Chi', @UserID),
    (N'Gi?i trí', 'Chi', @UserID);

    -- 3. Thêm danh m?c THU NH?P (Màu xanh)
    INSERT INTO DANHMUC (TenDanhMuc, LoaiGiaoDich, MaNguoiDung) VALUES 
    (N'L??ng c?ng', 'Thu', @UserID),
    (N'Ti?n th??ng', 'Thu', @UserID),
    (N'Làm thêm (Freelance)', 'Thu', @UserID),
    (N'???c t?ng', 'Thu', @UserID);

    PRINT N'?ã thêm danh m?c thành công cho user: ' + @TenUser;
END
ELSE
BEGIN
    PRINT N'Không tìm th?y user nào tên là: ' + @TenUser;
END