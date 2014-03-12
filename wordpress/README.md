

let's say your container ip is 172.17.0.19 and nginx listens on port 80: 
 iptables -t nat -A  DOCKER -p tcp --dport 80 -j DNAT --to-destination 172.17.0.19:80
