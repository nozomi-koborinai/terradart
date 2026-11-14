// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../oracle/google_oracle_database_odb_dns_zone.dart';

/// Sensitive field paths for `google_oracle_database_odb_dns_zone`.
const Set<String> _googleOracleDatabaseOdbDnsZoneSensitive = <String>{};

/// Factory wrapper for `google_oracle_database_odb_dns_zone`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseOdbDnsZone extends Data {
  static const String tfType = 'google_oracle_database_odb_dns_zone';

  DataGoogleOracleDatabaseOdbDnsZone(
    super.localName, {
    TfArg<String>? location,
    required TfArg<String> odbDnsZoneId,
    required TfArg<String> odbnetwork,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?location,
           'odb_dns_zone_id': odbDnsZoneId,
           'odbnetwork': odbnetwork,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOracleDatabaseOdbDnsZoneSensitive;

  /// A reference to the `google_oracle_database_odb_dns_zone` this data source reads, for
  /// arguments typed `RefTo<GoogleOracleDatabaseOdbDnsZone>`.
  RefTo<GoogleOracleDatabaseOdbDnsZone> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `odb_dns_zone_id` attribute.
  TfRef<String> get odbDnsZoneId =>
      TfRef.attribute<String>(this, 'odb_dns_zone_id');

  /// Reference to `odbnetwork` attribute.
  TfRef<String> get odbnetwork => TfRef.attribute<String>(this, 'odbnetwork');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
