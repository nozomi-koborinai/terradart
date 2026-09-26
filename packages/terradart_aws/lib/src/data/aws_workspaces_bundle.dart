// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspaces_bundle`.
const Set<String> _awsWorkspacesBundleSensitive = <String>{};

/// Factory wrapper for `aws_workspaces_bundle`.
final class DataAwsWorkspacesBundle extends Data {
  static const String tfType = 'aws_workspaces_bundle';

  DataAwsWorkspacesBundle({
    required super.localName,
    TfArg<String>? bundleId,
    TfArg<String>? name,
    TfArg<String>? owner,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (bundleId != null) 'bundle_id': bundleId,
           if (name != null) 'name': name,
           if (owner != null) 'owner': owner,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspacesBundleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `compute_type` attribute.
  TfRef<List<Map<String, Object?>>> get computeType =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'compute_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `root_storage` attribute.
  TfRef<List<Map<String, Object?>>> get rootStorage =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'root_storage');

  /// Reference to `user_storage` attribute.
  TfRef<List<Map<String, Object?>>> get userStorage =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'user_storage');
}
