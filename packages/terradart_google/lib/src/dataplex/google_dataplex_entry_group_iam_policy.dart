// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_entry_group_iam_policy`.
const Set<String> _googleDataplexEntryGroupIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataplex_entry_group_iam_policy`.
///
/// Authoritative IAM policy for a Dataplex entry group.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDataplexEntryGroupIamMember] for single-principal grants.
final class GoogleDataplexEntryGroupIamPolicy extends Resource {
  static const String tfType = 'google_dataplex_entry_group_iam_policy';

  GoogleDataplexEntryGroupIamPolicy({
    required super.localName,
    required TfArg<String> entryGroupId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_group_id': entryGroupId,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataplexEntryGroupIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
