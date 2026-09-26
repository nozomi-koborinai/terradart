---
title: Dart apps on AWS
description: Run a Dart backend on Lambda or ECS Express Mode and a Flutter Web build on S3 + CloudFront, with terradart_aws.
---

[`terradart_aws`](https://github.com/nozomi-koborinai/terradart/tree/main/packages/terradart_aws) wraps the full `hashicorp/aws` `6.66.0` provider: **1725 resource factories + 683 data sources**, exact-pinned. This page covers the three shapes a Dart team usually needs on AWS: a Dart function on Lambda, a Dart server on ECS Express Mode, and a Flutter Web build on S3 behind CloudFront.

## Install

`terradart_aws` is not on pub.dev yet. Until its first release, depend on it from Git:

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.28.x
  terradart_aws:
    git:
      url: https://github.com/nozomi-koborinai/terradart
      path: packages/terradart_aws
```

After the first release the dependency becomes `terradart_aws: ^0.28.x`, like the other provider packages.

## Credentials

**Credentials never appear in synth output.** `AwsProvider` has no `access_key`, `secret_key` or `token` parameter, so there is nothing secret to write into `tf-out/`. `terraform plan` and `apply` authenticate through the AWS SDK credential chain:

- `AWS_PROFILE` with your shared config, including IAM Identity Center (SSO) profiles after `aws sso login`
- `AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY` / `AWS_SESSION_TOKEN`
- an instance role through IMDS, or an ECS task role, when Terraform runs on AWS

Synth needs no credentials at all. `assumeRole`, `defaultTags`, `ignoreTags` and `endpoints` are typed settings on `AwsProvider`.

## A Dart function on Lambda

Lambda has no Dart runtime, but its `provided.al2023` custom runtime runs any Linux binary named `bootstrap`. `dart compile exe` produces one:

```dart
import 'package:terradart_aws/cloudwatch.dart';
import 'package:terradart_aws/data.dart';
import 'package:terradart_aws/iam.dart';
import 'package:terradart_aws/lambda.dart';
import 'package:terradart_aws/provider.dart';
import 'package:terradart_core/terradart_core.dart';

final class HelloLambdaStack extends Stack {
  HelloLambdaStack()
      : super(providers: [
          const AwsProvider(
            region: 'us-east-1',
            defaultTags: {'app': 'hello-dart'},
          ),
        ]) {
    final trust = DataAwsIamPolicyDocument(
      localName: 'lambda_trust',
      statement: [
        DataIamPolicyDocumentStatement(
          actions: TfArg.literal(['sts:AssumeRole']),
          principals: [
            DataIamPolicyDocumentStatementPrincipals(
              type: TfArg.literal('Service'),
              identifiers: TfArg.literal(['lambda.amazonaws.com']),
            ),
          ],
        ),
      ],
    );
    addData(trust);

    final role = AwsIamRole(
      localName: 'hello',
      name: TfArg.literal('hello-dart'),
      assumeRolePolicy: TfArg.ref(trust.json),
    );
    add(role);
    add(AwsIamRolePolicyAttachment(
      localName: 'hello_logs',
      role: TfArg.ref(role.nameRef),
      policyArn: TfArg.literal(
        'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole',
      ),
    ));

    final logs = AwsCloudwatchLogGroup(
      localName: 'hello',
      name: TfArg.literal('/aws/lambda/hello-dart'),
      retentionInDays: TfArg.literal(14),
    );
    add(logs);

    final fn = AwsLambdaFunction(
      localName: 'hello',
      functionName: TfArg.literal('hello-dart'),
      role: TfArg.ref(role.arn),
      runtime: TfArg.literal('provided.al2023'),
      handler: TfArg.literal('bootstrap'),
      filename: TfArg.literal('../build/bootstrap.zip'),
      loggingConfig: LambdaFunctionLoggingConfig(
        logFormat: TfArg.literal('Text'),
        logGroup: TfArg.ref(logs.nameRef),
      ),
    );
    add(fn);
    add(AwsLambdaFunctionUrl(
      localName: 'hello',
      functionName: TfArg.ref(fn.arn),
      authorizationType: TfArg.literal('NONE'),
    ));
  }
}
```

Build the zip before `terraform apply`. Synth does not build it, and the `--target-os` / `--target-arch` flags cross-compile from macOS or Windows (Dart 3.8 or later):

```bash
mkdir -p build
dart compile exe bin/bootstrap.dart -o build/bootstrap \
  --target-os linux --target-arch x64
(cd build && zip bootstrap.zip bootstrap)
```

The runnable version, including a minimal `bin/bootstrap.dart` that long-polls the Lambda Runtime API, is [`examples/aws_lambda_quickstart`](https://github.com/nozomi-koborinai/terradart/tree/main/examples/aws_lambda_quickstart).

## A Dart server on ECS Express Mode

For a long-running `dart:io` or shelf server, use ECS Express Mode. App Runner stopped accepting new customers on 2026-04-30. An `AwsEcsExpressGatewayService` takes one container image and provisions the load balancer, target group, security groups and auto scaling itself, using an infrastructure role:

```dart
import 'package:terradart_aws/data.dart';
import 'package:terradart_aws/ecs.dart';
import 'package:terradart_aws/iam.dart';
import 'package:terradart_aws/provider.dart';
import 'package:terradart_core/terradart_core.dart';

final class DartServerStack extends Stack {
  DartServerStack({required String image})
      : super(providers: [const AwsProvider(region: 'us-east-1')]) {
    AwsIamRole roleFor(String name, String service, String policyArn) {
      final trust = DataAwsIamPolicyDocument(
        localName: '${name}_trust',
        statement: [
          DataIamPolicyDocumentStatement(
            actions: TfArg.literal(['sts:AssumeRole']),
            principals: [
              DataIamPolicyDocumentStatementPrincipals(
                type: TfArg.literal('Service'),
                identifiers: TfArg.literal([service]),
              ),
            ],
          ),
        ],
      );
      addData(trust);
      final role = AwsIamRole(
        localName: name,
        name: TfArg.literal('dart-server-$name'),
        assumeRolePolicy: TfArg.ref(trust.json),
      );
      add(role);
      add(AwsIamRolePolicyAttachment(
        localName: name,
        role: TfArg.ref(role.nameRef),
        policyArn: TfArg.literal(policyArn),
      ));
      return role;
    }

    final execution = roleFor(
      'execution',
      'ecs-tasks.amazonaws.com',
      'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy',
    );
    final infrastructure = roleFor(
      'infrastructure',
      'ecs.amazonaws.com',
      'arn:aws:iam::aws:policy/service-role/'
          'AmazonECSInfrastructureRoleforExpressGatewayServices',
    );

    final cluster = AwsEcsCluster(
      localName: 'server',
      name: TfArg.literal('dart-server'),
    );
    add(cluster);

    add(AwsEcsExpressGatewayService(
      localName: 'server',
      serviceName: TfArg.literal('dart-server'),
      cluster: TfArg.ref(cluster.nameRef),
      executionRoleArn: TfArg.ref(execution.arn),
      infrastructureRoleArn: TfArg.ref(infrastructure.arn),
      cpu: TfArg.literal('256'),
      memory: TfArg.literal('512'),
      healthCheckPath: TfArg.literal('/'),
      primaryContainer: [
        EcsExpressGatewayServicePrimaryContainer(
          image: TfArg.literal(image),
          containerPort: TfArg.literal(8080),
        ),
      ],
    ));
  }
}
```

The image must exist before `terraform apply`. A two-stage Dockerfile that runs `dart compile exe` and copies the binary onto `scratch` keeps it small. The service bills by the hour while it runs, and without network settings it uses the account's default VPC. After apply, the service's public endpoint is in its `ingress_paths` attribute.

The runnable version, with an ECR repository, a log group, the `dart:io` server and its `Dockerfile`, is [`examples/aws_ecs_express_quickstart`](https://github.com/nozomi-koborinai/terradart/tree/main/examples/aws_ecs_express_quickstart). Its README lists what apply needs and what it bills.

## A Flutter Web build on S3 + CloudFront

`flutter build web` produces static files. Serve them from a private S3 bucket that only CloudFront can read, through an origin access control and a bucket policy scoped to the distribution:

```dart
import 'package:terradart_aws/cloudfront.dart';
import 'package:terradart_aws/data.dart';
import 'package:terradart_aws/provider.dart';
import 'package:terradart_aws/s3.dart';
import 'package:terradart_core/terradart_core.dart';

final class FlutterWebStack extends Stack {
  FlutterWebStack()
      : super(providers: [const AwsProvider(region: 'us-east-1')]) {
    final bucket = AwsS3Bucket(
      localName: 'site',
      bucketPrefix: TfArg.literal('flutter-web-'),
    );
    add(bucket);
    add(AwsS3BucketPublicAccessBlock(
      localName: 'site',
      bucket: TfArg.ref(bucket.id),
      blockPublicAcls: TfArg.literal(true),
      blockPublicPolicy: TfArg.literal(true),
      ignorePublicAcls: TfArg.literal(true),
      restrictPublicBuckets: TfArg.literal(true),
    ));

    final oac = AwsCloudfrontOriginAccessControl(
      localName: 'site',
      name: TfArg.literal('flutter-web'),
      originAccessControlOriginType: TfArg.literal('s3'),
      signingBehavior: TfArg.literal('always'),
      signingProtocol: TfArg.literal('sigv4'),
    );
    add(oac);

    final cachePolicy = DataAwsCloudfrontCachePolicy(
      localName: 'caching_optimized',
      name: TfArg.literal('Managed-CachingOptimized'),
    );
    addData(cachePolicy);

    final distribution = AwsCloudfrontDistribution(
      localName: 'site',
      enabled: TfArg.literal(true),
      defaultRootObject: TfArg.literal('index.html'),
      origin: [
        CloudfrontDistributionOrigin(
          originId: TfArg.literal('site'),
          domainName: TfArg.ref(bucket.bucketRegionalDomainName),
          originAccessControlId: TfArg.ref(oac.id),
        ),
      ],
      defaultCacheBehavior: CloudfrontDistributionDefaultCacheBehavior(
        targetOriginId: TfArg.literal('site'),
        viewerProtocolPolicy: TfArg.literal('redirect-to-https'),
        allowedMethods: TfArg.literal(['GET', 'HEAD']),
        cachedMethods: TfArg.literal(['GET', 'HEAD']),
        cachePolicyId: TfArg.ref(cachePolicy.id),
      ),
      // Flutter Web routes are client-side: serve index.html for unknown paths.
      customErrorResponse: [
        for (final code in [403, 404])
          CloudfrontDistributionCustomErrorResponse(
            errorCode: TfArg.literal(code),
            responseCode: TfArg.literal(200),
            responsePagePath: TfArg.literal('/index.html'),
          ),
      ],
      restrictions: CloudfrontDistributionRestrictions(
        geoRestriction: CloudfrontDistributionRestrictionsGeoRestriction(
          restrictionType: TfArg.literal('none'),
        ),
      ),
      viewerCertificate: CloudfrontDistributionViewerCertificate(
        cloudfrontDefaultCertificate: TfArg.literal(true),
      ),
    );
    add(distribution);

    final readFromCloudFront = DataAwsIamPolicyDocument(
      localName: 'site_bucket',
      statement: [
        DataIamPolicyDocumentStatement(
          actions: TfArg.literal(['s3:GetObject']),
          resources: TfArg.literal(['${bucket.arn.interpolation}/*']),
          principals: [
            DataIamPolicyDocumentStatementPrincipals(
              type: TfArg.literal('Service'),
              identifiers: TfArg.literal(['cloudfront.amazonaws.com']),
            ),
          ],
          condition: [
            DataIamPolicyDocumentStatementCondition(
              test: TfArg.literal('StringEquals'),
              variable: TfArg.literal('AWS:SourceArn'),
              values: TfArg.literal([TfArg.ref(distribution.arn)]),
            ),
          ],
        ),
      ],
    );
    addData(readFromCloudFront);
    add(AwsS3BucketPolicy(
      localName: 'site',
      bucket: TfArg.ref(bucket.id),
      policy: TfArg.ref(readFromCloudFront.json),
    ));
  }
}
```

This serves the app on the distribution's `*.cloudfront.net` domain. For a custom domain, add an `AwsAcmCertificate` in `us-east-1` (CloudFront only accepts certificates from that region), validate it through an `AwsRoute53Record`, and point `viewerCertificate.acmCertificateArn` and `aliases` at it.

After `terraform apply`, upload the build and invalidate the cache:

```bash
flutter build web
aws s3 sync build/web s3://<bucket> --delete
aws cloudfront create-invalidation --distribution-id <id> --paths '/*'
```

The runnable version, with the custom domain, ACM certificate and Route 53 aliases wired in, is [`examples/aws_static_site_quickstart`](https://github.com/nozomi-koborinai/terradart/tree/main/examples/aws_static_site_quickstart). Its README lists the hosted zone apply needs.

## Synth and apply

Each Stack synths like any other TerraDart Stack:

```dart
// bin/infra.dart
Future<void> main() async {
  await HelloLambdaStack().writeTo('tf-out');
}
```

```bash
dart run bin/infra.dart
cd tf-out
terraform init
AWS_PROFILE=my-profile terraform plan
```

The rest of the catalog sits on the same per-service barrels, such as `package:terradart_aws/ec2.dart`, `rds.dart`, `dynamodb.dart` and `sqs.dart`. Every factory is exercised by [`examples/aws_leftover_quickstart`](https://github.com/nozomi-koborinai/terradart/tree/main/examples/aws_leftover_quickstart), a synth and `terraform validate` coverage stack that is never applied.

## Next steps

- [Getting Started](/docs/getting-started/) for Stacks, synth, and the AppExport boundary
- [Architecture](/docs/architecture/#provider-integration) for how provider packages are generated
- [`terradart_aws` README](https://github.com/nozomi-koborinai/terradart/tree/main/packages/terradart_aws) for the typed nested helpers on the most deeply nested resources
- [Examples](https://github.com/nozomi-koborinai/terradart/tree/main/examples) for runnable stacks
