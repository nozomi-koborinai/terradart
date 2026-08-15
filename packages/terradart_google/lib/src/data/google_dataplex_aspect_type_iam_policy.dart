// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_aspect_type_iam_policy`.
const Set<String> _googleDataplexAspectTypeIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataplex_aspect_type_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataplexAspectTypeIamPolicy extends Data {
  static const String tfType = 'google_dataplex_aspect_type_iam_policy';

  DataGoogleDataplexAspectTypeIamPolicy({
    required super.localName,
    required TfArg<String> aspectTypeId,
    TfArg<String>? location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aspect_type_id': aspectTypeId,
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

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
