// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appstream_stack`.
const Set<String> _awsAppstreamStackSensitive = <String>{};

/// Typed helper for the `access_endpoints` block of
/// `aws_appstream_stack` (derived from provider schema).
@immutable
final class AppstreamStackAccessEndpoints {
  const AppstreamStackAccessEndpoints({
    required this.endpointType,
    this.vpceId,
  });

  final TfArg<String> endpointType;

  final TfArg<String>? vpceId;

  Map<String, Object?> encode() => {
    'endpoint_type': endpointType.toTfJson(),
    if (vpceId != null) 'vpce_id': vpceId!.toTfJson(),
  };
}

/// Typed helper for the `application_settings` block of
/// `aws_appstream_stack` (derived from provider schema).
@immutable
final class AppstreamStackApplicationSettings {
  const AppstreamStackApplicationSettings({
    required this.enabled,
    this.settingsGroup,
  });

  final TfArg<bool> enabled;

  final TfArg<String>? settingsGroup;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    if (settingsGroup != null) 'settings_group': settingsGroup!.toTfJson(),
  };
}

/// Typed helper for the `storage_connectors` block of
/// `aws_appstream_stack` (derived from provider schema).
@immutable
final class AppstreamStackStorageConnectors {
  const AppstreamStackStorageConnectors({
    required this.connectorType,
    this.domains,
    this.resourceIdentifier,
  });

  final TfArg<String> connectorType;

  final TfArg<List<Object?>>? domains;

  final TfArg<String>? resourceIdentifier;

  Map<String, Object?> encode() => {
    'connector_type': connectorType.toTfJson(),
    if (domains != null) 'domains': domains!.toTfJson(),
    if (resourceIdentifier != null)
      'resource_identifier': resourceIdentifier!.toTfJson(),
  };
}

/// Typed helper for the `streaming_experience_settings` block of
/// `aws_appstream_stack` (derived from provider schema).
@immutable
final class AppstreamStackStreamingExperienceSettings {
  const AppstreamStackStreamingExperienceSettings({this.preferredProtocol});

  final TfArg<String>? preferredProtocol;

  Map<String, Object?> encode() => {
    if (preferredProtocol != null)
      'preferred_protocol': preferredProtocol!.toTfJson(),
  };
}

/// Typed helper for the `user_settings` block of
/// `aws_appstream_stack` (derived from provider schema).
@immutable
final class AppstreamStackUserSettings {
  const AppstreamStackUserSettings({
    required this.action,
    required this.permission,
  });

  final TfArg<String> action;

  final TfArg<String> permission;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'permission': permission.toTfJson(),
  };
}

/// Factory wrapper for `aws_appstream_stack`.
final class AwsAppstreamStack extends Resource {
  static const String tfType = 'aws_appstream_stack';

  AwsAppstreamStack({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<List<String>>? embedHostDomains,
    TfArg<String>? feedbackUrl,
    required TfArg<String> name,
    TfArg<String>? redirectUrl,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<AppstreamStackAccessEndpoints>? accessEndpoints,
    AppstreamStackApplicationSettings? applicationSettings,
    List<AppstreamStackStorageConnectors>? storageConnectors,
    AppstreamStackStreamingExperienceSettings? streamingExperienceSettings,
    List<AppstreamStackUserSettings>? userSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (displayName != null) 'display_name': displayName,
           if (embedHostDomains != null) 'embed_host_domains': embedHostDomains,
           if (feedbackUrl != null) 'feedback_url': feedbackUrl,
           'name': name,
           if (redirectUrl != null) 'redirect_url': redirectUrl,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (accessEndpoints != null)
             'access_endpoints': TfArg.literal([
               for (final e in accessEndpoints) e.encode(),
             ]),
           if (applicationSettings != null)
             'application_settings': TfArg.literal(
               applicationSettings.encode(),
             ),
           if (storageConnectors != null)
             'storage_connectors': TfArg.literal([
               for (final e in storageConnectors) e.encode(),
             ]),
           if (streamingExperienceSettings != null)
             'streaming_experience_settings': TfArg.literal(
               streamingExperienceSettings.encode(),
             ),
           if (userSettings != null)
             'user_settings': TfArg.literal([
               for (final e in userSettings) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppstreamStackSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');
}
