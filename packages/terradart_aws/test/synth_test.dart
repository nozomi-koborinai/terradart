import 'dart:io';

import 'package:terradart_aws/data.dart';
import 'package:terradart_aws/iam.dart';
import 'package:terradart_aws/lambda.dart';
import 'package:terradart_aws/provider.dart';
import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

/// Provider arguments that carry credentials. The AWS provider schema does
/// not mark them `sensitive`, so nothing structural keeps them out of
/// [AwsProvider]; this list does.
const _credentialArgs = {
  'access_key',
  'secret_key',
  'token',
  'assume_role_with_web_identity',
  'web_identity_token',
};

const _everySetting = AwsProvider(
  region: 'eu-west-1',
  profile: 'deploy',
  allowedAccountIds: ['111111111111'],
  forbiddenAccountIds: ['222222222222'],
  assumeRole: [
    AwsAssumeRole(
      roleArn: 'arn:aws:iam::111111111111:role/deploy',
      sessionName: 'terradart',
      externalId: 'ext-1',
      duration: '1h',
      policy: '{}',
      policyArns: ['arn:aws:iam::aws:policy/ReadOnlyAccess'],
      sourceIdentity: 'ci',
      tags: {'team': 'platform'},
      transitiveTagKeys: ['team'],
    ),
  ],
  defaultTags: {'env': 'prod', 'owner': 'platform'},
  ignoreTags: AwsIgnoreTags(keys: ['LastScanned'], keyPrefixes: ['kube:']),
  endpoints: {'s3': 'http://localhost:4566'},
  sharedConfigFiles: ['/etc/aws/config'],
  sharedCredentialsFiles: ['/etc/aws/credentials'],
  skipCredentialsValidation: true,
  skipMetadataApiCheck: true,
  skipRegionValidation: true,
  skipRequestingAccountId: true,
  retryMode: 'adaptive',
  maxRetries: 5,
  useFipsEndpoint: false,
  useDualstackEndpoint: true,
);

final class _TestStack extends Stack {
  _TestStack() : super(providers: [_everySetting]) {
    final trust = DataAwsIamPolicyDocument(
      localName: 'trust',
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
      localName: 'fn',
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

Map<String, dynamic> _providerBlock() =>
    (_TestStack().synth().tfJson['provider'] as Map<String, dynamic>)['aws']
        as Map<String, dynamic>;

Iterable<String> _keysDeep(Object? value) sync* {
  if (value is Map) {
    for (final e in value.entries) {
      yield e.key as String;
      yield* _keysDeep(e.value);
    }
  } else if (value is List) {
    for (final v in value) {
      yield* _keysDeep(v);
    }
  }
}

void main() {
  test('synths the aws provider with the exact 6.66.0 pin', () {
    final json = _TestStack().synth().tfJson;
    final required =
        ((json['terraform'] as Map<String, dynamic>)['required_providers']
            as Map<String, dynamic>)['aws'] as Map<String, dynamic>;
    expect(required['source'], 'hashicorp/aws');
    expect(required['version'], '6.66.0');
  });

  test('credentials cannot appear in synth output by construction', () {
    final keys = _keysDeep(_TestStack().synth().tfJson).toSet();
    expect(keys.intersection(_credentialArgs), isEmpty);
    // A setting only reaches synth through a quoted key in configArgs, so a
    // credential key literal in the source is the regression to catch even
    // when _everySetting does not set the new parameter.
    final source = File('lib/src/aws_provider.dart').readAsStringSync();
    for (final key in _credentialArgs) {
      expect(source, isNot(contains("'$key'")), reason: key);
    }
  });

  test('nested provider settings synth as Terraform blocks', () {
    expect(_providerBlock(), {
      'region': 'eu-west-1',
      'profile': 'deploy',
      'allowed_account_ids': ['111111111111'],
      'forbidden_account_ids': ['222222222222'],
      'assume_role': [
        {
          'role_arn': 'arn:aws:iam::111111111111:role/deploy',
          'session_name': 'terradart',
          'external_id': 'ext-1',
          'duration': '1h',
          'policy': '{}',
          'policy_arns': ['arn:aws:iam::aws:policy/ReadOnlyAccess'],
          'source_identity': 'ci',
          'tags': {'team': 'platform'},
          'transitive_tag_keys': ['team'],
        },
      ],
      'default_tags': [
        {
          'tags': {'env': 'prod', 'owner': 'platform'},
        },
      ],
      'ignore_tags': [
        {
          'keys': ['LastScanned'],
          'key_prefixes': ['kube:'],
        },
      ],
      'endpoints': [
        {'s3': 'http://localhost:4566'},
      ],
      'shared_config_files': ['/etc/aws/config'],
      'shared_credentials_files': ['/etc/aws/credentials'],
      'skip_credentials_validation': true,
      'skip_metadata_api_check': true,
      'skip_region_validation': true,
      'skip_requesting_account_id': true,
      'retry_mode': 'adaptive',
      'max_retries': 5,
      'use_fips_endpoint': false,
      'use_dualstack_endpoint': true,
    });
  });

  test('wires the trust policy and the role ARN by reference', () {
    final json = _TestStack().synth().tfJson;
    final resources = json['resource'] as Map<String, dynamic>;
    final role = (resources['aws_iam_role'] as Map<String, dynamic>)['fn']
        as Map<String, dynamic>;
    expect(
      role['assume_role_policy'],
      r'${data.aws_iam_policy_document.trust.json}',
    );
    final fn = (resources['aws_lambda_function']
        as Map<String, dynamic>)['hello'] as Map<String, dynamic>;
    expect(fn['role'], r'${aws_iam_role.fn.arn}');
    expect(fn.containsKey('tags_all'), isFalse);
    expect(fn.containsKey('provider'), isFalse);
  });
}
