---
title: Dart apps on AWS
description: Run a Dart backend on Lambda or ECS Express Mode and a Flutter Web build on S3 + CloudFront, with terradart_aws.
---

[`terradart_aws`](https://github.com/nozomi-koborinai/terradart/tree/main/packages/terradart_aws) wraps the full `hashicorp/aws` provider — every resource and data source at its exact pin. This page covers the three shapes a Dart team usually needs on AWS: a Dart function on Lambda, a Dart server on ECS Express Mode, and a Flutter Web build on S3 behind CloudFront.

## Install

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.31.x
  terradart_aws: ^0.31.x
```

Check [pub.dev](https://pub.dev/packages/terradart_aws) for the latest patch, then run `dart pub get`.

## Credentials

**Credentials never appear in synth output.** `AwsProvider` has no `access_key`, `secret_key` or `token` parameter, so there is nothing secret to write into `tf-out/`. `terraform plan` and `apply` authenticate through the AWS SDK credential chain:

- `AWS_PROFILE` with your shared config, including IAM Identity Center (SSO) profiles after `aws sso login`
- `AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY` / `AWS_SESSION_TOKEN`
- an instance role through IMDS, or an ECS task role, when Terraform runs on AWS

Synth needs no credentials at all. `assumeRole`, `defaultTags`, `ignoreTags` and `endpoints` are typed settings on `AwsProvider`.

## A Dart function on Lambda

Lambda has no Dart runtime, but its `provided.al2023` custom runtime runs any Linux binary named `bootstrap`. `dart compile exe` produces one:

```dart
// lib/hello_lambda_stack.dart
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
      'lambda_trust',
      statement: [
        DataIamPolicyDocumentStatement(
          actions: .literal(['sts:AssumeRole']),
          principals: [
            .new(
              type: .literal('Service'),
              identifiers: .literal(['lambda.amazonaws.com']),
            ),
          ],
        ),
      ],
    );
    add(trust);

    final role = AwsIamRole(
      'hello',
      name: .name(.literal('hello-dart')),
      assumeRolePolicy: trust.json,
    );
    add(role);
    add(AwsIamRolePolicyAttachment(
      'hello_logs',
      role: role.ref,
      policyArn: .literal(
        'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole',
      ),
    ));

    final logs = AwsCloudwatchLogGroup(
      'hello',
      name: .name(.literal('/aws/lambda/hello-dart')),
      retentionInDays: .literal(14),
    );
    add(logs);

    final fn = AwsLambdaFunction(
      'hello',
      functionName: .literal('hello-dart'),
      role: role.ref,
      runtime: .providedAl2023,
      handler: .literal('bootstrap'),
      code: .filename(.literal('../build/bootstrap.zip')),
      loggingConfig: LambdaFunctionLoggingConfig(
        logFormat: .text,
        logGroup: logs.ref,
      ),
    );
    add(fn);
    add(AwsLambdaFunctionUrl(
      'hello',
      functionName: fn.ref,
      authorizationType: .none,
    ));
  }
}
```

`policyArn` takes an `AwsIamPolicy`: pass `policy.ref` for a policy the stack creates, or `.literal(...)` with the ARN of an AWS managed policy, as here.

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
        '${name}_trust',
        statement: [
          DataIamPolicyDocumentStatement(
            actions: .literal(['sts:AssumeRole']),
            principals: [
              .new(
                type: .literal('Service'),
                identifiers: .literal([service]),
              ),
            ],
          ),
        ],
      );
      add(trust);
      final role = AwsIamRole(
        name,
        name: .name(.literal('dart-server-$name')),
        assumeRolePolicy: trust.json,
      );
      add(role);
      add(AwsIamRolePolicyAttachment(
        name,
        role: role.ref,
        policyArn: .literal(policyArn),
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
      'server',
      name: .literal('dart-server'),
    );
    add(cluster);

    add(AwsEcsExpressGatewayService(
      'server',
      serviceName: .literal('dart-server'),
      cluster: cluster.ref,
      executionRoleArn: execution.ref,
      infrastructureRoleArn: infrastructure.ref,
      cpu: .literal('256'),
      memory: .literal('512'),
      healthCheckPath: .literal('/'),
      primaryContainer: [
        EcsExpressGatewayServicePrimaryContainer(
          image: .literal(image),
          containerPort: .literal(8080),
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
      'site',
      name: .bucketPrefix(.literal('flutter-web-')),
    );
    add(bucket);
    add(AwsS3BucketPublicAccessBlock(
      'site',
      bucket: bucket.ref,
      blockPublicAcls: .literal(true),
      blockPublicPolicy: .literal(true),
      ignorePublicAcls: .literal(true),
      restrictPublicBuckets: .literal(true),
    ));

    final oac = AwsCloudfrontOriginAccessControl(
      'site',
      name: .literal('flutter-web'),
      originAccessControlOriginType: .s3,
      signingBehavior: .always,
      signingProtocol: .sigv4,
    );
    add(oac);

    final cachePolicy = DataAwsCloudfrontCachePolicy(
      'caching_optimized',
      name: .literal('Managed-CachingOptimized'),
    );
    add(cachePolicy);

    final distribution = AwsCloudfrontDistribution(
      'site',
      enabled: .literal(true),
      defaultRootObject: .literal('index.html'),
      origin: [
        CloudfrontDistributionOrigin(
          originId: .literal('site'),
          domainName: bucket.bucketRegionalDomainName,
          originAccessControlId: oac.ref,
        ),
      ],
      defaultCacheBehavior: CloudfrontDistributionDefaultCacheBehavior(
        targetOriginId: .literal('site'),
        viewerProtocolPolicy: CloudfrontDistributionViewerProtocolPolicy.redirectToHttps,
        allowedMethods: .literal(['GET', 'HEAD']),
        cachedMethods: .literal(['GET', 'HEAD']),
        cachePolicyId: cachePolicy.ref,
      ),
      // Flutter Web routes are client-side: serve index.html for unknown paths.
      customErrorResponse: [
        for (final code in [403, 404])
          CloudfrontDistributionCustomErrorResponse(
            errorCode: .literal(code),
            responseCode: .literal(200),
            responsePagePath: .literal('/index.html'),
          ),
      ],
      restrictions: CloudfrontDistributionRestrictions(
        geoRestriction: .new(
          restrictionType: CloudfrontDistributionRestrictionType.none,
        ),
      ),
      viewerCertificate: CloudfrontDistributionViewerCertificate(
        cloudfrontDefaultCertificate: .literal(true),
      ),
    );
    add(distribution);

    final readFromCloudFront = DataAwsIamPolicyDocument(
      'site_bucket',
      statement: [
        DataIamPolicyDocumentStatement(
          actions: .literal(['s3:GetObject']),
          resources: .literal(['${bucket.arn.interpolation}/*']),
          principals: [
            .new(
              type: .literal('Service'),
              identifiers: .literal(['cloudfront.amazonaws.com']),
            ),
          ],
          condition: [
            .new(
              test: .literal('StringEquals'),
              variable: .literal('AWS:SourceArn'),
              values: .literal([distribution.arn.interpolation]),
            ),
          ],
        ),
      ],
    );
    add(readFromCloudFront);
    add(AwsS3BucketPolicy(
      'site',
      bucket: bucket.ref,
      policy: readFromCloudFront.json,
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
import 'package:my_app/hello_lambda_stack.dart';

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

- [Getting Started](/docs/getting-started/) for Stacks, synth, and the outputs / constants boundary
- [Architecture](/docs/architecture/#provider-integration) for how provider packages are generated
- [`terradart_aws` README](https://github.com/nozomi-koborinai/terradart/tree/main/packages/terradart_aws) for the typed nested helpers on the most deeply nested resources
- [Examples](https://github.com/nozomi-koborinai/terradart/tree/main/examples) for runnable stacks
- [AWS coverage](/docs/coverage/aws/) for every factory, its barrel and its example
