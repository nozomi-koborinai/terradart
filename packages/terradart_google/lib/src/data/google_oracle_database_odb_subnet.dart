// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_odb_subnet`.
const Set<String> _googleOracleDatabaseOdbSubnetSensitive = <String>{};

/// Factory wrapper for `google_oracle_database_odb_subnet`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseOdbSubnet extends Data {
  static const String tfType = 'google_oracle_database_odb_subnet';

  DataGoogleOracleDatabaseOdbSubnet({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> odbSubnetId,
    required TfArg<String> odbnetwork,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'odb_subnet_id': odbSubnetId,
           'odbnetwork': odbnetwork,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOracleDatabaseOdbSubnetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr_range` attribute.
  TfRef<String> get cidrRange => TfRef.attribute<String>(this, 'cidr_range');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `purpose` attribute.
  TfRef<String> get purpose => TfRef.attribute<String>(this, 'purpose');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
