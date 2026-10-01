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
           'description': ?description,
           'exclude_app_packages_from_cleanup': ?excludeAppPackagesFromCleanup,
           'name': name,
           'package_cleanup': ?packageCleanup,
           'reboot_after_use': ?rebootAfterUse,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDevicefarmInstanceProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDevicefarmInstanceProfile>`.
  RefTo<AwsDevicefarmInstanceProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `exclude_app_packages_from_cleanup` attribute.
  TfRef<List<String>> get excludeAppPackagesFromCleanup =>
      TfRef.attribute<List<String>>(this, 'exclude_app_packages_from_cleanup');

  /// Reference to `package_cleanup` attribute.
  TfRef<bool> get packageCleanup =>
      TfRef.attribute<bool>(this, 'package_cleanup');

  /// Reference to `reboot_after_use` attribute.
  TfRef<bool> get rebootAfterUse =>
      TfRef.attribute<bool>(this, 'reboot_after_use');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
