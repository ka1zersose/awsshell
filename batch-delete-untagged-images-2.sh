aws ecr batch-delete-image --repository-name scheduler --image-ids $(aws ecr list-images --repository-name scheduler --filter tagStatus=UNTAGGED --query 'imageIds[*]'| tr -d " \t\n\r")
