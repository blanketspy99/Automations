#!/bin/bash
stack=$1
image=$2

#check for presence of stack
stack_count=$(docker stack ls | grep -w $stack | wc -l )

if [ $stack_count == 1 ]
then
#echo "$stack is present"

#extracting the services and update image"
docker service update --image=$image $(docker stack services $stack -q)
else
echo ""
fi

