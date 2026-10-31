// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_connected_registry`.
const Set<String> _azurermContainerConnectedRegistrySensitive = <String>{};

/// Container Connected Registry Log enum for `log_level`.
extension type const ContainerConnectedRegistryLogLevel._(TfArg<String> _)
    implements TfArg<String> {
  ContainerConnectedRegistryLogLevel.variable(String name)
    : this._(TfArg.variable(name));
  ContainerConnectedRegistryLogLevel.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerConnectedRegistryLogLevel.arg(TfArg<String> arg) : this._(arg);

  static const debug = ContainerConnectedRegistryLogLevel._(
    TfArgLiteral('Debug'),
  );
  static const error = ContainerConnectedRegistryLogLevel._(
    TfArgLiteral('Error'),
  );
  static const information = ContainerConnectedRegistryLogLevel._(
    TfArgLiteral('Information'),
  );
  static const none = ContainerConnectedRegistryLogLevel._(
    TfArgLiteral('None'),
  );
  static const warning = ContainerConnectedRegistryLogLevel._(
    TfArgLiteral('Warning'),
  );

  static const List<ContainerConnectedRegistryLogLevel> values = [
    debug,
    error,
    information,
    none,
    warning,
  ];
}

/// Container Connected Registry enum for `mode`.
extension type const ContainerConnectedRegistryMode._(TfArg<String> _)
    implements TfArg<String> {
  ContainerConnectedRegistryMode.variable(String name)
    : this._(TfArg.variable(name));
  ContainerConnectedRegistryMode.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerConnectedRegistryMode.arg(TfArg<String> arg) : this._(arg);

  static const mirror = ContainerConnectedRegistryMode._(
    TfArgLiteral('Mirror'),
  );
  static const readonly = ContainerConnectedRegistryMode._(
    TfArgLiteral('ReadOnly'),
  );
  static const readwrite = ContainerConnectedRegistryMode._(
    TfArgLiteral('ReadWrite'),
  );
  static const registry = ContainerConnectedRegistryMode._(
    TfArgLiteral('Registry'),
  );

  static const List<ContainerConnectedRegistryMode> values = [
    mirror,
    readonly,
    readwrite,
    registry,
  ];
}

/// Typed helper for the `notification` block of
/// `azurerm_container_connected_registry` (derived from provider schema).
@immutable
final class ContainerConnectedRegistryNotification {
  const ContainerConnectedRegistryNotification({
    required this.action,
    this.digest,
    required this.name,
    this.tag,
  });

  final ContainerConnectedRegistryAction action;

  final TfArg<String>? digest;

  final TfArg<String> name;

  final TfArg<String>? tag;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'digest': ?digest?.toTfJson(),
    'name': name.toTfJson(),
    'tag': ?tag?.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const ContainerConnectedRegistryAction._(TfArg<String> _)
    implements TfArg<String> {
  ContainerConnectedRegistryAction.variable(String name)
    : this._(TfArg.variable(name));
  ContainerConnectedRegistryAction.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerConnectedRegistryAction.arg(TfArg<String> arg) : this._(arg);

  static const push = ContainerConnectedRegistryAction._(TfArgLiteral('push'));
  static const delete = ContainerConnectedRegistryAction._(
    TfArgLiteral('delete'),
  );
  static const value = ContainerConnectedRegistryAction._(TfArgLiteral('*'));

  static const List<ContainerConnectedRegistryAction> values = [
    push,
    delete,
    value,
  ];
}

/// Factory wrapper for `azurerm_container_connected_registry`.
final class AzurermContainerConnectedRegistry extends Resource {
  static const String tfType = 'azurerm_container_connected_registry';

  AzurermContainerConnectedRegistry(
    super.localName, {
    TfArg<bool>? auditLogEnabled,
    TfArg<List<String>>? clientTokenIds,
    required TfArg<String> containerRegistryId,
    ContainerConnectedRegistryLogLevel? logLevel,
    ContainerConnectedRegistryMode? mode,
    required TfArg<String> name,
    TfArg<String>? parentRegistryId,
    TfArg<String>? syncMessageTtl,
    TfArg<String>? syncSchedule,
    required TfArg<String> syncTokenId,
    TfArg<String>? syncWindow,
    List<ContainerConnectedRegistryNotification>? notification,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'audit_log_enabled': ?auditLogEnabled,
           'client_token_ids': ?clientTokenIds,
           'container_registry_id': containerRegistryId,
           'log_level': ?logLevel,
           'mode': ?mode,
           'name': name,
           'parent_registry_id': ?parentRegistryId,
           'sync_message_ttl': ?syncMessageTtl,
           'sync_schedule': ?syncSchedule,
           'sync_token_id': syncTokenId,
           'sync_window': ?syncWindow,
           if (notification != null)
             'notification': TfArg.literal([
               for (final e in notification) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerConnectedRegistrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerConnectedRegistry>`.
  RefTo<AzurermContainerConnectedRegistry> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `audit_log_enabled` attribute.
  TfRef<bool> get auditLogEnabled =>
      TfRef.attribute<bool>(this, 'audit_log_enabled');

  /// Reference to `client_token_ids` attribute.
  TfRef<List<String>> get clientTokenIds =>
      TfRef.attribute<List<String>>(this, 'client_token_ids');

  /// Reference to `container_registry_id` attribute.
  TfRef<String> get containerRegistryId =>
      TfRef.attribute<String>(this, 'container_registry_id');

  /// Reference to `log_level` attribute.
  TfRef<String> get logLevel => TfRef.attribute<String>(this, 'log_level');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `parent_registry_id` attribute.
  TfRef<String> get parentRegistryId =>
      TfRef.attribute<String>(this, 'parent_registry_id');

  /// Reference to `sync_message_ttl` attribute.
  TfRef<String> get syncMessageTtl =>
      TfRef.attribute<String>(this, 'sync_message_ttl');

  /// Reference to `sync_schedule` attribute.
  TfRef<String> get syncSchedule =>
      TfRef.attribute<String>(this, 'sync_schedule');

  /// Reference to `sync_token_id` attribute.
  TfRef<String> get syncTokenId =>
      TfRef.attribute<String>(this, 'sync_token_id');

  /// Reference to `sync_window` attribute.
  TfRef<String> get syncWindow => TfRef.attribute<String>(this, 'sync_window');
}
