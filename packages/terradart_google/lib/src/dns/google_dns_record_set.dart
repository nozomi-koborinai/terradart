// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_record_set`.
const Set<String> _googleDnsRecordSetSensitive = <String>{};

/// Factory wrapper for `google_dns_record_set`.
final class GoogleDnsRecordSet extends Resource {
  static const String tfType = 'google_dns_record_set';

  GoogleDnsRecordSet({
    required super.localName,
    required TfArg<String> managedZone,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<List<String>>? rrdatas,
    TfArg<num>? ttl,
    required TfArg<String> type,
    TfArg<Map<String, dynamic>>? routingPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'managed_zone': managedZone,
           'name': name,
           if (project != null) 'project': project,
           if (rrdatas != null) 'rrdatas': rrdatas,
           if (ttl != null) 'ttl': ttl,
           'type': type,
           if (routingPolicy != null) 'routing_policy': routingPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsRecordSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
