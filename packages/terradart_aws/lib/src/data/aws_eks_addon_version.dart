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
           if (mostRecent != null) 'most_recent': mostRecent,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksAddonVersionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
