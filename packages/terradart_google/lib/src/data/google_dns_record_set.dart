// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_record_set`.
const Set<String> _googleDnsRecordSetSensitive = <String>{};

/// Factory wrapper for `google_dns_record_set`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDnsRecordSet extends Data {
  static const String tfType = 'google_dns_record_set';

  DataGoogleDnsRecordSet({
    required super.localName,
    required TfArg<String> managedZone,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> type,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_zone': managedZone,
           'name': name,
           if (project != null) 'project': project,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsRecordSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `rrdatas` attribute.
  TfRef<List<String>> get rrdatas =>
      TfRef.attribute<List<String>>(this, 'rrdatas');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');
}
