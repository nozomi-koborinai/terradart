// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_virtual_mfa_device`.
const Set<String> _awsIamVirtualMfaDeviceSensitive = <String>{};

/// Factory wrapper for `aws_iam_virtual_mfa_device`.
final class AwsIamVirtualMfaDevice extends Resource {
  static const String tfType = 'aws_iam_virtual_mfa_device';

  AwsIamVirtualMfaDevice({
    required super.localName,
    TfArg<String>? path,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualMfaDeviceName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (path != null) 'path': path,
           if (tags != null) 'tags': tags,
           'virtual_mfa_device_name': virtualMfaDeviceName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamVirtualMfaDeviceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `base_32_string_seed` attribute.
  TfRef<String> get base32StringSeed =>
      TfRef.attribute<String>(this, 'base_32_string_seed');

  /// Reference to `enable_date` attribute.
  TfRef<String> get enableDate => TfRef.attribute<String>(this, 'enable_date');

  /// Reference to `qr_code_png` attribute.
  TfRef<String> get qrCodePng => TfRef.attribute<String>(this, 'qr_code_png');

  /// Reference to `serial_number` attribute.
  TfRef<String> get serialNumber =>
      TfRef.attribute<String>(this, 'serial_number');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
