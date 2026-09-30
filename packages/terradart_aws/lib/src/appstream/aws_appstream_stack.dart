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

  final TfArg<AppstreamStackAccessEndpointsEndpointType> endpointType;

  final TfArg<String>? vpceId;

  Map<String, Object?> encode() => {
    'endpoint_type': endpointType.toTfJson(),
    'vpce_id': ?vpceId?.toTfJson(),
  };
}

/// `endpoint_type` — derived from the provider schema description.
enum AppstreamStackAccessEndpointsEndpointType implements TerraformEnum {
  streaming('STREAMING');

  const AppstreamStackAccessEndpointsEndpointType(this.terraformValue);
  @override
  final String terraformValue;
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
    'settings_group': ?settingsGroup?.toTfJson(),
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

  final TfArg<AppstreamStackStorageConnectorsConnectorType> connectorType;

  final TfArg<List<String>>? domains;

  final TfArg<String>? resourceIdentifier;

  Map<String, Object?> encode() => {
    'connector_type': connectorType.toTfJson(),
    'domains': ?domains?.toTfJson(),
    'resource_identifier': ?resourceIdentifier?.toTfJson(),
  };
}

/// `connector_type` — derived from the provider schema description.
enum AppstreamStackStorageConnectorsConnectorType implements TerraformEnum {
  homefolders('HOMEFOLDERS'),
  googleDrive('GOOGLE_DRIVE'),
  oneDrive('ONE_DRIVE');

  const AppstreamStackStorageConnectorsConnectorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `streaming_experience_settings` block of
/// `aws_appstream_stack` (derived from provider schema).
@immutable
final class AppstreamStackStreamingExperienceSettings {
  const AppstreamStackStreamingExperienceSettings({this.preferredProtocol});

  final TfArg<AppstreamStackStreamingExperienceSettingsPreferredProtocol>?
  preferredProtocol;

  Map<String, Object?> encode() => {
    'preferred_protocol': ?preferredProtocol?.toTfJson(),
  };
}

/// `preferred_protocol` — derived from the provider schema description.
enum AppstreamStackStreamingExperienceSettingsPreferredProtocol
    implements TerraformEnum {
  tcp('TCP'),
  udp('UDP');

  const AppstreamStackStreamingExperienceSettingsPreferredProtocol(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `user_settings` block of
/// `aws_appstream_stack` (derived from provider schema).
@immutable
final class AppstreamStackUserSettings {
  const AppstreamStackUserSettings({
    required this.action,
    required this.permission,
  });

  final TfArg<AppstreamStackUserSettingsAction> action;

  final TfArg<AppstreamStackUserSettingsPermission> permission;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'permission': permission.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum AppstreamStackUserSettingsAction implements TerraformEnum {
  clipboardCopyFromLocalDevice('CLIPBOARD_COPY_FROM_LOCAL_DEVICE'),
  clipboardCopyToLocalDevice('CLIPBOARD_COPY_TO_LOCAL_DEVICE'),
  fileUpload('FILE_UPLOAD'),
  fileDownload('FILE_DOWNLOAD'),
  printingToLocalDevice('PRINTING_TO_LOCAL_DEVICE'),
  domainPasswordSignin('DOMAIN_PASSWORD_SIGNIN'),
  domainSmartCardSignin('DOMAIN_SMART_CARD_SIGNIN'),
  autoTimeZoneRedirection('AUTO_TIME_ZONE_REDIRECTION');

  const AppstreamStackUserSettingsAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// `permission` — derived from the provider schema description.
enum AppstreamStackUserSettingsPermission implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const AppstreamStackUserSettingsPermission(this.terraformValue);
  @override
  final String terraformValue;
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
           'description': ?description,
           'display_name': ?displayName,
           'embed_host_domains': ?embedHostDomains,
           'feedback_url': ?feedbackUrl,
           'name': name,
           'redirect_url': ?redirectUrl,
           'region': ?region,
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAppstreamStack>`.
  RefTo<AwsAppstreamStack> get ref => RefTo.of(this);

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
