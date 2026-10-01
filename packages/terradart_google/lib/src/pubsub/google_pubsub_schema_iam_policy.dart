// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_schema.dart' show GooglePubsubSchema;

/// Sensitive field paths for `google_pubsub_schema_iam_policy`.
const Set<String> _googlePubsubSchemaIamPolicySensitive = <String>{};

/// Factory wrapper for `google_pubsub_schema_iam_policy`.
///
/// Authoritative IAM policy for a Pub/Sub schema.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GooglePubsubSchemaIamMember] for single-principal grants.
final class GooglePubsubSchemaIamPolicy extends Resource {
  static const String tfType = 'google_pubsub_schema_iam_policy';

  GooglePubsubSchemaIamPolicy({
    required super.localName,
    required RefTo<GooglePubsubSchema> schema,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'schema': schema.encodeAs('id'),
           'policy_data': policyData,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubSchemaIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePubsubSchemaIamPolicy>`.
  RefTo<GooglePubsubSchemaIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `schema` attribute.
  TfRef<String> get schema => TfRef.attribute<String>(this, 'schema');
}
