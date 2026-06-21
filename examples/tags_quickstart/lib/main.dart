/// Resource Manager Tags quickstart -- an end-to-end terradart example.
///
/// Defines a `TagsStack` that provisions:
/// - a project-scoped tag key (`terradart-env`),
/// - a tag value (`production`) under that key,
/// - a tag binding attaching the value to the project itself,
/// - a `roles/resourcemanager.tagViewer` grant on the key and a
///   `roles/resourcemanager.tagUser` grant on the value, both for an in-stack
///   service account,
///
/// and exports the tag key's short name as a typed Dart constant via
/// `Stack.addExport`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/tags.dart';

/// Tags Stack: a project-scoped tag key + value, a binding on the project, and
/// tag-level IAM members.
final class TagsStack extends Stack {
  TagsStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final current = addData(GoogleProject(localName: 'current'));

    // Tag-level IAM members validate that the principal exists, so provision
    // the service account in-stack and bind against its `iamMember` ref
    // (a bare `serviceAccount:...@example.com` literal would fail apply).
    final tagger = add(
      GoogleServiceAccount(
        localName: 'tagger',
        accountId: TfArg.literal('terradart-tagger'),
        displayName: TfArg.literal('Resource Manager tag operator'),
      ),
    );

    // Project-scoped tag key. `parent` accepts `projects/{number_or_id}`; we
    // resolve the number from the `google_project` data source.
    final envKey = add(
      GoogleTagsTagKey(
        localName: 'env',
        shortName: TfArg.literal('terradart-env'),
        parent: TfArg.literal('projects/${current.number.interpolation}'),
        description: TfArg.literal('Deployment environment (terradart demo)'),
      ),
    );

    // A value under the key. `parent` is the key's resource id (`tagKeys/...`).
    final prodValue = add(
      GoogleTagsTagValue(
        localName: 'prod',
        shortName: TfArg.literal('production'),
        parent: TfArg.ref(envKey.id),
        description: TfArg.literal('Production environment'),
      ),
    );

    // Attach the value to the project itself. `parent` is the full resource
    // name; `tag_value` is the value's resource id (`tagValues/...`).
    add(
      GoogleTagsTagBinding(
        localName: 'project_env',
        parent: TfArg.literal(
          '//cloudresourcemanager.googleapis.com/projects/'
          '${current.number.interpolation}',
        ),
        tagValue: TfArg.ref(prodValue.id),
        dependsOn: [ResourceDependency(prodValue)],
      ),
    );

    // tagViewer is grantable at the tag-key resource level.
    add(
      GoogleTagsTagKeyIamMember(
        localName: 'env_viewer',
        tagKey: TfArg.ref(envKey.id),
        role: TfArg.literal('roles/resourcemanager.tagViewer'),
        member: TfArg.ref(tagger.iamMember),
        dependsOn: [
          ResourceDependency(envKey),
          ResourceDependency(tagger),
        ],
      ),
    );

    // tagUser is grantable at the tag-value resource level.
    add(
      GoogleTagsTagValueIamMember(
        localName: 'prod_user',
        tagValue: TfArg.ref(prodValue.id),
        role: TfArg.literal('roles/resourcemanager.tagUser'),
        member: TfArg.ref(tagger.iamMember),
        dependsOn: [
          ResourceDependency(prodValue),
          ResourceDependency(tagger),
        ],
      ),
    );

    // Literal tag-key short name -- emitted as a Dart constant at synth time.
    addExport('ENV_TAG_KEY_SHORT_NAME', StringExport('terradart-env'));

    // Full tag-key resource id (`tagKeys/...`) -- Terraform output only.
    addExport(
      'ENV_TAG_KEY_ID',
      ResourceIdExport(envKey.id, emitTerraformOutput: true),
    );

    setAppExportsOutputPath('lib/generated/tags_stack.app.dart');
  }
}
