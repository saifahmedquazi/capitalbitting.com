while true
do
sleep 3

if redis-cli -h ssh.capitalbeting.com set foo bar |grep read
then
docker-compose restart
fi
done