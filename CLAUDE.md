# CLAUDE.md

本文件为 Claude Code 在此仓库中工作时提供指引。

## 环境说明

- **操作系统**：Windows 11，包管理器使用 Scoop
- **Java**：21（通过 Scoop 安装）
- **构建工具**：Maven（通过 Scoop 安装，使用项目内 `mvnw` wrapper）
- **服务器**：Tomcat（通过 Scoop 安装，部署 WAR 包）

## 构建与运行命令

```bash
# 打包 WAR
./mvnw package

# 运行所有测试
./mvnw test

# 运行单个测试类
./mvnw test -Dtest=类名

# 检查代码格式
./mvnw spotless:check

# 自动修复代码格式
./mvnw spotless:apply
```

将生成的 `target/demo-1.0-SNAPSHOT.war` 部署到 Scoop 安装的 Tomcat（Jakarta EE 11 / Tomcat 11+）的 `webapps/` 目录下。

## 自动化行为

每次 Claude 修改或新建 `.java` 文件后，会自动执行：
1. **格式化**：运行 `mvn spotless:apply` 格式化 Java 代码（PostToolUse hook）
2. **提交推送**：Claude 完成响应后自动 `git add -A && git commit && git push`（Stop hook），便于快速回滚和测试

## 项目架构

这是一个基于 Jakarta EE 11 的 Web 应用（WAR 包），使用 Java 21 + Maven 构建，后续可能扩展其他模块。

- **Servlet**：使用 `@WebServlet` 注解，位于 `src/main/java/org/example/demo/`，由 Servlet 容器自动注册（无需 `web.xml`）
- **JSP 视图**：位于 `src/main/webapp/`，根路径 `index.jsp` 为默认首页
- **JPA**：`persistence.xml` 声明了 `default` 持久化单元（暂为空，按需添加数据源和实体类）
- **CDI**：通过 `src/main/resources/META-INF/beans.xml` 启用

## 代码风格

Java 代码使用 **Google Java Format**（GOOGLE 风格），由 Spotless Maven 插件强制执行。构建时会自动检查格式，Claude 写完代码后也会自动格式化。
