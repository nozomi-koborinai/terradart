// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_vcenter_credentials`.
const Set<String> _googleVmwareengineVcenterCredentialsSensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_vcenter_credentials`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVmwareengineVcenterCredentials extends Data {
  static const String tfType = 'google_vmwareengine_vcenter_credentials';

  DataGoogleVmwareengineVcenterCredentials({
    required super.localName,
    required TfArg<String> parent,
  }) : super(terraformType: tfType, argMap: {'parent': parent});

  @override
  Set<String> get sensitiveFields =>
      _googleVmwareengineVcenterCredentialsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
