create or replace function pat() returns table
(col bigint)
as
$$
declare
begin
return query(
select count(distinct id_bliznec)
from deti_roditeli
where id_children in  (select fa.id_people
from families as fa
where id_people in (select f.id_people
from family_obqed as f)) and id_bliznec is not null);
end;
$$ language plpgsql;
