USE QuanLyChiTieuCN;
GO
-- 1. T?o tài kho?n ??ng nh?p tên là 'admin_web', m?t kh?u '123456'
CREATE LOGIN admin_web WITH PASSWORD = '123456';
GO
-- 2. T?o user trong database
CREATE USER admin_web FOR LOGIN admin_web;
GO
-- 3. C?p quy?n ??c/ghi d? li?u cho user này
ALTER ROLE db_datareader ADD MEMBER admin_web;
ALTER ROLE db_datawriter ADD MEMBER admin_web;
GO