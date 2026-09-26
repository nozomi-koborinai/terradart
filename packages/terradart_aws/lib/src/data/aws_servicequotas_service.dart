// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicequotas_service`.
const Set<String> _awsServicequotasServiceSensitive = <String>{};

/// Factory wrapper for `aws_servicequotas_service`.
final class DataAwsServicequotasService extends Data {
  static const String tfType = 'aws_servicequotas_service';

  DataAwsServicequotasService({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> serviceName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'service_name': serviceName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsServicequotasServiceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_code` attribute.
  TfRef<String> get serviceCode =>
      TfRef.attribute<String>(this, 'service_code');
}
