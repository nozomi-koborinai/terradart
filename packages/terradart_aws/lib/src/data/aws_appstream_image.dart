// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appstream_image`.
const Set<String> _awsAppstreamImageSensitive = <String>{};

/// Factory wrapper for `aws_appstream_image`.
final class DataAwsAppstreamImage extends Data {
  static const String tfType = 'aws_appstream_image';

  DataAwsAppstreamImage({
    required super.localName,
    TfArg<String>? arn,
    TfArg<bool>? mostRecent,
    TfArg<String>? name,
    TfArg<String>? nameRegex,
    TfArg<String>? region,
    TfArg<String>? type,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (arn != null) 'arn': arn,
           if (mostRecent != null) 'most_recent': mostRecent,
           if (name != null) 'name': name,
           if (nameRegex != null) 'name_regex': nameRegex,
           if (region != null) 'region': region,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppstreamImageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `applications` attribute.
  TfRef<List<Map<String, Object?>>> get applications =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'applications');

  /// Reference to `appstream_agent_version` attribute.
  TfRef<String> get appstreamAgentVersion =>
      TfRef.attribute<String>(this, 'appstream_agent_version');

  /// Reference to `base_image_arn` attribute.
  TfRef<String> get baseImageArn =>
      TfRef.attribute<String>(this, 'base_image_arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `image_builder_name` attribute.
  TfRef<String> get imageBuilderName =>
      TfRef.attribute<String>(this, 'image_builder_name');

  /// Reference to `image_builder_supported` attribute.
  TfRef<bool> get imageBuilderSupported =>
      TfRef.attribute<bool>(this, 'image_builder_supported');

  /// Reference to `image_permissions` attribute.
  TfRef<List<Map<String, Object?>>> get imagePermissions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'image_permissions');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');

  /// Reference to `public_base_image_released_date` attribute.
  TfRef<String> get publicBaseImageReleasedDate =>
      TfRef.attribute<String>(this, 'public_base_image_released_date');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_change_reason` attribute.
  TfRef<List<Map<String, Object?>>> get stateChangeReason =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state_change_reason');
}
