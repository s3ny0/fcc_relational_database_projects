ESSENTIAL INFO:
You can make a dump of your database by entering "pg_dump -cC --inserts -U freecodecamp universe > universe.sql" 
in a bash terminal (not the psql one). It will save the commands to rebuild your database in universe.sql. 
The file will be located where the command was entered. If it's anything inside the project folder, 
the file will be saved in the VM. 

You can rebuild the database by entering "psql -U postgres < universe.sql" in a terminal where the .sql file is.
