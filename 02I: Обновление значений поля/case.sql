update Animals set Sex = case
    when Sex not in ('male', 'female') then 'unknown'
    when Sex = 'male' then 'm'
    when Sex = 'female' then 'w'
end;
