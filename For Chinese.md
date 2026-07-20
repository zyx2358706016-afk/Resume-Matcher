# 中文快速开始

本项目支持本地运行，并支持多种大语言模型（LLM）服务。

目前支持：

- OpenAI
- DeepSeek
- OpenRouter
- Anthropic Claude
- Google Gemini
- Ollama 本地模型


## 环境要求

运行项目之前，请确保已经安装：

| 软件 | 推荐版本 |
| --- | --- |
| Python | 3.13+ |
| Node.js | 22+ |
| uv | 最新版本 |
| Git | 任一 |


检查环境：

```bash
python --version

node -v

uv --version

git --version
```


---

# 本地运行

## 1. 获取项目

克隆项目：

```bash
git clone https://github.com/srbhr/Resume-Matcher.git
```

进入项目目录：

```bash
cd Resume-Matcher
```


---

# 2. 配置 AI 模型

本项目通过环境变量配置 AI Provider。


进入后端目录：

```bash
cd apps/backend
```


复制环境配置文件：

Windows:

```bash
copy .env.example .env
```


Linux / macOS:

```bash
cp .env.example .env
```


打开：

```
apps/backend/.env
```


## DeepSeek 配置（推荐中国用户）

修改：

```env
LLM_PROVIDER=deepseek
LLM_MODEL=deepseek-chat
LLM_API_KEY=your_api_key
```


其中：

| 参数 | 说明 |
|---|---|
| LLM_PROVIDER | AI服务提供商 |
| LLM_MODEL | 使用的模型名称 |
| LLM_API_KEY | API访问密钥 |


DeepSeek API Key 获取：

1. 登录 DeepSeek 开放平台
2. 创建 API Key
3. 将 Key 填入 `.env` 文件


示例：

```env
LLM_PROVIDER=deepseek
LLM_MODEL=deepseek-chat
LLM_API_KEY=sk-xxxxxxxxxxxxxxxx
```


---

# 3. 安装后端依赖


进入：

```bash
cd apps/backend
```


安装依赖：

```bash
uv sync
```


启动后端：

```bash
uv run app
```


启动成功后会显示：

```
Uvicorn running on http://0.0.0.0:8000
```


后端接口地址：

```
http://localhost:8000
```


API 文档：

```
http://localhost:8000/docs
```


---

# 4. 安装前端依赖


打开新的终端窗口。


进入前端目录：

```bash
cd apps/frontend
```


安装依赖：

```bash
npm install
```


启动：

```bash
npm run dev
```


启动成功：

```
Local:
http://localhost:3000
```


浏览器访问：

```
http://localhost:3000
```
---

# 日常启动流程总结


每次打开项目：

终端 1：

```bash
cd Resume-Matcher/apps/backend

uv run app
```


终端 2：

```bash
cd Resume-Matcher/apps/frontend

npm run dev
```


然后访问：

```
http://localhost:3000
```

停止运行：

```bash
Ctrl + C
```

---

# 常见问题


## 1. API Key 错误


错误：

```
401 Unauthorized
```


解决：

检查：

```env
LLM_API_KEY
```


是否填写正确。


---

## 2. 模型不存在


错误：

```
model not found
```


DeepSeek 推荐配置：

```env
LLM_PROVIDER=deepseek
LLM_MODEL=deepseek-chat
```


不要填写：

```
deepseek-v3
```

等不存在的模型名称。


---

## 3. 后端端口占用


错误：

```
Port 8000 already in use
```


解决：

关闭已有服务：

```
stop.cmd
```


或者手动结束 Python 进程：

Windows:

```bash
taskkill /f /im python.exe
```


---

## 4. 前端安装速度慢


可以切换 npm 镜像：

```bash
npm config set registry https://registry.npmmirror.com
```


重新安装：

```bash
npm install
```


---
