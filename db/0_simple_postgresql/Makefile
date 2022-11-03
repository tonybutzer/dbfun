cat:
	cat Makefile


build:
	docker build -t my-postgres-db ./


run:
	docker run -d --name my-postgresdb-container -p 5432:5432 my-postgres-db

getsamples:
	wget https://ftp.postgresql.org/pub/projects/pgFoundry/dbsamples/world/dbsamples-0.1/dbsamples-0.1.tar.gz -O /tmp/db.tar.gz
	tar tvf /tmp/db.tar.gz
