// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dns_caa_record`.
const Set<String> _azurermDnsCaaRecordSensitive = <String>{};

/// Typed helper for the `record` block of
/// `azurerm_dns_caa_record` (derived from provider schema).
@immutable
final class DnsCaaRecord {
  const DnsCaaRecord({
    required this.flags,
    required this.tag,
    required this.value,
  });

  final TfArg<num> flags;

  final DnsCaaRecordTag tag;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'flags': flags.toTfJson(),
    'tag': tag.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `tag` — derived from the provider schema description.
extension type const DnsCaaRecordTag._(TfArg<String> _)
    implements TfArg<String> {
  DnsCaaRecordTag.variable(String name) : this._(TfArg.variable(name));
  DnsCaaRecordTag.expression(String template)
    : this._(TfArg.expression(template));
  const DnsCaaRecordTag.arg(TfArg<String> arg) : this._(arg);

  static const issue = DnsCaaRecordTag._(TfArgLiteral('issue'));
  static const issuewild = DnsCaaRecordTag._(TfArgLiteral('issuewild'));
  static const iodef = DnsCaaRecordTag._(TfArgLiteral('iodef'));
  static const contactemail = DnsCaaRecordTag._(TfArgLiteral('contactemail'));

  static const List<DnsCaaRecordTag> values = [
    issue,
    issuewild,
    iodef,
    contactemail,
  ];
}

/// Factory wrapper for `azurerm_dns_caa_record`.
final class AzurermDnsCaaRecord extends Resource {
  static const String tfType = 'azurerm_dns_caa_record';

  AzurermDnsCaaRecord(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<num> ttl,
    required TfArg<String> zoneName,
    required List<DnsCaaRecord> record,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'ttl': ttl,
           'zone_name': zoneName,
           'record': TfArg.literal([for (final e in record) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDnsCaaRecordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDnsCaaRecord>`.
  RefTo<AzurermDnsCaaRecord> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fqdn` attribute.
  TfRef<String> get fqdn => TfRef.attribute<String>(this, 'fqdn');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');
}
