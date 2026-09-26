import 'dart:convert';

import 'package:terradart_aws/terradart_aws.dart';
import 'package:terradart_core/terradart_core.dart';

/// Minimal example: a Lambda function running a Dart AOT binary on the
/// `provided.al2023` runtime, with its execution role, synthesized to
/// Terraform JSON. Credentials never appear in synth output; authenticate
/// at apply time via the AWS SDK credential chain (`AWS_PROFILE`,
/// `AWS_ACCESS_KEY_ID` / `AWS_SECRET_ACCESS_KEY`, or an instance role).
final class HelloStack extends Stack {
  HelloStack()
      : super(
          providers: [
            const AwsProvider(
              region: 'us-east-1',
              defaultTags: {'app': 'hello-dart'},
            ),
          ],
        ) {
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
      assumeRolePolicy: TfArg.ref(trust.json),
      name: TfArg.literal('hello-dart'),
    );
    add(role);
    add(
      AwsLambdaFunction(
        localName: 'hello',
        functionName: TfArg.literal('hello-dart'),
        role: TfArg.ref(role.arn),
        runtime: TfArg.literal('provided.al2023'),
        handler: TfArg.literal('bootstrap'),
        filename: TfArg.literal('build/bootstrap.zip'),
      ),
    );
  }
}

void main() {
  final result = HelloStack().synth();
  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}
