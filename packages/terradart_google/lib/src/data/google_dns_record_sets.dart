// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_record_sets`.
const Set<String> _googleDnsRecordSetsSensitive = <String>{};

/// Factory wrapper for `google_dns_record_sets`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDnsRecordSets extends Data {
  static const String tfType = 'google_dns_record_sets';

  DataGoogleDnsRecordSets({
    required super.localName,
    required TfArg<String> managedZone,
    TfArg<String>? name,
    TfArg<String>? project,
    TfArg<String>? type,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_zone': managedZone,
           if (name != null) 'name': name,
           if (project != null) 'project': project,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsRecordSetsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `rrsets` attribute.
  TfRef<List<Map<String, Object?>>> get rrsets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rrsets');
}
