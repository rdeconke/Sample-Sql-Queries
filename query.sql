--first query, print files alphabetical
SELECT svg_id, 
    file_name,
    file_title,
    file_description,
    creation_time,
    file_size
  FROM FILE
  ORDER BY file_name;
--Second, display all modifications by date
SELECT *
 FROM MODIFICATION
 ORDER BY mod_date DESC;
--Third, getting modifications between 2 dates.
SELECT  DISTINCT file_name,
       file_size,
       mod_date
    FROM FILE,MODIFICATION
    WHERE mod_date > '2015/12/16 12:01:52'
    AND mod_date < NOW()
    AND FILE.svg_id = MODIFICATION.svg_id
    ORDER BY file_size;
--fourth, getting most recent download.
SELECT  DISTINCT file_name,
        d_time
        FROM FILE,DOWNLOAD
        WHERE d_time = (SELECT MAX(d_time) FROM DOWNLOAD)
        AND FILE.svg_id = DOWNLOAD.svg_id;
--Fifth, getting the oldest modification
SELECT  DISTINCT file_name,
        mod_date
        FROM FILE,MODIFICATION
        WHERE mod_date = (SELECT MIN(mod_date) FROM MODIFICATION)
        AND FILE.svg_id = MODIFICATION.svg_id;
--Sixth, getting the average file size of all files
SELECT AVG(file_size) FROM FILE;
--Seventh, getting the smallest file that has been modified
SELECT DISTINCT file_name,
                mod_date,
                file_size
        FROM FILE,MODIFICATION
        WHERE file_size = (SELECT MIN(file_size) FROM MODIFICATION,FILE)
        AND FILE.svg_id = MODIFICATION.svg_id;