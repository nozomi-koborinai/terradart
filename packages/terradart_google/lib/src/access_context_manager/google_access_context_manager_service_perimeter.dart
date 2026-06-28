// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_service_perimeter`.
const Set<String> _googleAccessContextManagerServicePerimeterSensitive =
    <String>{};

/// Access Context Manager Service Perimeter Perimeter enum for `perimeter_type`.
enum AccessContextManagerServicePerimeterPerimeterType
    implements TerraformEnum {
  perimeterTypeRegular('PERIMETER_TYPE_REGULAR'),
  perimeterTypeBridge('PERIMETER_TYPE_BRIDGE');

  const AccessContextManagerServicePerimeterPerimeterType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_access_context_manager_service_perimeter`.
///
/// ServicePerimeter describes a set of GCP resources which can freely import
/// and export data amongst themselves, but not export outside of the
/// ServicePerimeter. If a request with a source within this ServicePerimeter
/// has a target outside of the ServicePerimeter, the request will be blocked.
/// Otherwise the request is allowed. There are two types of Service Perimeter -
/// Regular and Bridge. Regular Service Perimeters cannot overlap, a single GCP
/// project can only belong to a single regular Service Perimeter. Service
/// Perimeter Bridges can contain only GCP projects as members, a single GCP
/// project may belong to multiple Service Perimeter Bridges.
final class GoogleAccessContextManagerServicePerimeter extends Resource {
  static const String tfType =
      'google_access_context_manager_service_perimeter';

  GoogleAccessContextManagerServicePerimeter({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parent,
    required TfArg<String> title,
    TfArg<String>? description,
    TfArg<String>? perimeterType,
    TfArg<bool>? useExplicitDryRunSpec,
    TfArg<Map<String, dynamic>>? spec,
    TfArg<Map<String, dynamic>>? status,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent': parent,
           'title': title,
           if (description != null) 'description': description,
           if (perimeterType != null) 'perimeter_type': perimeterType,
           if (useExplicitDryRunSpec != null)
             'use_explicit_dry_run_spec': useExplicitDryRunSpec,
           if (spec != null) 'spec': spec,
           if (status != null) 'status': status,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerServicePerimeterSensitive;

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
