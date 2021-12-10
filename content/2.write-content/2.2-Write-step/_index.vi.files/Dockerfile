FROM openjdk:8
ENV MYSQL_HOST sharenote-db-test.cxm2fv9obino.ap-northeast-1.rds.amazonaws.com
ENV MYSQL_DATABASE NoteDB
ENV MYSQL_USER admin
ENV MYSQL_PASSWORD password123
	
ADD https://example-corp-storage.s3.amazonaws.com/deploy-artifact/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
	
EXPOSE 8080
ENTRYPOINT ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]
	