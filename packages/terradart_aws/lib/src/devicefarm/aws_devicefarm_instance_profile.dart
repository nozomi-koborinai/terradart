// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_devicefarm_instance_profile`.
const Set<String> _awsDevicefarmInstanceProfileSensitive = <String>{};

/// Factory wrapper for `aws_devicefarm_instance_profile`.
final class AwsDevicefarmInstanceProfile extends Resource {
  static const String tfType = 'aws_devicefarm_instance_profile';

  AwsDevicefarmInstanceProfile({
    required super.localName,
    TfArg<String>? description,
    TfArg<List<String>>? excludeAppPackagesFromCleanup,
    required TfArg<String> name,
    TfArg<bool>? packageCleanup,
    TfArg<bool>? rebootAfterUse,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (excludeAppPackagesFromCleanup != null)
             'exclude_app_packages_from_cleanup': excludeAppPackagesFromCleanup,
           'name': name,
           if (packageCleanup != null) 'package_cleanup': packageCleanup,
           if (rebootAfterUse != null) 'reboot_after_use': rebootAfterUse,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevicefarmInstanceProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
