stop:
	docker compose down
	sudo rm -r ./backups
	sudo rm -r ./mongo_data

start:
	-mkdir mongo_data
	-mkdir backups
	cp backup.sh ./backups/backup.sh
	sudo chmod -R 0777 ./backups
	docker compose up -d
	
restore:
	-sudo rm -r ./mongo_data 
	-sudo chmod -R 0777 ./backups
	-mkdir mongo_data
	-tar -xzf ./backups/backup_20250404_213407.tar.gz -C ./mongo_data
