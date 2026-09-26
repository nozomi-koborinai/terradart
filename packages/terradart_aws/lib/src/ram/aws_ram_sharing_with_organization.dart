// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ram_sharing_with_organization`.
const Set<String> _awsRamSharingWithOrganizationSensitive = <String>{};

/// Factory wrapper for `aws_ram_sharing_with_organization`.
final class AwsRamSharingWithOrganization extends Resource {
  static const String tfType = 'aws_ram_sharing_with_organization';

  AwsRamSharingWithOrganization({
    required super.localName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _awsRamSharingWithOrganizationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
