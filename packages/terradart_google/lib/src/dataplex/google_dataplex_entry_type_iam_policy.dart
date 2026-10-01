// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../dataplex/google_dataplex_entry_type.dart'
    show GoogleDataplexEntryType;

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
    required RefTo<GoogleDataplexEntryType> entryType,
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
           'entry_type_id': entryType.encodeAs('entry_type_id'),
           'policy_data': policyData,
           'location': ?(location ?? entryType.alsoAs('location')),
           'project': ?(project ?? entryType.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexEntryTypeIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexEntryTypeIamPolicy>`.
  RefTo<GoogleDataplexEntryTypeIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `entry_type_id` attribute.
  TfRef<String> get entryTypeId =>
      TfRef.attribute<String>(this, 'entry_type_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
