/// AWS serverless API quickstart.
///
/// Defines an `AwsServerlessApiStack`: a DynamoDB table, a Dart Lambda
/// (`bin/bootstrap.dart` on `provided.al2023`) allowed to read and write
/// only that table, and an API Gateway HTTP API that invokes it. The
/// function learns the table name from `outputEnvironment()`, and a client
/// reads the API URL and the table name back from the define file
/// `terradart apply` writes, through the generated
/// `AwsServerlessApiStackOutputs` reader.
///
/// Synth needs no credentials and none appear in `tf-out/`. Apply needs
/// the `bootstrap` zip built first (README, "Before you apply").
///
/// `terradart synth` writes `tf-out/`.
library;

import 'dart:io';

import 'package:terradart_aws/apigatewayv2.dart';
import 'package:terradart_aws/cloudwatch.dart';
import 'package:terradart_aws/data.dart';
import 'package:terradart_aws/dynamodb.dart';
import 'package:terradart_aws/iam.dart';
import 'package:terradart_aws/lambda.dart';
import 'package:terradart_aws/provider.dart';

const _name = 'terradart-items-api';
const _tableName = 'terradart-items';

/// Items API: table, execution role, function, and HTTP API.
final class AwsServerlessApiStack extends Stack {
  AwsServerlessApiStack()
    : super(
        providers: [
          AwsProvider(
            region: Platform.environment['AWS_REGION'] ?? 'us-east-1',
            defaultTags: const {'app': 'terradart-serverless-api-quickstart'},
          ),
        ],
        appExports: AppExports('lib/generated/serverless_api_stack.app.dart'),
      ) {
    final account = add(DataAwsCallerIdentity('current'));

    final trust = add(
      DataAwsIamPolicyDocument(
        'lambda_trust',
        statement: [
          DataIamPolicyDocumentStatement(
            effect: .literal('Allow'),
            actions: .literal(['sts:AssumeRole']),
            principals: [
              .new(
                type: .literal('Service'),
                identifiers: .literal(['lambda.amazonaws.com']),
              ),
            ],
            condition: [
              .new(
                test: .literal('StringEquals'),
                variable: .literal('aws:SourceAccount'),
                values: .literal([account.accountId.interpolation]),
              ),
            ],
          ),
        ],
      ),
    );

    final role = add(
      AwsIamRole(
        'api',
        name: .name(.literal(_name)),
        assumeRolePolicy: trust.json,
        // Destroy detaches a policy this stack did not attach itself.
        forceDetachPolicies: .literal(true),
      ),
    );

    final table = add(
      AwsDynamodbTable(
        'items',
        name: .literal(_tableName),
        billingMode: .payPerRequest,
        hashKey: .literal('id'),
        attribute: [DynamodbTableAttribute(name: .literal('id'), type: .s)],
        // A new table can take several minutes before it is ACTIVE.
        timeouts: const TfTimeouts(
          create: Duration(minutes: 10),
          update: Duration(minutes: 10),
          delete: Duration(minutes: 10),
        ),
      ),
    );

    final logs = add(
      AwsCloudwatchLogGroup(
        'api',
        name: .name(.literal('/aws/lambda/$_name')),
        retentionInDays: .literal(14),
      ),
    );

    final policy = add(
      DataAwsIamPolicyDocument(
        'api',
        statement: [
          DataIamPolicyDocumentStatement(
            sid: .literal('WriteFunctionLogs'),
            effect: .literal('Allow'),
            actions: .literal(['logs:CreateLogStream', 'logs:PutLogEvents']),
            resources: .literal([
              logs.arn.interpolation,
              '${logs.arn.interpolation}:*',
            ]),
          ),
          DataIamPolicyDocumentStatement(
            sid: .literal('ReadWriteItems'),
            effect: .literal('Allow'),
            actions: .literal([
              'dynamodb:GetItem',
              'dynamodb:PutItem',
              'dynamodb:DeleteItem',
            ]),
            resources: .literal([table.arn.interpolation]),
          ),
        ],
      ),
    );
    add(
      AwsIamRolePolicy(
        'api',
        name: .name(.literal(_name)),
        role: role.ref,
        policy: policy.json,
      ),
    );

    // The table name is known to Terraform before the function exists, so
    // the function can read it. The API URL cannot: the stage that
    // publishes it invokes this function.
    addOutput(
      'table_name',
      table.name,
      description: 'DynamoDB table the function reads and writes.',
    );

    final fn = add(
      AwsLambdaFunction(
        'api',
        functionName: .literal(_name),
        role: role.ref,
        runtime: .providedAl2023,
        handler: .literal('bootstrap'),
        architectures: [.x8664],
        code: .filename(.literal('../build/bootstrap.zip')),
        memorySize: .literal(128),
        timeout: .literal(10),
        environment: LambdaFunctionEnvironment(
          variables: outputEnvironment(only: ['table_name']).variables,
        ),
        loggingConfig: LambdaFunctionLoggingConfig(
          logFormat: .text,
          logGroup: logs.ref,
        ),
      ),
    );

    final api = add(
      AwsApigatewayv2Api(
        'items',
        name: .literal(_name),
        protocolType: .http,
        description: .literal(
          'Items API for the TerraDart serverless quickstart',
        ),
        corsConfiguration: Apigatewayv2ApiCorsConfiguration(
          allowHeaders: .literal(['content-type']),
          allowMethods: .literal(['GET', 'PUT', 'DELETE']),
          allowOrigins: .literal(['*']),
        ),
      ),
    );

    final integration = add(
      AwsApigatewayv2Integration(
        'items',
        apiId: api.id,
        integrationType: .awsProxy,
        integrationUri: fn.invokeArn,
        payloadFormatVersion: .v2p0,
      ),
    );

    final routes = [
      for (final method in ['GET', 'PUT', 'DELETE'])
        add(
          AwsApigatewayv2Route(
            method.toLowerCase(),
            apiId: api.id,
            routeKey: .literal('$method /items/{id}'),
            target: .literal('integrations/${integration.id.interpolation}'),
            authorizationType: .none,
          ),
        ),
    ];

    final stage = add(
      AwsApigatewayv2Stage(
        'default',
        apiId: api.id,
        name: .literal(r'$default'),
        autoDeploy: .literal(true),
        dependsOn: routes,
      ),
    );

    for (final method in ['GET', 'PUT', 'DELETE']) {
      add(
        AwsLambdaPermission(
          method.toLowerCase(),
          statementId: .statementId(.literal('apigw-${method.toLowerCase()}')),
          action: .literal('lambda:InvokeFunction'),
          functionName: fn.ref,
          principal: .literal('apigateway.amazonaws.com'),
          sourceArn: .literal(
            '${api.executionArn.interpolation}/'
            '${stage.name.interpolation}/$method/items/*',
          ),
        ),
      );
    }

    addOutput(
      'api_url',
      stage.invokeUrl,
      description: 'Invoke URL of the items HTTP API.',
    );
    addDartDefineOutput();
  }
}
