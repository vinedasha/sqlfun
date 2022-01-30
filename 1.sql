CREATE or replace FUNCTION perv(na varchar(15), fami varchar(15), ot varchar(15)) returns table
(id int, name varchar(15), familia varchar(15), othestvo varchar(15))
as
$$
declare
begin
return query(
SELECT id_people, nme AS name, surname AS familia, otch AS othestvo
FROM families
WHERE nme =  na AND surname = fami AND otch = ot);
end;
$$ language plpgsql;
