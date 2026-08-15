// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_external_address`.
const Set<String> _googleVmwareengineExternalAddressSensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_external_address`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVmwareengineExternalAddress extends Data {
  static const String tfType = 'google_vmwareengine_external_address';

  DataGoogleVmwareengineExternalAddress({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
  }) : super(terraformType: tfType, argMap: {'name': name, 'parent': parent});

  @override
  Set<String> get sensitiveFields =>
      _googleVmwareengineExternalAddressSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `external_ip` attribute.
  TfRef<String> get externalIp => TfRef.attribute<String>(this, 'external_ip');

  /// Reference to `internal_ip` attribute.
  TfRef<String> get internalIp => TfRef.attribute<String>(this, 'internal_ip');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
