// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_configuration_set`.
const Set<String> _awsSesv2ConfigurationSetSensitive = <String>{};

/// Factory wrapper for `aws_sesv2_configuration_set`.
final class DataAwsSesv2ConfigurationSet extends Data {
  static const String tfType = 'aws_sesv2_configuration_set';

  DataAwsSesv2ConfigurationSet({
    required super.localName,
    required TfArg<String> configurationSetName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_set_name': configurationSetName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesv2ConfigurationSetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `delivery_options` attribute.
  TfRef<List<Map<String, Object?>>> get deliveryOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'delivery_options');

  /// Reference to `reputation_options` attribute.
  TfRef<List<Map<String, Object?>>> get reputationOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'reputation_options');

  /// Reference to `sending_options` attribute.
  TfRef<List<Map<String, Object?>>> get sendingOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sending_options');

  /// Reference to `suppression_options` attribute.
  TfRef<List<Map<String, Object?>>> get suppressionOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'suppression_options');

  /// Reference to `tracking_options` attribute.
  TfRef<List<Map<String, Object?>>> get trackingOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tracking_options');

  /// Reference to `vdm_options` attribute.
  TfRef<List<Map<String, Object?>>> get vdmOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'vdm_options');
}
