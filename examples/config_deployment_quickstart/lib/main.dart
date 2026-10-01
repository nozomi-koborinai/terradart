/// Infrastructure Manager quickstart — Git-backed VPC blueprint deployment.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/config.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_time/terradart_time.dart';

final class ConfigDeploymentStack extends Stack {
  ConfigDeploymentStack({required String projectId})
    : super(
        providers: [
          GoogleProvider(project: projectId, region: 'us-central1'),
          const TimeProvider(),
        ],
      ) {
    final apiDeps = Apis.enable(
      this,
      barrels: [Barrels.config],
      propagationDelay: const Duration(seconds: 60),
    );

    final actuationSa = add(
      GoogleServiceAccount(
        'im_actuation',
        accountId: .literal('im-actuation-sa'),
        displayName: .literal('Infrastructure Manager actuation SA'),
        dependsOn: apiDeps,
      ),
    );

    final configAgent = add(
      GoogleProjectIamMember(
        'im_config_agent',
        project: .literal(projectId),
        role: .literal('roles/config.agent'),
        member: actuationSa.principal,
      ),
    );

    final networkAdmin = add(
      GoogleProjectIamMember(
        'im_network_admin',
        project: .literal(projectId),
        role: .literal('roles/compute.networkAdmin'),
        member: actuationSa.principal,
      ),
    );

    add(
      GoogleConfigDeployment(
        'vpc_blueprint',
        name: .literal('terradart-vpc-deployment'),
        location: .literal('us-central1'),
        serviceAccount: actuationSa.ref,
        forceDestroy: .literal(true),
        terraformBlueprint: ConfigDeploymentTerraformBlueprint(
          source: .gitSource(
            .new(
              repo: .literal(
                'https://github.com/terraform-google-modules/terraform-google-network',
              ),
              directory: .literal('modules/vpc'),
              ref: .literal('main'),
            ),
          ),
          inputValues: [
            .new(
              variableName: .literal('project_id'),
              inputValue: .literal(jsonEncode(projectId)),
            ),
            .new(
              variableName: .literal('network_name'),
              inputValue: .literal(jsonEncode('terradart-test-network')),
            ),
          ],
        ),
        dependsOn: [configAgent, networkAdmin],
      ),
    );
  }
}
