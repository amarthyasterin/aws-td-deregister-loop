#!/bin/bash -ex

TASKNAME="dev-TD"
START=1
END=387

for y in $(seq $START $END)
do
    aws ecs deregister-task-definition --task-definition $TASKNAME:$y --no-cli-pager
    sleep 5
    echo "The task $TASKNAME:$y has been deleted"
done
~               
