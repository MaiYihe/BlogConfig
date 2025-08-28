# BlogConfig
个人博客 docker-compose.yml 与前后端默认配置文件

## sql 导入数据表字段
```bash
docker compose exec -T mysql sh -c 'mysql -uroot -p"root" --default-character-set=utf8mb4 blog' < schema.sql
```
