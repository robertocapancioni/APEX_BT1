for c in (select * from d08_vendita  where id = :P3_ID)
loop
       :P3_DATA         := c.data;
       :P3_PRODOTTO     := c.prodotto;
       :P3_CLIENTE      := c.cliente;
       :P3_ZONA_CLIENTE := c.zona_cliente;
       :P3_QUANTITA     := c.quantita;
       :P3_IMPORTO      := c.importo;
end loop;