/// Infrastructure Manager quickstart — Git-backed VPC blueprint deployment.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/config.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/time.dart';

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
        localName: 'im_actuation',
        accountId: TfArg.literal('im-actuation-sa'),
        displayName: TfArg.literal('Infrastructure Manager actuation SA'),
        dependsOn: apiDeps,
      ),
    );

    final configAgent = add(
      GoogleProjectIamMember(
        localName: 'im_config_agent',
        project: TfArg.literal(projectId),
        role: TfArg.literal('roles/config.agent'),
        member: TfArg.ref(actuationSa.iamMember),
      ),
    );

    final networkAdmin = add(
      GoogleProjectIamMember(
        localName: 'im_network_admin',
        project: TfArg.literal(projectId),
        role: TfArg.literal('roles/compute.networkAdmin'),
        member: TfArg.ref(actuationSa.iamMember),
      ),
    );

    add(
      GoogleConfigDeployment(
        localName: 'vpc_blueprint',
        name: TfArg.literal('terradart-vpc-deployment'),
        location: TfArg.literal('us-central1'),
        serviceAccount: TfArg.ref(actuationSa.name),
        forceDestroy: TfArg.literal(true),
        terraformBlueprint: ConfigDeploymentTerraformBlueprint(
          source: ConfigDeploymentBlueprintFromGit(
            repo: TfArg.literal(
              'https://github.com/terraform-google-modules/terraform-google-network',
            ),
            directory: TfArg.literal('modules/vpc'),
            ref: TfArg.literal('main'),
          ),
          inputValues: [
            ConfigDeploymentInputValue(
              variableName: TfArg.literal('project_id'),
              inputValue: TfArg.literal(jsonEncode(projectId)),
            ),
            ConfigDeploymentInputValue(
              variableName: TfArg.literal('network_name'),
              inputValue: TfArg.literal(jsonEncode('terradart-test-network')),
            ),
          ],
        ),
        dependsOn: [
          ResourceDependency(configAgent),
          ResourceDependency(networkAdmin),
        ],
      ),
    );
  }
}
