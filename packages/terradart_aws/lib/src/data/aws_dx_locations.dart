// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_locations`.
const Set<String> _awsDxLocationsSensitive = <String>{};

/// Factory wrapper for `aws_dx_locations`.
final class DataAwsDxLocations extends Data {
  static const String tfType = 'aws_dx_locations';

  DataAwsDxLocations({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsDxLocationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location_codes` attribute.
  TfRef<List<String>> get locationCodes =>
      TfRef.attribute<List<String>>(this, 'location_codes');
}
