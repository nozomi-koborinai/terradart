# AWS Lambda quickstart

The smallest `terradart_aws` example: a Dart AOT binary running on the Lambda `provided.al2023` custom runtime, reachable through a public function URL.

- `DataAwsCallerIdentity` reads the account ID, so the trust policy needs no hard-coded account number.
- `DataAwsIamPolicyDocument` builds the trust policy from typed statements, limited to this account with an `aws:SourceAccount` condition.
- `AwsIamRole` and `AwsIamRolePolicyAttachment` give the function an execution role with `AWSLambdaBasicExecutionRole`.
- `AwsCloudwatchLogGroup` holds the function's logs with a 14-day retention.
- `AwsLambdaFunction` runs `bin/bootstrap.dart`, and `AwsLambdaFunctionUrl` exposes it without auth.
- `AwsProvider.defaultTags` tags every resource with `app = terradart-lambda-quickstart`.

The function itself is `bin/bootstrap.dart`, a minimal custom runtime that long-polls the Lambda Runtime API and answers every invocation with a plain-text greeting.

## Before you apply

Apply needs the function's code, which synth does not build. Build `build/bootstrap.zip` first, and rebuild it whenever `bin/bootstrap.dart` changes:

```bash
mkdir -p build
dart compile exe bin/bootstrap.dart -o build/bootstrap \
  --target-os linux --target-arch x64
(cd build && zip bootstrap.zip bootstrap)
```

The binary must be named `bootstrap` and built for Linux. The `--target-os` / `--target-arch` flags cross-compile from macOS or Windows (Dart 3.8 or later). For `arm64` (Graviton), build with `--target-arch arm64` and set `architectures` to `arm64` in `lib/main.dart`.

The stack sets no `source_code_hash`, so `terraform apply` does not notice a rebuilt zip at the same path. Pass `-replace=aws_lambda_function.hello`, or add `sourceCodeHash: TfArg.expression(r'${filebase64sha256("../build/bootstrap.zip")}')` once the zip exists. That expression makes `terraform validate` fail while the zip is missing, which is why the example leaves it out.

You also need AWS credentials that can manage IAM roles, Lambda, and CloudWatch Logs. The function URL is public (`authorization_type = NONE`); anyone with the URL can invoke it.

## Prerequisites

- Dart SDK >= 3.6 (>= 3.8 to cross-compile the bootstrap binary)
- Terraform CLI >= 1.11.0
- AWS credentials through the SDK chain (`AWS_PROFILE`, `AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY`, or an instance role); none are needed for synth

## Usage

```bash
dart pub get
AWS_REGION=us-east-1 dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

`AWS_REGION` defaults to `us-east-1`. No credentials appear in `tf-out/main.tf.json`: `AwsProvider` has no `access_key`, `secret_key`, or `token` parameter.

After `terraform apply`, read the endpoint with `terraform state show aws_lambda_function_url.hello` (`function_url`) and `curl` it.
