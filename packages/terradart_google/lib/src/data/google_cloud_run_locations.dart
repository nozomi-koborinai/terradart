// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_locations`.
const Set<String> _googleCloudRunLocationsSensitive = <String>{};

/// Factory wrapper for `google_cloud_run_locations`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudRunLocations extends Data {
  static const String tfType = 'google_cloud_run_locations';

  DataGoogleCloudRunLocations({
    required super.localName,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunLocationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `locations` attribute.
  TfRef<List<String>> get locations =>
      TfRef.attribute<List<String>>(this, 'locations');
}
