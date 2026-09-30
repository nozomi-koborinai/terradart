// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_addon_version`.
const Set<String> _awsEksAddonVersionSensitive = <String>{};

/// Factory wrapper for `aws_eks_addon_version`.
final class DataAwsEksAddonVersion extends Data {
  static const String tfType = 'aws_eks_addon_version';

  DataAwsEksAddonVersion({
    required super.localName,
    required TfArg<String> addonName,
    required TfArg<String> kubernetesVersion,
    TfArg<bool>? mostRecent,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'addon_name': addonName,
           'kubernetes_version': kubernetesVersion,
           'most_recent': ?mostRecent,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksAddonVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `addon_name` attribute.
  TfRef<String> get addonNameRef => TfRef.attribute<String>(this, 'addon_name');

  /// Reference to `kubernetes_version` attribute.
  TfRef<String> get kubernetesVersionRef =>
      TfRef.attribute<String>(this, 'kubernetes_version');

  /// Reference to `most_recent` attribute.
  TfRef<bool> get mostRecentRef => TfRef.attribute<bool>(this, 'most_recent');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
