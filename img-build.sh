#!/bin/bash
docker build -t rabnmgr7/employee-care:latest .
docker build -t rabnmgr7/employee-care-db:latest ./sql/
docker push rabnmgr7/employee-care:latest
docker push rabnmgr7/employee-care-db:latest
