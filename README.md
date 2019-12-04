编写 Dockerfile 构建 flask 程序



```bash
# 创建镜像
docker build .  -t test

# 运行容器
docker run -itd -p 5000:5000 bash setup.sh

# 验证
curl http:127.0.0.1:5000
```

