// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_hosted_public_virtual_interface_accepter`.
const Set<String> _awsDxHostedPublicVirtualInterfaceAccepterSensitive =
    <String>{};

/// Factory wrapper for `aws_dx_hosted_public_virtual_interface_accepter`.
final class AwsDxHostedPublicVirtualInterfaceAccepter extends Resource {
  static const String tfType =
      'aws_dx_hosted_public_virtual_interface_accepter';

  AwsDxHostedPublicVirtualInterfaceAccepter({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualInterfaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'virtual_interface_id': virtualInterfaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDxHostedPublicVirtualInterfaceAccepterSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
