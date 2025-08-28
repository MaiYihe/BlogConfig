# BlogConfig
个人博客 docker-compose.yml 与前后端默认配置文件

## sql 导入数据表字段
```bash
docker compose exec mysql sh -c 'mysql -uroot -p"root" -e "USE blog; SHOW TABLES;"'
```
