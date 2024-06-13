# jshERP-docker

源项目地址: https://github.com/jishenghua/jshERP

# docker 部署

1、从源项目下载"**jshERP3.3-最新包等 1 个文件.zip**"，并解压到 docker-compose.yml 同级目录，然后解压内部的"后端包"和"前端包"。
目录结构如下：

```
D:.
└─jshERP3.3-最新包
    ├─nginx配置文件-参考
    ├─前端包
    │  └─dist
    │      ├─css
    │      ├─doc
    │      ├─img
    │      ├─js
    │      └─static
    │          └─screenshot
    └─后端包
        └─jshERP
            ├─bin
            ├─config
            ├─docs
            └─lib
```

2、docker-compose 构建并运行

docker-compose build

docker-compose up

3、访问 http://localhost:3000，默认配置仅开放本地 3000 端口。
