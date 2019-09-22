1. docker-compose up -d

2. docker exec -it mountain-nginx-web bash
3. root@28d9d21d64e6:/# vim /etc/nginx/conf.d/default.conf
4. change the port of the vm from 80 to match ports.conf
5. root@28d9d21d64e6:/# /etc/init.d/nginx reload
6. the terminal will respond with [ ok ] Reloading nginx: nginx.
7. must change the config file twice.  after the first reload, the mountain web automagically changes the port back to 80
after changing again and reloading, the custom port sticks and the website can be rendered across 443
8. root@28d9d21d64e6:/# vim /etc/nginx/conf.d/default.conf
9. root@28d9d21d64e6:/# /etc/init.d/nginx reload
10. terminal responds with [ ok ] Reloading nginx: nginx.
11. visit your https:// site defined in the docker-compose.yml
12. xing@7fff755:/# wget https://site-defined
