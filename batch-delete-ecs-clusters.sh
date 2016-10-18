for name in $(aws --region us-east-1 ecs list-clusters --query "clusterArns[]" --output text); do
  aws --region us-east-1 ecs delete-cluster --cluster $name
  echo $name has been deleted
done
