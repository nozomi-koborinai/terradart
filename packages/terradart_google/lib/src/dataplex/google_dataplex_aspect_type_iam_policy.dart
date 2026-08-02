// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_aspect_type_iam_policy`.
const Set<String> _googleDataplexAspectTypeIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataplex_aspect_type_iam_policy`.
///
/// Authoritative IAM policy for a Dataplex aspect type.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDataplexAspectTypeIamMember] for single-principal grants.
final class GoogleDataplexAspectTypeIamPolicy extends Resource {
  static const String tfType = 'google_dataplex_aspect_type_iam_policy';

  GoogleDataplexAspectTypeIamPolicy({
    required super.localName,
    required TfArg<String> aspectTypeId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aspect_type_id': aspectTypeId,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexAspectTypeIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
