// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_external_access_rule`.
const Set<String> _googleVmwareengineExternalAccessRuleSensitive = <String>{};

/// Factory wrapper for `google_vmwareengine_external_access_rule`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleVmwareengineExternalAccessRule extends Data {
  static const String tfType = 'google_vmwareengine_external_access_rule';

  DataGoogleVmwareengineExternalAccessRule({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
  }) : super(terraformType: tfType, argMap: {'name': name, 'parent': parent});

  @override
  Set<String> get sensitiveFields =>
      _googleVmwareengineExternalAccessRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `destination_ip_ranges` attribute.
  TfRef<List<Map<String, Object?>>> get destinationIpRanges =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'destination_ip_ranges',
      );

  /// Reference to `destination_ports` attribute.
  TfRef<List<String>> get destinationPorts =>
      TfRef.attribute<List<String>>(this, 'destination_ports');

  /// Reference to `ip_protocol` attribute.
  TfRef<String> get ipProtocol => TfRef.attribute<String>(this, 'ip_protocol');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `source_ip_ranges` attribute.
  TfRef<List<Map<String, Object?>>> get sourceIpRanges =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'source_ip_ranges');

  /// Reference to `source_ports` attribute.
  TfRef<List<String>> get sourcePorts =>
      TfRef.attribute<List<String>>(this, 'source_ports');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
