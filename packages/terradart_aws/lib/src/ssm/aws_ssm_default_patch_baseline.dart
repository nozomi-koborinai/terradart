// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_default_patch_baseline`.
const Set<String> _awsSsmDefaultPatchBaselineSensitive = <String>{};

/// Ssm Default Patch Baseline Operating enum for `operating_system`.
enum SsmDefaultPatchBaselineOperatingSystem implements TerraformEnum {
  windows('WINDOWS'),
  amazonLinux('AMAZON_LINUX'),
  amazonLinux2('AMAZON_LINUX_2'),
  amazonLinux2022('AMAZON_LINUX_2022'),
  ubuntu('UBUNTU'),
  redhatEnterpriseLinux('REDHAT_ENTERPRISE_LINUX'),
  suse('SUSE'),
  centos('CENTOS'),
  oracleLinux('ORACLE_LINUX'),
  debian('DEBIAN'),
  macos('MACOS'),
  raspbian('RASPBIAN'),
  rockyLinux('ROCKY_LINUX'),
  almaLinux('ALMA_LINUX'),
  amazonLinux2023('AMAZON_LINUX_2023');

  const SsmDefaultPatchBaselineOperatingSystem(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ssm_default_patch_baseline`.
final class AwsSsmDefaultPatchBaseline extends Resource {
  static const String tfType = 'aws_ssm_default_patch_baseline';

  AwsSsmDefaultPatchBaseline(
    super.localName, {
    required TfArg<String> baselineId,
    required TfArg<SsmDefaultPatchBaselineOperatingSystem> operatingSystem,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'baseline_id': baselineId,
           'operating_system': operatingSystem,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmDefaultPatchBaselineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmDefaultPatchBaseline>`.
  RefTo<AwsSsmDefaultPatchBaseline> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `baseline_id` attribute.
  TfRef<String> get baselineId => TfRef.attribute<String>(this, 'baseline_id');

  /// Reference to `operating_system` attribute.
  TfRef<String> get operatingSystem =>
      TfRef.attribute<String>(this, 'operating_system');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
