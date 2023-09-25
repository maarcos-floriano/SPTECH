create user 'supervisor'@'localhost' identified by 'urubu100';

grant select, update, insert, delete on continuada2.* to 'supervisor'@'localhost';
flush privileges;

revoke select, update, delete, insert on continuada2.*
	from 'supervisor'@'localhost';
flush privileges;

grant all privileges on continuada2.*
	to 'supervisor'@'localhost';
flush privileges;