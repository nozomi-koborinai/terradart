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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aspect_type_id': aspectTypeId,
           'policy_data': policyData,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexAspectTypeIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexAspectTypeIamPolicy>`.
  RefTo<GoogleDataplexAspectTypeIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `aspect_type_id` attribute.
  TfRef<String> get aspectTypeIdRef =>
      TfRef.attribute<String>(this, 'aspect_type_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
