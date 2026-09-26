// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_application_providers`.
const Set<String> _awsSsoadminApplicationProvidersSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_application_providers`.
final class DataAwsSsoadminApplicationProviders extends Data {
  static const String tfType = 'aws_ssoadmin_application_providers';

  DataAwsSsoadminApplicationProviders({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminApplicationProvidersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_providers` attribute.
  TfRef<List<Map<String, Object?>>> get applicationProviders =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'application_providers',
      );
}
