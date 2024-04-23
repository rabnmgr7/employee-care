#!/bin/bash
docker build -t rabnmgr7/employee-care:latest -t rabnmgr7/employee-care:$BUILD_NUMBER .
docker build -t rabnmgr7/employee-care-db:latest -t rabnmgr7/employee-care-db:$BUILD_NUMBER ./sql/