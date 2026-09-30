// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../pubsub/google_pubsub_schema_iam_policy.dart';

/// Sensitive field paths for `google_pubsub_schema_iam_policy`.
const Set<String> _googlePubsubSchemaIamPolicySensitive = <String>{};

/// Factory wrapper for `google_pubsub_schema_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGooglePubsubSchemaIamPolicy extends Data {
  static const String tfType = 'google_pubsub_schema_iam_policy';

  DataGooglePubsubSchemaIamPolicy({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> schema,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'project': ?project, 'schema': schema},
       );

  @override
  Set<String> get sensitiveFields => _googlePubsubSchemaIamPolicySensitive;

  /// A reference to the `google_pubsub_schema_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GooglePubsubSchemaIamPolicy>`.
  RefTo<GooglePubsubSchemaIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `schema` attribute.
  TfRef<String> get schemaRef => TfRef.attribute<String>(this, 'schema');
}
