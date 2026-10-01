/// Resource Manager Tags quickstart -- an end-to-end terradart example.
///
/// Defines a `TagsStack` that provisions:
/// - a project-scoped tag key (`terradart-env`),
/// - a tag value (`production`) under that key,
/// - a tag binding attaching the value to the project itself,
/// - tag-key / tag-value IAM member + binding + policy for an in-stack
///   service account (serialized so destroy cannot race SetIamPolicy),
///
/// and exports the tag key's short name as a typed Dart constant via
/// `Stack.addConstant`. Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'dart:convert';

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/data.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/tags.dart';

String _iamPolicyDataJson({required String role, required String member}) {
  return jsonEncode({
    'bindings': [
      {
        'role': role,
        'members': [member],
      },
    ],
  });
}

/// Tags Stack: a project-scoped tag key + value, a binding on the project, and
/// tag-level IAM member / binding / policy adjuncts.
final class TagsStack extends Stack {
  TagsStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
        appExports: AppExports('lib/generated/tags_stack.app.dart'),
      ) {
    final current = addData(GoogleProject(localName: 'current'));

    // Tag-level IAM members validate that the principal exists, so provision
    // the service account in-stack and bind against its `principal`
    // (a bare `serviceAccount:...@example.com` literal would fail apply).
    final tagger = add(
      GoogleServiceAccount(
        localName: 'tagger',
        accountId: .literal('terradart-tagger'),
        displayName: .literal('Resource Manager tag operator'),
      ),
    );

    // Project-scoped tag key. `parent` accepts `projects/{number_or_id}`; we
    // resolve the number from the `google_project` data source.
    final envKey = add(
      GoogleTagsTagKey(
        localName: 'env',
        shortName: .literal('terradart-env'),
        parent: .literal('projects/${current.number.interpolation}'),
        description: .literal('Deployment environment (terradart demo)'),
      ),
    );

    // A value under the key. `parent` is the key's resource id (`tagKeys/...`).
    final prodValue = add(
      GoogleTagsTagValue(
        localName: 'prod',
        shortName: .literal('production'),
        parent: envKey.ref,
        description: .literal('Production environment'),
      ),
    );

    // Attach the value to the project itself. `parent` is the full resource
    // name; `tag_value` is the value's resource id (`tagValues/...`).
    add(
      GoogleTagsTagBinding(
        localName: 'project_env',
        parent: .literal(
          '//cloudresourcemanager.googleapis.com/projects/'
          '${current.number.interpolation}',
        ),
        tagValue: prodValue.ref,
        dependsOn: [prodValue],
      ),
    );

    // Tag-key IAM: member → binding → policy (ordered teardown).
    final envViewer = add(
      GoogleTagsTagKeyIamMember(
        localName: 'env_viewer',
        tagKey: envKey.ref,
        role: .literal('roles/resourcemanager.tagViewer'),
        member: tagger.principal,
        dependsOn: [envKey, tagger],
      ),
    );

    final envViewerBinding = add(
      GoogleTagsTagKeyIamBinding(
        localName: 'env_viewer_binding',
        tagKey: envKey.ref,
        role: .literal('roles/resourcemanager.tagViewer'),
        members: .literal([tagger.principal]),
        dependsOn: [envKey, envViewer],
      ),
    );

    add(
      GoogleTagsTagKeyIamPolicy(
        localName: 'env_viewer_policy',
        tagKey: envKey.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/resourcemanager.tagViewer',
            member:
                'serviceAccount:terradart-tagger@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [envKey, envViewerBinding],
      ),
    );

    // Tag-value IAM: member → binding → policy (ordered teardown).
    final prodUser = add(
      GoogleTagsTagValueIamMember(
        localName: 'prod_user',
        tagValue: prodValue.ref,
        role: .literal('roles/resourcemanager.tagUser'),
        member: tagger.principal,
        dependsOn: [prodValue, tagger],
      ),
    );

    final prodUserBinding = add(
      GoogleTagsTagValueIamBinding(
        localName: 'prod_user_binding',
        tagValue: prodValue.ref,
        role: .literal('roles/resourcemanager.tagUser'),
        members: .literal([tagger.principal]),
        dependsOn: [prodValue, prodUser],
      ),
    );

    add(
      GoogleTagsTagValueIamPolicy(
        localName: 'prod_user_policy',
        tagValue: prodValue.ref,
        policyData: .literal(
          _iamPolicyDataJson(
            role: 'roles/resourcemanager.tagUser',
            member:
                'serviceAccount:terradart-tagger@$projectId.iam.gserviceaccount.com',
          ),
        ),
        dependsOn: [prodValue, prodUserBinding],
      ),
    );

    // Literal tag-key short name -- emitted as a Dart constant at synth time.
    addConstant('envTagKeyShortName', .ref(envKey.shortName));

    // Full tag-key resource id (`tagKeys/...`) -- Terraform output only.
    addOutput('env_tag_key_id', envKey.id);
  }
}
