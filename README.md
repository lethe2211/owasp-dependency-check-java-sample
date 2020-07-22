# My template to start Java development

## How to run the app

```bash
./gradlew run
```

## How to build and run the app

```bash
./gradlew build

java -jar build/libs/java-gradle-template-1.0-SNAPSHOT.jar
```

## How to build and run a Docker image

```bash
docker build . -t java-gradle-template:v1.0.0

docker run -t java-gradle-template:v1.0.0
```
