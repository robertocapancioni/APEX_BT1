select 
      sr.ID,
      sr.DENOMINAZIONE,
      sr.INDIRIZZO,
      sr.PRIVATI,
      sr.LINGUE,
      sr.SPORT,
      sr.LATITUDINE,
      sr.LONGITUDINE,
      sr.COMUNE_ID,
       c.COMUNE,
      sr.ZONA_ID,
       z.ZONA,
      sr.CLASSIFICAZIONE_ID,
       l.CLASSIFICAZIONE,
       case sr.PRIVATI
       when 'SI' then '#FFCC00'
                 else '#4CD964' 
       end COLORE
 from D07_STRUTTURE_RICETTIVE sr
 join D07_COMUNE c
   on sr.COMUNE_ID = c.COMUNE_ID
 join D07_ZONA z
   on sr.ZONA_ID = z.ZONA_ID
 join D07_CLASSIFICAZIONE l
   on sr.CLASSIFICAZIONE_ID = l.CLASSIFICAZIONE_ID