# 1point3acres-docker
# 介绍
这是对https://github.com/harryhare/1point3acres的docker实现，用于一亩三分地的每日签到和答题。

---
# 使用方法
## 1. Clone本项目
```
git clone git@github.com:h4rvey-g/1point3acres-docker.git
cd 1point3acres-docker
```
## 2. 修改配置文件中的username, password, api_keys
```
{
  "users": [
    {
      "username": "replace_with_your_username",
      "password": "repalce_with_your_password"
    }
  ],
  "api_key": "replace_with_your_api_key"
}
```
## 3. 构建镜像
```
docker build -t 1point3acres .
```
## 4. 运行容器
```
docker run -d --name 1point3acres 1point3acres
```

