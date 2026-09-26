// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_medialive_input`.
const Set<String> _awsMedialiveInputSensitive = <String>{};

/// Factory wrapper for `aws_medialive_input`.
final class DataAwsMedialiveInput extends Data {
  static const String tfType = 'aws_medialive_input';

  DataAwsMedialiveInput({
    required super.localName,
    required TfArg<String> id,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'id': id, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsMedialiveInputSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `attached_channels` attribute.
  TfRef<List<String>> get attachedChannels =>
      TfRef.attribute<List<String>>(this, 'attached_channels');

  /// Reference to `destinations` attribute.
  TfRef<List<Map<String, Object?>>> get destinations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'destinations');

  /// Reference to `input_class` attribute.
  TfRef<String> get inputClass => TfRef.attribute<String>(this, 'input_class');

  /// Reference to `input_devices` attribute.
  TfRef<List<Map<String, Object?>>> get inputDevices =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'input_devices');

  /// Reference to `input_partner_ids` attribute.
  TfRef<List<String>> get inputPartnerIds =>
      TfRef.attribute<List<String>>(this, 'input_partner_ids');

  /// Reference to `input_source_type` attribute.
  TfRef<String> get inputSourceType =>
      TfRef.attribute<String>(this, 'input_source_type');

  /// Reference to `media_connect_flows` attribute.
  TfRef<List<Map<String, Object?>>> get mediaConnectFlows =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'media_connect_flows');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `sources` attribute.
  TfRef<List<Map<String, Object?>>> get sources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sources');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
