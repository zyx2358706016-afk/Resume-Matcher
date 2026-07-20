# Resume Matcher 项目部署记录

## 1. 项目介绍

本项目基于 GitHub 开源项目 Resume Matcher 进行本地部署学习。

该项目主要用于分析简历内容与岗位描述之间的匹配程度，
帮助用户优化简历，提高岗位匹配效率。

## 2. 部署环境

操作系统：
- Windows 11

使用工具：
| 工具 | 版本 | 如何检查 | 安装 |
|------|----------|----------|------|
| **Python** | 3.13.12 | `python --version` | [python.org](https://python.org) |
| **Node.js** | 24.18.0 | `node --version` | [nodejs.org](https://nodejs.org) |
| **npm** | 11.16.0 | `npm --version` | 随 Node.js 一起安装 |
| **uv** | 0.11.29 | `uv --version` | [astral.sh/uv](https://docs.astral.sh/uv/getting-started/installation/) |
| **Git** |  2.47.0.windows.2 | `git --version` | [git-scm.com](https://git-scm.com) |

## 3. 本地运行

### 1. 克隆项目

git clone https://github.com/srbhr/Resume-Matcher.git


### 2. 后端配置

进入：

cd apps/backend


创建环境：

copy .env.example .env


修改 .env（仅以deepseek为例）:

LLM_PROVIDER=deepseek

LLM_MODEL=deepseek-chat

LLM_API_KEY=你的API_KEY


安装依赖：

uv sync


启动：

uv run app



### 3. 前端启动

进入：

cd apps/frontend


安装：

npm install


运行：

npm run dev


访问：

http://localhost:3000

