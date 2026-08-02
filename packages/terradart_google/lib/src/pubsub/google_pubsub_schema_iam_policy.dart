// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> schema,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'schema': schema,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubSchemaIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
