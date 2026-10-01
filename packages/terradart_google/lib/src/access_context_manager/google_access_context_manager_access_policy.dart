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

  GoogleAccessContextManagerAccessPolicy(
    super.localName, {
    required TfArg<String> parent,
    required TfArg<String> title,
    TfArg<List<String>>? scopes,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'parent': parent,
           'title': title,
           'scopes': ?scopes,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleAccessContextManagerAccessPolicy>`.
  RefTo<GoogleAccessContextManagerAccessPolicy> get ref => RefTo.of(this);

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');
}
