// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataplex_entry_type_iam_policy`.
const Set<String> _googleDataplexEntryTypeIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataplex_entry_type_iam_policy`.
///
/// Authoritative IAM policy for a Dataplex entry type.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleDataplexEntryTypeIamMember] for single-principal grants.
final class GoogleDataplexEntryTypeIamPolicy extends Resource {
  static const String tfType = 'google_dataplex_entry_type_iam_policy';

  GoogleDataplexEntryTypeIamPolicy({
    required super.localName,
    required TfArg<String> entryTypeId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'entry_type_id': entryTypeId,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexEntryTypeIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
