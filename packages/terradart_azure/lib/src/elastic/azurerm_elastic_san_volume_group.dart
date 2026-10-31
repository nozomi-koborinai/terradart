// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_elastic_san_volume_group`.
const Set<String> _azurermElasticSanVolumeGroupSensitive = <String>{};

/// Elastic San Volume Group Encryption enum for `encryption_type`.
extension type const ElasticSanVolumeGroupEncryptionType._(TfArg<String> _)
    implements TfArg<String> {
  ElasticSanVolumeGroupEncryptionType.variable(String name)
    : this._(TfArg.variable(name));
  ElasticSanVolumeGroupEncryptionType.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticSanVolumeGroupEncryptionType.arg(TfArg<String> arg)
    : this._(arg);

  static const encryptionatrestwithcustomermanagedkey =
      ElasticSanVolumeGroupEncryptionType._(
        TfArgLiteral('EncryptionAtRestWithCustomerManagedKey'),
      );
  static const encryptionatrestwithplatformkey =
      ElasticSanVolumeGroupEncryptionType._(
        TfArgLiteral('EncryptionAtRestWithPlatformKey'),
      );

  static const List<ElasticSanVolumeGroupEncryptionType> values = [
    encryptionatrestwithcustomermanagedkey,
    encryptionatrestwithplatformkey,
  ];
}

/// Elastic San Volume Group Protocol enum for `protocol_type`.
extension type const ElasticSanVolumeGroupProtocolType._(TfArg<String> _)
    implements TfArg<String> {
  ElasticSanVolumeGroupProtocolType.variable(String name)
    : this._(TfArg.variable(name));
  ElasticSanVolumeGroupProtocolType.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticSanVolumeGroupProtocolType.arg(TfArg<String> arg) : this._(arg);

  static const iscsi = ElasticSanVolumeGroupProtocolType._(
    TfArgLiteral('Iscsi'),
  );

  static const List<ElasticSanVolumeGroupProtocolType> values = [iscsi];
}

/// Typed helper for the `encryption` block of
/// `azurerm_elastic_san_volume_group` (derived from provider schema).
@immutable
final class ElasticSanVolumeGroupEncryption {
  const ElasticSanVolumeGroupEncryption({
    required this.keyVaultKeyId,
    this.userAssignedIdentityId,
  });

  final TfArg<String> keyVaultKeyId;

  final TfArg<String>? userAssignedIdentityId;

  @internal
  Map<String, Object?> encode() => {
    'key_vault_key_id': keyVaultKeyId.toTfJson(),
    'user_assigned_identity_id': ?userAssignedIdentityId?.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_elastic_san_volume_group` (derived from provider schema).
@immutable
final class ElasticSanVolumeGroupIdentity {
  const ElasticSanVolumeGroupIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `network_rule` block of
/// `azurerm_elastic_san_volume_group` (derived from provider schema).
@immutable
final class ElasticSanVolumeGroupNetworkRule {
  const ElasticSanVolumeGroupNetworkRule({this.action, required this.subnetId});

  final ElasticSanVolumeGroupAction? action;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const ElasticSanVolumeGroupAction._(TfArg<String> _)
    implements TfArg<String> {
  ElasticSanVolumeGroupAction.variable(String name)
    : this._(TfArg.variable(name));
  ElasticSanVolumeGroupAction.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticSanVolumeGroupAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = ElasticSanVolumeGroupAction._(TfArgLiteral('Allow'));

  static const List<ElasticSanVolumeGroupAction> values = [allow];
}

/// Factory wrapper for `azurerm_elastic_san_volume_group`.
final class AzurermElasticSanVolumeGroup extends Resource {
  static const String tfType = 'azurerm_elastic_san_volume_group';

  AzurermElasticSanVolumeGroup(
    super.localName, {
    required TfArg<String> elasticSanId,
    ElasticSanVolumeGroupEncryptionType? encryptionType,
    required TfArg<String> name,
    ElasticSanVolumeGroupProtocolType? protocolType,
    ElasticSanVolumeGroupEncryption? encryption,
    ElasticSanVolumeGroupIdentity? identity,
    List<ElasticSanVolumeGroupNetworkRule>? networkRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'elastic_san_id': elasticSanId,
           'encryption_type': ?encryptionType,
           'name': name,
           'protocol_type': ?protocolType,
           if (encryption != null)
             'encryption': TfArg.literal(encryption.encode()),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (networkRule != null)
             'network_rule': TfArg.literal([
               for (final e in networkRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermElasticSanVolumeGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermElasticSanVolumeGroup>`.
  RefTo<AzurermElasticSanVolumeGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `elastic_san_id` attribute.
  TfRef<String> get elasticSanId =>
      TfRef.attribute<String>(this, 'elastic_san_id');

  /// Reference to `encryption_type` attribute.
  TfRef<String> get encryptionType =>
      TfRef.attribute<String>(this, 'encryption_type');

  /// Reference to `protocol_type` attribute.
  TfRef<String> get protocolType =>
      TfRef.attribute<String>(this, 'protocol_type');
}
