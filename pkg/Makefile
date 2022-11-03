down:
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	mv Mini* /tmp

install:
	#mkdir /data2/$USER
	sudo mkdir -p /data/tmpconda
	sudo chown -R ec2-user /data
	TMPDIR=/data/tmpconda bash /tmp/Miniconda3-latest-Linux-x86_64.sh


docker:
	sudo yum install docker
	sudo usermod -aG docker ${USER}
	sudo systemctl enable docker
	sudo systemctl start docker

compose:
	sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
	docker-compose version

install-s3fs-centos:
	sudo yum install epel-release   # amazons version
	sudo yum install s3fs-fuse

