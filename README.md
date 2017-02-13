# myshell
存储一些日常用的shell脚本

以下脚本都是在Centos7下执行的 

*脚本

** nginx 源码安装 脚本

** redis keepalived


** mysql 日志慢查询分析工具 percona-toolkit 




# The header menu
header:
    items:
        index:
            text: 首页
            # You can use relative urls
            relativeUrl: index.html
        wiki:
            text: wiki
            # Or absolute urls
            #absoluteUrl: http://couscous.io
            relativeUrl: ./docs/intro/desc.html

# The left menu bar
menu:
    items:
        desc:
            text: 简介
            relativeUrl: ./docs/intro/desc.html
        interface:
            text: 示例
            items:
                api:
                    text: 须知示例
                    relativeUrl: ./docs/intro/api.html
                board:
                    text: 接口示例
                    relativeUrl: ./docs/intro/board.html
        store:
            text: 存储
            items:
                redis:
                    text: redis
                    relativeUrl: ./docs/store/redis.html
        extrainfo:
            text: 附录
            items:
                extrainfo1:
                    text: 附录1
                    relativeUrl: ./docs/intro/extrainfo.html
        question:
            text: 常见问题
            relativeUrl: ./docs/intro/question.html
        about:
            text: 联系我们
            relativeUrl: ./docs/intro/about.html
