// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssm_default_patch_baseline`.
const Set<String> _awsSsmDefaultPatchBaselineSensitive = <String>{};

/// Ssm Default Patch Baseline Operating enum for `operating_system`.
extension type const SsmDefaultPatchBaselineOperatingSystem._(TfArg<String> _)
    implements TfArg<String> {
  SsmDefaultPatchBaselineOperatingSystem.variable(String name)
    : this._(TfArg.variable(name));
  SsmDefaultPatchBaselineOperatingSystem.expression(String template)
    : this._(TfArg.expression(template));
  const SsmDefaultPatchBaselineOperatingSystem.arg(TfArg<String> arg)
    : this._(arg);

  static const windows = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('WINDOWS'),
  );
  static const amazonLinux = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('AMAZON_LINUX'),
  );
  static const amazonLinux2 = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('AMAZON_LINUX_2'),
  );
  static const amazonLinux2022 = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('AMAZON_LINUX_2022'),
  );
  static const ubuntu = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('UBUNTU'),
  );
  static const redhatEnterpriseLinux = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('REDHAT_ENTERPRISE_LINUX'),
  );
  static const suse = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('SUSE'),
  );
  static const centos = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('CENTOS'),
  );
  static const oracleLinux = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('ORACLE_LINUX'),
  );
  static const debian = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('DEBIAN'),
  );
  static const macos = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('MACOS'),
  );
  static const raspbian = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('RASPBIAN'),
  );
  static const rockyLinux = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('ROCKY_LINUX'),
  );
  static const almaLinux = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('ALMA_LINUX'),
  );
  static const amazonLinux2023 = SsmDefaultPatchBaselineOperatingSystem._(
    TfArgLiteral('AMAZON_LINUX_2023'),
  );

  static const List<SsmDefaultPatchBaselineOperatingSystem> values = [
    windows,
    amazonLinux,
    amazonLinux2,
    amazonLinux2022,
    ubuntu,
    redhatEnterpriseLinux,
    suse,
    centos,
    oracleLinux,
    debian,
    macos,
    raspbian,
    rockyLinux,
    almaLinux,
    amazonLinux2023,
  ];
}

/// Factory wrapper for `aws_ssm_default_patch_baseline`.
final class AwsSsmDefaultPatchBaseline extends Resource {
  static const String tfType = 'aws_ssm_default_patch_baseline';

  AwsSsmDefaultPatchBaseline(
    super.localName, {
    required TfArg<String> baselineId,
    required SsmDefaultPatchBaselineOperatingSystem operatingSystem,
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
