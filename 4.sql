create or replace function chet(god int) returns table
(id int, name varchar(15), familia varchar(15), othestvo varchar(15), god_r int)
as
$$
declare
begin
return query(
SELECT id_people, nme, surname, otch, god_rogd
FROM families 
WHERE eg_dohod = 0 AND god_rogd < god);
end;
$$ language plpgsql;
