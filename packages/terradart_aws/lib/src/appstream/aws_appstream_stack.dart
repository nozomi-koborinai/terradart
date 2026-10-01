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

  final AppstreamStackEndpointType endpointType;

  final TfArg<String>? vpceId;

  Map<String, Object?> encode() => {
    'endpoint_type': endpointType.toTfJson(),
    'vpce_id': ?vpceId?.toTfJson(),
  };
}

/// `endpoint_type` — derived from the provider schema description.
extension type const AppstreamStackEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  AppstreamStackEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  AppstreamStackEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const AppstreamStackEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const streaming = AppstreamStackEndpointType._(
    TfArgLiteral('STREAMING'),
  );

  static const List<AppstreamStackEndpointType> values = [streaming];
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

  final AppstreamStackConnectorType connectorType;

  final TfArg<List<String>>? domains;

  final TfArg<String>? resourceIdentifier;

  Map<String, Object?> encode() => {
    'connector_type': connectorType.toTfJson(),
    'domains': ?domains?.toTfJson(),
    'resource_identifier': ?resourceIdentifier?.toTfJson(),
  };
}

/// `connector_type` — derived from the provider schema description.
extension type const AppstreamStackConnectorType._(TfArg<String> _)
    implements TfArg<String> {
  AppstreamStackConnectorType.variable(String name)
    : this._(TfArg.variable(name));
  AppstreamStackConnectorType.expression(String template)
    : this._(TfArg.expression(template));
  const AppstreamStackConnectorType.arg(TfArg<String> arg) : this._(arg);

  static const homefolders = AppstreamStackConnectorType._(
    TfArgLiteral('HOMEFOLDERS'),
  );
  static const googleDrive = AppstreamStackConnectorType._(
    TfArgLiteral('GOOGLE_DRIVE'),
  );
  static const oneDrive = AppstreamStackConnectorType._(
    TfArgLiteral('ONE_DRIVE'),
  );

  static const List<AppstreamStackConnectorType> values = [
    homefolders,
    googleDrive,
    oneDrive,
  ];
}

/// Typed helper for the `streaming_experience_settings` block of
/// `aws_appstream_stack` (derived from provider schema).
@immutable
final class AppstreamStackStreamingExperienceSettings {
  const AppstreamStackStreamingExperienceSettings({this.preferredProtocol});

  final AppstreamStackPreferredProtocol? preferredProtocol;

  Map<String, Object?> encode() => {
    'preferred_protocol': ?preferredProtocol?.toTfJson(),
  };
}

/// `preferred_protocol` — derived from the provider schema description.
extension type const AppstreamStackPreferredProtocol._(TfArg<String> _)
    implements TfArg<String> {
  AppstreamStackPreferredProtocol.variable(String name)
    : this._(TfArg.variable(name));
  AppstreamStackPreferredProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const AppstreamStackPreferredProtocol.arg(TfArg<String> arg) : this._(arg);

  static const tcp = AppstreamStackPreferredProtocol._(TfArgLiteral('TCP'));
  static const udp = AppstreamStackPreferredProtocol._(TfArgLiteral('UDP'));

  static const List<AppstreamStackPreferredProtocol> values = [tcp, udp];
}

/// Typed helper for the `user_settings` block of
/// `aws_appstream_stack` (derived from provider schema).
@immutable
final class AppstreamStackUserSettings {
  const AppstreamStackUserSettings({
    required this.action,
    required this.permission,
  });

  final AppstreamStackAction action;

  final AppstreamStackPermission permission;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'permission': permission.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const AppstreamStackAction._(TfArg<String> _)
    implements TfArg<String> {
  AppstreamStackAction.variable(String name) : this._(TfArg.variable(name));
  AppstreamStackAction.expression(String template)
    : this._(TfArg.expression(template));
  const AppstreamStackAction.arg(TfArg<String> arg) : this._(arg);

  static const clipboardCopyFromLocalDevice = AppstreamStackAction._(
    TfArgLiteral('CLIPBOARD_COPY_FROM_LOCAL_DEVICE'),
  );
  static const clipboardCopyToLocalDevice = AppstreamStackAction._(
    TfArgLiteral('CLIPBOARD_COPY_TO_LOCAL_DEVICE'),
  );
  static const fileUpload = AppstreamStackAction._(TfArgLiteral('FILE_UPLOAD'));
  static const fileDownload = AppstreamStackAction._(
    TfArgLiteral('FILE_DOWNLOAD'),
  );
  static const printingToLocalDevice = AppstreamStackAction._(
    TfArgLiteral('PRINTING_TO_LOCAL_DEVICE'),
  );
  static const domainPasswordSignin = AppstreamStackAction._(
    TfArgLiteral('DOMAIN_PASSWORD_SIGNIN'),
  );
  static const domainSmartCardSignin = AppstreamStackAction._(
    TfArgLiteral('DOMAIN_SMART_CARD_SIGNIN'),
  );
  static const autoTimeZoneRedirection = AppstreamStackAction._(
    TfArgLiteral('AUTO_TIME_ZONE_REDIRECTION'),
  );

  static const List<AppstreamStackAction> values = [
    clipboardCopyFromLocalDevice,
    clipboardCopyToLocalDevice,
    fileUpload,
    fileDownload,
    printingToLocalDevice,
    domainPasswordSignin,
    domainSmartCardSignin,
    autoTimeZoneRedirection,
  ];
}

/// `permission` — derived from the provider schema description.
extension type const AppstreamStackPermission._(TfArg<String> _)
    implements TfArg<String> {
  AppstreamStackPermission.variable(String name) : this._(TfArg.variable(name));
  AppstreamStackPermission.expression(String template)
    : this._(TfArg.expression(template));
  const AppstreamStackPermission.arg(TfArg<String> arg) : this._(arg);

  static const enabled = AppstreamStackPermission._(TfArgLiteral('ENABLED'));
  static const disabled = AppstreamStackPermission._(TfArgLiteral('DISABLED'));

  static const List<AppstreamStackPermission> values = [enabled, disabled];
}

/// Factory wrapper for `aws_appstream_stack`.
final class AwsAppstreamStack extends Resource {
  static const String tfType = 'aws_appstream_stack';

  AwsAppstreamStack(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `embed_host_domains` attribute.
  TfRef<List<String>> get embedHostDomains =>
      TfRef.attribute<List<String>>(this, 'embed_host_domains');

  /// Reference to `feedback_url` attribute.
  TfRef<String> get feedbackUrl =>
      TfRef.attribute<String>(this, 'feedback_url');

  /// Reference to `redirect_url` attribute.
  TfRef<String> get redirectUrl =>
      TfRef.attribute<String>(this, 'redirect_url');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
