SELECT SegaGenesis.Name,
       Developer.Name
  FROM SegaGenesis
       JOIN
       Developer ON Developer.id = SegaGenesis.Developer
 WHERE EXISTS (
           SELECT 1
             FROM SNES
            WHERE SNES.Developer = SegaGenesis.Developer AND
                  SNES.Name = SegaGenesis.Name
       );

