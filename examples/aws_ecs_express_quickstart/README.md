# AWS ECS Express quickstart

Runs a Dart HTTP server on [Amazon ECS Express Mode](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/express-service-overview.html): you hand ECS a container image and two roles, and it provisions the Fargate service, an HTTPS Application Load Balancer, security groups, and auto scaling.

- `AwsEcrRepository` stores the server image (scanned on push), and `AwsEcrLifecyclePolicy` keeps only the last ten images.
- Two `AwsIamRole`s, each trusted through a `DataAwsIamPolicyDocument`, with one AWS managed policy attached by `AwsIamRolePolicyAttachment`: the execution role (`AmazonECSTaskExecutionRolePolicy`) pulls the image and writes logs, and the infrastructure role (`AmazonECSInfrastructureRoleforExpressGatewayServices`) lets ECS manage the load balancer and scaling.
- `AwsEcsCluster` and `AwsCloudwatchLogGroup` (14-day retention) hold the service and its logs.
- `AwsEcsExpressGatewayService` runs the image on port 8080 with 0.25 vCPU and 512 MiB, health-checks `/`, and depends on both policy attachments, so `terraform destroy` detaches the policies only after the service has drained.

The server is `bin/server.dart`, a `dart:io` server that answers every path with a greeting. The `Dockerfile` AOT-compiles it onto an empty image. App Runner stopped accepting new customers on 2026-04-30, which is why this example uses ECS Express Mode.

## Before you apply

**The service bills by the hour** while it exists: Fargate tasks, the Application Load Balancer, and CloudWatch Logs. Run `terraform destroy` when you are done.

Apply needs the image in ECR, which synth does not build. Create the repository first, push the image, then apply the rest:

```bash
cd tf-out
terraform init
terraform apply -target=aws_ecr_repository.server
REPO=$(terraform state show -no-color aws_ecr_repository.server | awk -F'"' '/repository_url/ {print $2}')
aws ecr get-login-password | docker login --username AWS --password-stdin "${REPO%%/*}"
docker build --platform linux/amd64 -t "$REPO:latest" ..
docker push "$REPO:latest"
terraform apply
```

Rebuild and push the image for every server change. To roll out a new tag, synth with `IMAGE_TAG=<tag>` and apply again.

The service has no `network_configuration`, so Express Mode places it in the region's **default VPC**; the account needs one. Your credentials must be able to manage ECR, ECS, IAM roles, and CloudWatch Logs, and to pass both roles to ECS (`iam:PassRole`). The load balancer endpoint is public.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- Docker, to build and push the image
- AWS credentials through the SDK chain (`AWS_PROFILE`, `AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY`, or an instance role); none are needed for synth

## Usage

```bash
dart pub get
AWS_REGION=us-east-1 dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

`AWS_REGION` defaults to `us-east-1` and `IMAGE_TAG` to `latest`. No credentials appear in `tf-out/main.tf.json`: `AwsProvider` has no `access_key`, `secret_key`, or `token` parameter.

After `terraform apply`, read the endpoint from `terraform state show aws_ecs_express_gateway_service.server` (`ingress_paths`) and `curl` it. To try the server locally first, run `dart run bin/server.dart` and open `http://localhost:8080`.
