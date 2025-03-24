update Animals set Sex = 'unknown' where Sex not in ('male', 'female');
update Animals set Sex = 'm' where Sex = 'male';
update Animals set Sex = 'w' where Sex = 'female';

