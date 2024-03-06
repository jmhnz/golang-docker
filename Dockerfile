#基础镜像
FROM alpine:latest
#声明维护者
LABEL maintainer="jamesji"
#要执行的命令   这里是在docker容器中创建了一个新的目录
RUN mkdir "/app"
#外部传入参数
ARG TargetImage
RUN echo "TargetImage: ${TargetImage}"
#指定工作目录
WORKDIR "/app"
#暴露容器内的端口   这里的8081是go-gin启动时的服务端口,
#启动容器时需要指定docker容器对外的端口映射, 比如8082:8081, 外部访问8082端口,就可以映射到go-gin的8081端口
EXPOSE 8081/tcp

#ARG exeName
#将编译后的可执行文件 copy到工作目录中
COPY ${TargetImage} /app/targetImage

#ARG exeName
#ARG TargetImage
ENTRYPOINT ["./targetImage"]