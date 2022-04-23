INSERT
 INTO FILE (svg_id, file_name, file_title, file_description, creation_time, file_size)
 VALUES (0,"rect.svg","simple rectangle","its a simple rectangle",NOW(),15),
        (0,"circ.svg","simple circle","its a simple circle",'2018/10/11 12:07:53',10),
        (0,"path.svg","simple path","its a simple Path",'2016/11/12 11:01:59',20),
        (0,"quad01.svg","Example quad01 - quadratic Bézier commands in path data","Picture showing a Q a T command",'2018/10/11 11:01:59',30),
        (0,"emoji.svg","A smile emoji","picture showing a smiling emoji",'2015/12/17 12:01:52',45);
INSERT
 INTO MODIFICATION (mod_id,mod_type,mod_summary,mod_date,svg_id)
 VALUES (0,"add circle","add circle with 6 radius at 2,5",NOW(),1),
        (0,"add rectangle","add circle with length and width of 5 at 2,5",'2018/11/19 12:01:52',3),
        (0,"change attribute","Changed fille of rectangle 3 to YELLOW",'2015/12/17 12:08:52',2),
        (0,"add path","add path with d = '2,3 5,4 6,6'",'2016/12/19 12:07:52',4),
        (0,"add group","added a group",'2019/12/15 12:01:42',1);
INSERT
 INTO DOWNLOAD(download_id,d_time,d_hostname,svg_id)
 VALUES (0,'2015/12/17 12:07:52',"greg",1),
        (0,'2016/12/17 11:01:52',"jemerey",3),
        (0,'2017/12/17 15:01:52',"jason",4),
        (0,NOW(),"jeff",2);
