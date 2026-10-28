// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_public_ips`.
const Set<String> _azurermPublicIpsSensitive = <String>{};

/// Data Public Ips Allocation enum for `allocation_type`.
extension type const DataPublicIpsAllocationType._(TfArg<String> _)
    implements TfArg<String> {
  DataPublicIpsAllocationType.variable(String name)
    : this._(TfArg.variable(name));
  DataPublicIpsAllocationType.expression(String template)
    : this._(TfArg.expression(template));
  const DataPublicIpsAllocationType.arg(TfArg<String> arg) : this._(arg);

  static const dynamic = DataPublicIpsAllocationType._(TfArgLiteral('Dynamic'));
  static const static = DataPublicIpsAllocationType._(TfArgLiteral('Static'));

  static const List<DataPublicIpsAllocationType> values = [dynamic, static];
}

/// Data Public Ips Attachment enum for `attachment_status`.
extension type const DataPublicIpsAttachmentStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataPublicIpsAttachmentStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataPublicIpsAttachmentStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataPublicIpsAttachmentStatus.arg(TfArg<String> arg) : this._(arg);

  static const attached = DataPublicIpsAttachmentStatus._(
    TfArgLiteral('Attached'),
  );
  static const unattached = DataPublicIpsAttachmentStatus._(
    TfArgLiteral('Unattached'),
  );

  static const List<DataPublicIpsAttachmentStatus> values = [
    attached,
    unattached,
  ];
}

/// Factory wrapper for `azurerm_public_ips`.
final class DataAzurermPublicIps extends Data {
  static const String tfType = 'azurerm_public_ips';

  DataAzurermPublicIps(
    super.localName, {
    DataPublicIpsAllocationType? allocationType,
    DataPublicIpsAttachmentStatus? attachmentStatus,
    TfArg<String>? namePrefix,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allocation_type': ?allocationType,
           'attachment_status': ?attachmentStatus,
           'name_prefix': ?namePrefix,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPublicIpsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `public_ips` attribute.
  TfRef<List<Map<String, Object?>>> get publicIps =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'public_ips');

  /// Reference to `allocation_type` attribute.
  TfRef<String> get allocationType =>
      TfRef.attribute<String>(this, 'allocation_type');

  /// Reference to `attachment_status` attribute.
  TfRef<String> get attachmentStatus =>
      TfRef.attribute<String>(this, 'attachment_status');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
