// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_glossary_iam_policy`.
const Set<String> _googleDataplexGlossaryIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataplex_glossary_iam_policy`.
///
/// Authoritative IAM policy for a Dataplex glossary.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDataplexGlossaryIamMember] for single-principal grants.
final class GoogleDataplexGlossaryIamPolicy extends Resource {
  static const String tfType = 'google_dataplex_glossary_iam_policy';

  GoogleDataplexGlossaryIamPolicy({
    required super.localName,
    required TfArg<String> glossaryId,
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
           'glossary_id': glossaryId,
           'policy_data': policyData,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexGlossaryIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexGlossaryIamPolicy>`.
  RefTo<GoogleDataplexGlossaryIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `glossary_id` attribute.
  TfRef<String> get glossaryIdRef =>
      TfRef.attribute<String>(this, 'glossary_id');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
