FROM --platform=linux/amd64 python:3.10

# 设置工作目录
WORKDIR /app

# 复制当前目录的所有文件到工作目录
COPY . /app

# 安装依赖项
RUN pip install -r requirements.txt

# 暴露 Streamlit 默认的端口
EXPOSE 8501

# 设置环境变量
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

# 设置启动命令
CMD ["streamlit", "run", "Creator.py"]