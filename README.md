# CTFColosseo

CTFColosseo 是一个基于 Flask 框架开发的 CTF（Capture The Flag）竞赛平台。该平台提供了一个完整的 CTF 竞赛环境，支持题目管理、用户管理、积分系统等功能。

## 功能特性

- 用户认证系统
- 题目分类管理
- 积分排名系统
- 邮件通知功能
- 验证码系统
- 数据库支持

## 技术栈

- 后端：Python Flask
- 数据库：MySQL
- 前端：HTML, CSS, JavaScript
- 其他：Flask-Login, Flask-Mail, Flask-WTF, SQLAlchemy

## 安装说明

1. 克隆项目
```bash
git clone https://github.com/yourusername/ctfcolosseo.git
cd ctfcolosseo
```

2. 安装依赖
```bash
cd web
pip install -r requirements.txt
```

3. 配置数据库
- 创建 MySQL 数据库
- 导入数据库文件（位于 `网站数据库文件` 目录）

4. 配置环境变量
- 设置数据库连接信息
- 配置邮件服务器信息

## 运行项目

```bash
cd web
python runserver.py
```

服务器将在 localhost:5555 启动

## 项目结构

```
ctfcolosseo/
├── web/                    # Web 应用主目录
│   ├── FlaskWebProject_colosseo_ctf/  # Flask 应用代码
│   ├── requirements.txt    # Python 依赖
│   └── runserver.py       # 启动脚本
├── ctf_web/               # Web 题目相关
├── ctf_pwn/               # Pwn 题目相关
└── 网站数据库文件/         # 数据库文件
```

## 贡献指南

欢迎提交 Issue 和 Pull Request 来帮助改进项目。

## 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件
