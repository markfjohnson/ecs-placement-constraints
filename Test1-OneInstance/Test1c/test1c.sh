set -x
aws ecs create-service --cli-input-json file://ecs-service-spread-Group-Count0-P1.json
sleep 30
aws ecs create-service --cli-input-json file://ecs-service-spread-Group-Count0-P2.json