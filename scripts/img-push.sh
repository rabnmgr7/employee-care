#!/bin/bash
docker push rabnmgr7/employee-care:latest
docker push rabnmgr7/employee-care:$BUILD_NUMBER
docker push rabnmgr7/employee-care-db:latest
docker push rabnmgr7/employee-care-db:$BUILD_NUMBER