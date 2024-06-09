--Add Department--
CREATE PROCEDURE sp_AddDepartment
    @name VARCHAR(30),
    @location INT
AS
BEGIN
    INSERT INTO tbl_departments (name, location)
    VALUES (@name, @location);
END
--Update Department--
CREATE PROCEDURE sp_UpdateDepartment
    @id INT,
    @name VARCHAR(30),
    @location INT
AS
BEGIN
    UPDATE tbl_departments
    SET name = @name,
        location = @location
    WHERE id = @id;
END
--Delete Department--
CREATE PROCEDURE sp_DeleteDepartment
    @id INT
AS
BEGIN
    DELETE FROM tbl_departments
    WHERE id = @id;
END

--Create Regions--
CREATE PROCEDURE sp_AddRegion
	@name VARCHAR(25)
AS 
BEGIN
	INSERT INTO tbl_regions (name)
	VALUES (@name);
END
-- Update Regions--
CREATE PROCEDURE sp_UpdateRegion
	@id INT,
	@name VARCHAR(25)
AS
BEGIN
	UPDATE tbl_regions
	SET name = @name
	WHERE id = @id;
END
