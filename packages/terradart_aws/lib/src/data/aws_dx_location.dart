// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_location`.
const Set<String> _awsDxLocationSensitive = <String>{};

/// Factory wrapper for `aws_dx_location`.
final class DataAwsDxLocation extends Data {
  static const String tfType = 'aws_dx_location';

  DataAwsDxLocation({
    required super.localName,
    required TfArg<String> locationCode,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location_code': locationCode,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxLocationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `available_macsec_port_speeds` attribute.
  TfRef<List<String>> get availableMacsecPortSpeeds =>
      TfRef.attribute<List<String>>(this, 'available_macsec_port_speeds');

  /// Reference to `available_port_speeds` attribute.
  TfRef<List<String>> get availablePortSpeeds =>
      TfRef.attribute<List<String>>(this, 'available_port_speeds');

  /// Reference to `available_providers` attribute.
  TfRef<List<String>> get availableProviders =>
      TfRef.attribute<List<String>>(this, 'available_providers');

  /// Reference to `location_name` attribute.
  TfRef<String> get locationName =>
      TfRef.attribute<String>(this, 'location_name');
}
