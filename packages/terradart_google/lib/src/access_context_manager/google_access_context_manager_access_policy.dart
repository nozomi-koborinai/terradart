// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_access_policy`.
const Set<String> _googleAccessContextManagerAccessPolicySensitive = <String>{};

/// Factory wrapper for `google_access_context_manager_access_policy`.
///
/// AccessPolicy is a container for AccessLevels (which define the necessary
/// attributes to use GCP services) and ServicePerimeters (which define regions
/// of services able to freely pass data within a perimeter). An access policy
/// is globally visible within an organization, and the restrictions it
/// specifies apply to all projects within an organization.
final class GoogleAccessContextManagerAccessPolicy extends Resource {
  static const String tfType = 'google_access_context_manager_access_policy';

  GoogleAccessContextManagerAccessPolicy({
    required super.localName,
    required TfArg<String> parent,
    required TfArg<String> title,
    TfArg<List<String>>? scopes,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'title': title,
           if (scopes != null) 'scopes': scopes,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');
}
