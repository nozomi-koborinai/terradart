// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_datastream_static_ips`.
const Set<String> _googleDatastreamStaticIpsSensitive = <String>{};

/// Factory wrapper for `google_datastream_static_ips`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDatastreamStaticIps extends Data {
  static const String tfType = 'google_datastream_static_ips';

  DataGoogleDatastreamStaticIps({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDatastreamStaticIpsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `static_ips` attribute.
  TfRef<List<String>> get staticIps =>
      TfRef.attribute<List<String>>(this, 'static_ips');
}
