# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Run Commands

```bash
# Build WAR package
./mvnw package

# Run tests
./mvnw test

# Run a single test class
./mvnw test -Dtest=ClassName

# Check code formatting
./mvnw spotless:check

# Apply code formatting
./mvnw spotless:apply
```

Deploy the generated `target/demo-1.0-SNAPSHOT.war` to a Jakarta EE 11 compatible server (e.g., GlassFish, WildFly, Payara, or Tomcat 11+).

## Architecture

This is a Jakarta EE 11 web application (WAR) using Java 21, built with Maven.

- **Servlets**: Annotated with `@WebServlet` under `src/main/java/org/example/demo/`. The servlet container (not `web.xml`) handles registration.
- **JSP views**: Located in `src/main/webapp/`. The root `index.jsp` is the default landing page.
- **JPA**: `persistence.xml` declares a `default` persistence unit (currently empty — add data source and entity classes as needed).
- **CDI**: Enabled via `src/main/resources/META-INF/beans.xml`.

## Code Style

Java code is formatted with **Google Java Format** (GOOGLE style) enforced by the Spotless Maven plugin. Run `./mvnw spotless:apply` before committing Java changes. The check runs automatically during the build.
