FROM mysql:5.7
EXPOSE 3306
ENV MYSQL_ROOT_PASSWORD=Rabin@123
ENV MYSQL_USER=rabin
ENV MYSQL_PASSWORD=Rabin@123
ENV MYSQL_DATABASE=employee_care
ADD dbscript.sql /docker-entrypoint-initdb.d
