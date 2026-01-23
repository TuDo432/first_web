USE QuanLyChiTieuCN;
GO
-- 1. B?t tài kho?n admin_web (phòng h? nó b? disable)
ALTER LOGIN admin_web ENABLE;
GO
-- 2. ??t l?i m?t kh?u là 123456 (?? kh?p v?i code Node.js)
ALTER LOGIN admin_web WITH PASSWORD = '123456';
GO