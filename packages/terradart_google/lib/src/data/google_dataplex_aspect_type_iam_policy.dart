// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dataplex/google_dataplex_aspect_type_iam_policy.dart';

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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aspect_type_id': aspectTypeId,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexAspectTypeIamPolicySensitive;

  /// A reference to the `google_dataplex_aspect_type_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleDataplexAspectTypeIamPolicy>`.
  RefTo<GoogleDataplexAspectTypeIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `aspect_type_id` attribute.
  TfRef<String> get aspectTypeId =>
      TfRef.attribute<String>(this, 'aspect_type_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
