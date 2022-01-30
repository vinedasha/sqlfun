create or replace function tri()
returns table (id_people int)
language plpgsql
as $$
declare
man int;
woman int;
colpar int;
begin
select count(*) from brack into colpar;
while(colpar!=0)
loop
select fa."eg_dohod" from families as fa where fa."id_people" = 
(select mug from brack where "id" = colpar limit 1) into man;
select f."eg_dohod" from families as f where f."id_people"  = 
(select gena from brack where "id" = colpar limit 1) into woman;
if(man>woman) then
return query
(
select f."id_people" from families as f where f."id_people" in 
(select mug from brack where "id" = colpar)
);
end if;
colpar = colpar -1;
end loop;
end;
$$;

--select * from families where id_people in (select * from tri());
