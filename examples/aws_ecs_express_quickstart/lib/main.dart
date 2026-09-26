/// AWS ECS Express quickstart -- a Dart server on ECS Express Mode.
///
/// Defines an `AwsEcsExpressStack`: an ECR repository for the server image
/// (`bin/server.dart`, built by the `Dockerfile`) with a lifecycle policy
/// that keeps the last ten images, a cluster, a log group, and an
/// `AwsEcsExpressGatewayService`. Express Mode provisions the load
/// balancer, target group, security groups, and auto scaling itself, using
/// the infrastructure role; the execution role pulls the image and writes
/// the logs. The service depends on both policy attachments, so destroy
/// detaches them only after the service has drained.
///
/// Synth needs no credentials and none appear in `tf-out/`. Apply needs
/// the image pushed first, and the service bills by the hour (README,
/// "Before you apply").
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'dart:convert';

import 'package:terradart_aws/cloudwatch.dart';
import 'package:terradart_aws/data.dart';
import 'package:terradart_aws/ecr.dart';
import 'package:terradart_aws/ecs.dart';
import 'package:terradart_aws/iam.dart';
import 'package:terradart_aws/provider.dart';
import 'package:terradart_core/terradart_core.dart';

const _name = 'terradart-server';
const _port = 8080;

/// ECS Express stack: repository, roles, cluster, logs, and the service.
final class AwsEcsExpressStack extends Stack {
  AwsEcsExpressStack({required String region, required String imageTag})
      : super(
          providers: [
            AwsProvider(
              region: region,
              defaultTags: const {'app': 'terradart-ecs-express-quickstart'},
            ),
          ],
        ) {
    final repo = AwsEcrRepository(
      localName: 'server',
      name: TfArg.literal(_name),
      imageTagMutability: TfArg.literal('MUTABLE'),
      forceDelete: TfArg.literal(true),
      imageScanningConfiguration: EcrRepositoryImageScanningConfiguration(
        scanOnPush: TfArg.literal(true),
      ),
    );
    add(repo);
    add(
      AwsEcrLifecyclePolicy(
        localName: 'server',
        repository: TfArg.ref(repo.nameRef),
        policy: TfArg.literal(
          jsonEncode({
            'rules': [
              {
                'rulePriority': 1,
                'description': 'Keep the last 10 images',
                'selection': {
                  'tagStatus': 'any',
                  'countType': 'imageCountMoreThan',
                  'countNumber': 10,
                },
                'action': {'type': 'expire'},
              },
            ],
          }),
        ),
      ),
    );

    final execution = _role(
      localName: 'execution',
      name: '$_name-execution',
      service: 'ecs-tasks.amazonaws.com',
      policyArn: 'arn:aws:iam::aws:policy/service-role/'
          'AmazonECSTaskExecutionRolePolicy',
    );
    final infrastructure = _role(
      localName: 'infrastructure',
      name: '$_name-infrastructure',
      service: 'ecs.amazonaws.com',
      policyArn: 'arn:aws:iam::aws:policy/service-role/'
          'AmazonECSInfrastructureRoleforExpressGatewayServices',
    );

    final cluster = AwsEcsCluster(
      localName: 'server',
      name: TfArg.literal(_name),
    );
    add(cluster);

    final logs = AwsCloudwatchLogGroup(
      localName: 'server',
      name: TfArg.literal('/ecs/$_name'),
      retentionInDays: TfArg.literal(14),
    );
    add(logs);

    add(
      AwsEcsExpressGatewayService(
        localName: 'server',
        serviceName: TfArg.literal(_name),
        cluster: TfArg.ref(cluster.nameRef),
        executionRoleArn: TfArg.ref(execution.role.arn),
        infrastructureRoleArn: TfArg.ref(infrastructure.role.arn),
        cpu: TfArg.literal('256'),
        memory: TfArg.literal('512'),
        healthCheckPath: TfArg.literal('/'),
        primaryContainer: [
          EcsExpressGatewayServicePrimaryContainer(
            image: TfArg.expression(
              '${repo.repositoryUrl.interpolation}:$imageTag',
            ),
            containerPort: TfArg.literal(_port),
            environment: [
              EcsExpressGatewayServicePrimaryContainerEnvironment(
                name: TfArg.literal('PORT'),
                value: TfArg.literal('$_port'),
              ),
            ],
            awsLogsConfiguration: TfArg.literal([
              {
                'log_group': TfArg.ref(logs.nameRef),
                'log_stream_prefix': 'server',
              },
            ]),
          ),
        ],
        dependsOn: [
          ResourceDependency(execution.attachment),
          ResourceDependency(infrastructure.attachment),
        ],
      ),
    );
  }

  /// A role that [service] may assume, with one AWS managed policy.
  ({AwsIamRole role, AwsIamRolePolicyAttachment attachment}) _role({
    required String localName,
    required String name,
    required String service,
    required String policyArn,
  }) {
    final trust = DataAwsIamPolicyDocument(
      localName: '${localName}_trust',
      statement: [
        DataIamPolicyDocumentStatement(
          effect: TfArg.literal('Allow'),
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
      localName: localName,
      name: TfArg.literal(name),
      assumeRolePolicy: TfArg.ref(trust.json),
    );
    add(role);
    final attachment = AwsIamRolePolicyAttachment(
      localName: localName,
      role: TfArg.ref(role.nameRef),
      policyArn: TfArg.literal(policyArn),
    );
    add(attachment);
    return (role: role, attachment: attachment);
  }
}
