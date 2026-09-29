// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dataplex/google_dataplex_zone_iam_policy.dart';

/// Sensitive field paths for `google_dataplex_zone_iam_policy`.
const Set<String> _googleDataplexZoneIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataplex_zone_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataplexZoneIamPolicy extends Data {
  static const String tfType = 'google_dataplex_zone_iam_policy';

  DataGoogleDataplexZoneIamPolicy({
    required super.localName,
    required TfArg<String> dataplexZone,
    required TfArg<String> lake,
    TfArg<String>? location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataplex_zone': dataplexZone,
           'lake': lake,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexZoneIamPolicySensitive;

  /// A reference to the `google_dataplex_zone_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleDataplexZoneIamPolicy>`.
  RefTo<GoogleDataplexZoneIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
