CREATE PROCEDURE [dbo].[Login]	
	@result int out,
	@Username nvarchar(50),
	@Password nvarchar(50)
AS
if exists(SELECT * FROM Users WHERE Username=@Username AND Password=@Password)
begin
SET @result = 1
return @result
end
else
begin
SET @result = 0
return @result
end
