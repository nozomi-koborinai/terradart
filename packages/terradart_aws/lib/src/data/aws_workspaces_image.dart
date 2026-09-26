// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspaces_image`.
const Set<String> _awsWorkspacesImageSensitive = <String>{};

/// Factory wrapper for `aws_workspaces_image`.
final class DataAwsWorkspacesImage extends Data {
  static const String tfType = 'aws_workspaces_image';

  DataAwsWorkspacesImage({
    required super.localName,
    required TfArg<String> imageId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'image_id': imageId, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspacesImageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `operating_system_type` attribute.
  TfRef<String> get operatingSystemType =>
      TfRef.attribute<String>(this, 'operating_system_type');

  /// Reference to `required_tenancy` attribute.
  TfRef<String> get requiredTenancy =>
      TfRef.attribute<String>(this, 'required_tenancy');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
