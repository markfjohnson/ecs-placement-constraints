set -x
aws ecs create-service --cli-input-json file://ecs-service-spread-Count0-P1.json
aws ecs create-service --cli-input-json file://ecs-service-spread-Count0-P2.json