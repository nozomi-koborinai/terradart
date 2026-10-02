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
/// `terradart synth` writes `tf-out/`; `terradart apply` prints the
/// service's `endpoint` output.
library;

import 'dart:convert';

import 'package:terradart_aws/cloudwatch.dart';
import 'package:terradart_aws/ecr.dart';
import 'package:terradart_aws/ecs.dart';
import 'package:terradart_aws/iam.dart';
import 'package:terradart_aws/provider.dart';

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
      'server',
      name: .literal(_name),
      imageTagMutability: .mutable,
      forceDelete: .literal(true),
      imageScanningConfiguration: EcrRepositoryImageScanningConfiguration(
        scanOnPush: .literal(true),
      ),
    );
    add(repo);
    add(
      AwsEcrLifecyclePolicy(
        'server',
        repository: repo.ref,
        policy: .literal(
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
      policyArn:
          'arn:aws:iam::aws:policy/service-role/'
          'AmazonECSTaskExecutionRolePolicy',
    );
    final infrastructure = _role(
      localName: 'infrastructure',
      name: '$_name-infrastructure',
      service: 'ecs.amazonaws.com',
      policyArn:
          'arn:aws:iam::aws:policy/service-role/'
          'AmazonECSInfrastructureRoleforExpressGatewayServices',
    );

    final cluster = AwsEcsCluster('server', name: .literal(_name));
    add(cluster);

    final logs = AwsCloudwatchLogGroup(
      'server',
      name: .name(.literal('/ecs/$_name')),
      retentionInDays: .literal(14),
    );
    add(logs);

    final service = add(
      AwsEcsExpressGatewayService(
        'server',
        serviceName: .literal(_name),
        cluster: cluster.ref,
        executionRoleArn: execution.role.ref,
        infrastructureRoleArn: infrastructure.role.ref,
        cpu: .literal('256'),
        memory: .literal('512'),
        healthCheckPath: .literal('/'),
        primaryContainer: [
          EcsExpressGatewayServicePrimaryContainer(
            image: TfArg.expression(
              '${repo.repositoryUrl.interpolation}:$imageTag',
            ),
            containerPort: .literal(_port),
            environment: [
              .new(name: .literal('PORT'), value: .literal('$_port')),
            ],
            awsLogsConfiguration: .literal([
              {'log_group': logs.name, 'log_stream_prefix': 'server'},
            ]),
          ),
        ],
        dependsOn: [execution.attachment, infrastructure.attachment],
      ),
    );

    addOutput(
      'endpoint',
      TfArg.expression<String>(
        '\${try(${service.tfAddress}.ingress_paths[0].endpoint, "")}',
      ),
      description: 'Public endpoint of the service load balancer.',
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
      '${localName}_trust',
      statement: [
        DataIamPolicyDocumentStatement(
          effect: .literal('Allow'),
          actions: .literal(['sts:AssumeRole']),
          principals: [
            .new(type: .literal('Service'), identifiers: .literal([service])),
          ],
        ),
      ],
    );
    add(trust);
    final role = AwsIamRole(
      localName,
      name: .name(.literal(name)),
      assumeRolePolicy: trust.json,
    );
    add(role);
    final attachment = AwsIamRolePolicyAttachment(
      localName,
      role: role.ref,
      policyArn: .literal(policyArn),
    );
    add(attachment);
    return (role: role, attachment: attachment);
  }
}
