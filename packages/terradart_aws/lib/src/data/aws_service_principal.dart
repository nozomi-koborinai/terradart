// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_service_principal`.
const Set<String> _awsServicePrincipalSensitive = <String>{};

/// Factory wrapper for `aws_service_principal`.
final class DataAwsServicePrincipal extends Data {
  static const String tfType = 'aws_service_principal';

  DataAwsServicePrincipal({
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
  Set<String> get sensitiveFields => _awsServicePrincipalSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `suffix` attribute.
  TfRef<String> get suffix => TfRef.attribute<String>(this, 'suffix');
}
