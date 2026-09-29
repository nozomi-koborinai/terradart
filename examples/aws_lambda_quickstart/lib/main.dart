/// AWS Lambda quickstart -- the smallest terradart_aws example.
///
/// Defines an `AwsLambdaStack`: a Dart AOT binary (`bin/bootstrap.dart`)
/// on the `provided.al2023` custom runtime, reachable through a public
/// function URL. The execution role's trust policy is a typed
/// `DataAwsIamPolicyDocument` limited to this account via
/// `DataAwsCallerIdentity`, logs go to a log group with a 14-day
/// retention, and every resource carries the provider's `defaultTags`.
///
/// Synth needs no credentials and none appear in `tf-out/`. Apply needs
/// the `bootstrap` zip built first (README, "Before you apply").
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'dart:io';

import 'package:terradart_aws/cloudwatch.dart';
import 'package:terradart_aws/data.dart';
import 'package:terradart_aws/iam.dart';
import 'package:terradart_aws/lambda.dart';
import 'package:terradart_aws/provider.dart';
import 'package:terradart_core/terradart_core.dart';

const _functionName = 'terradart-hello';

/// Lambda demo stack: role, log group, function, and function URL.
final class AwsLambdaStack extends Stack {
  AwsLambdaStack()
    : super(
        providers: [
          AwsProvider(
            region: Platform.environment['AWS_REGION'] ?? 'us-east-1',
            defaultTags: const {'app': 'terradart-lambda-quickstart'},
          ),
        ],
      ) {
    final account = DataAwsCallerIdentity(localName: 'current');
    addData(account);

    final trust = DataAwsIamPolicyDocument(
      localName: 'lambda_trust',
      statement: [
        DataIamPolicyDocumentStatement(
          effect: .literal('Allow'),
          actions: .literal(['sts:AssumeRole']),
          principals: [
            DataIamPolicyDocumentStatementPrincipals(
              type: .literal('Service'),
              identifiers: .literal(['lambda.amazonaws.com']),
            ),
          ],
          condition: [
            DataIamPolicyDocumentStatementCondition(
              test: .literal('StringEquals'),
              variable: .literal('aws:SourceAccount'),
              values: .literal([TfArg.ref(account.accountId)]),
            ),
          ],
        ),
      ],
    );
    addData(trust);

    final role = AwsIamRole(
      localName: 'hello',
      name: .name(.literal(_functionName)),
      assumeRolePolicy: .ref(trust.json),
    );
    add(role);
    add(
      AwsIamRolePolicyAttachment(
        localName: 'hello_logs',
        role: .ref(role.nameRef),
        policyArn: .literal(
          'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole',
        ),
      ),
    );

    final logs = AwsCloudwatchLogGroup(
      localName: 'hello',
      name: .name(.literal('/aws/lambda/$_functionName')),
      retentionInDays: .literal(14),
    );
    add(logs);

    final fn = AwsLambdaFunction(
      localName: 'hello',
      functionName: .literal(_functionName),
      role: .ref(role.arn),
      runtime: .literal(.providedAl2023),
      handler: .literal('bootstrap'),
      architectures: [.literal(.x8664)],
      code: .filename(.literal('../build/bootstrap.zip')),
      memorySize: .literal(128),
      timeout: .literal(10),
      loggingConfig: LambdaFunctionLoggingConfig(
        logFormat: .literal(.text),
        logGroup: .ref(logs.nameRef),
      ),
    );
    add(fn);
    add(
      AwsLambdaFunctionUrl(
        localName: 'hello',
        functionName: .ref(fn.arn),
        authorizationType: .literal(.none),
      ),
    );
  }
}
