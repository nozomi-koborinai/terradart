# AWS serverless API quickstart

A Dart HTTP API on AWS: Lambda (`provided.al2023`), API Gateway (HTTP API) and a DynamoDB table. The function and a small client both read the stack's outputs through the generated `AwsServerlessApiStackOutputs` reader.

- `AwsDynamodbTable` stores one item per id, on demand (`PAY_PER_REQUEST`).
- `DataAwsCallerIdentity` and `DataAwsIamPolicyDocument` build a trust policy limited to this account, and an inline policy that can write only this function's log streams and call `GetItem`, `PutItem` and `DeleteItem` on only this table.
- `AwsIamRole` and `AwsIamRolePolicy` attach that policy. There is no managed `AWSLambdaBasicExecutionRole`.
- `AwsLambdaFunction` runs `bin/bootstrap.dart`. Its environment comes from `outputEnvironment()`, so `TABLE_NAME` is the output `table_name` and the handler reads it with `AwsServerlessApiStackOutputs.fromEnvironment`. The function talks to the table through `aws_client`'s `DocumentClient`, which signs with the execution role's credentials.
- `AwsApigatewayv2Api`, `AwsApigatewayv2Integration`, `AwsApigatewayv2Route` and `AwsApigatewayv2Stage` publish `GET`, `PUT` and `DELETE` `/items/{id}`. `AwsLambdaPermission` lets this API's stage invoke the function, one statement per method.
- `addOutput('api_url', stage.invokeUrl)` and `addOutput('table_name', table.name)` are the values `bin/client.dart` reads back, and `addDartDefineOutput()` puts both in the define file `terradart apply` writes. The API URL is not a function environment variable: the stage that publishes it invokes the function, and that would be a dependency cycle.
- `AwsProvider.defaultTags` tags every resource with `app = terradart-serverless-api-quickstart`.

`bin/client.dart` prints the table name and calls the API. `bin/bootstrap.dart` is the function.

## Before you apply

Apply needs the function's code, which synth does not build. Build `build/bootstrap.zip` first, and rebuild it whenever the handler changes:

```bash
mkdir -p build
dart compile exe bin/bootstrap.dart -o build/bootstrap \
  --target-os linux --target-arch x64
(cd build && zip bootstrap.zip bootstrap)
```

The binary must be named `bootstrap` and built for Linux. The `--target-os` / `--target-arch` flags cross-compile from macOS or Windows (Dart 3.8 or later). For `arm64` (Graviton), build with `--target-arch arm64` and set `architectures` to `arm64` in `lib/main.dart`.

The stack sets no `source_code_hash`, so `terradart apply` does not notice a rebuilt zip at the same path. Run `terradart apply -- -replace=aws_lambda_function.api`, or add `sourceCodeHash: .expression(r'${filebase64sha256("../build/bootstrap.zip")}')` once the zip exists. That expression makes `terradart plan` fail while the zip is missing, which is why the example leaves it out.

You also need AWS credentials that can manage IAM roles, Lambda, API Gateway, DynamoDB and CloudWatch Logs. The routes are public (`authorization_type = NONE`); anyone with the URL can call them. Lambda, the HTTP API and the on-demand table bill per request.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- [`jq`](https://jqlang.org/), to read a value from the define file
- AWS credentials through the SDK chain (`AWS_PROFILE`, `AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY`, or an instance role); none are needed for synth

## Usage

```bash
dart pub get
export AWS_REGION=us-east-1
terradart plan
```

`AWS_REGION` defaults to `us-east-1`. No credentials appear in `tf-out/main.tf.json`: `AwsProvider` has no `access_key`, `secret_key`, or `token` parameter.

`terradart apply` writes the outputs to `.terradart/dart_defines.json`. Hand them to the client, which reads them through the same reader the function uses:

```bash
export API_URL="$(jq -r .API_URL .terradart/dart_defines.json)"
export TABLE_NAME="$(jq -r .TABLE_NAME .terradart/dart_defines.json)"
dart run bin/client.dart demo
```

That writes `{"note":"hello from Dart","id":"demo"}` and reads it back. `DELETE /items/demo` removes it.
