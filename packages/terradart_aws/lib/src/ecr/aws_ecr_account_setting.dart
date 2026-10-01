// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_account_setting`.
const Set<String> _awsEcrAccountSettingSensitive = <String>{};

/// Ecr Account Setting enum for `name`.
extension type const EcrAccountSettingName._(TfArg<String> _)
    implements TfArg<String> {
  EcrAccountSettingName.variable(String name) : this._(TfArg.variable(name));
  EcrAccountSettingName.expression(String template)
    : this._(TfArg.expression(template));
  const EcrAccountSettingName.arg(TfArg<String> arg) : this._(arg);

  static const basicScanTypeVersion = EcrAccountSettingName._(
    TfArgLiteral('BASIC_SCAN_TYPE_VERSION'),
  );
  static const blobMounting = EcrAccountSettingName._(
    TfArgLiteral('BLOB_MOUNTING'),
  );
  static const registryPolicyScope = EcrAccountSettingName._(
    TfArgLiteral('REGISTRY_POLICY_SCOPE'),
  );

  static const List<EcrAccountSettingName> values = [
    basicScanTypeVersion,
    blobMounting,
    registryPolicyScope,
  ];
}

/// Ecr Account Setting enum for `value`.
extension type const EcrAccountSettingValue._(TfArg<String> _)
    implements TfArg<String> {
  EcrAccountSettingValue.variable(String name) : this._(TfArg.variable(name));
  EcrAccountSettingValue.expression(String template)
    : this._(TfArg.expression(template));
  const EcrAccountSettingValue.arg(TfArg<String> arg) : this._(arg);

  static const awsNative = EcrAccountSettingValue._(TfArgLiteral('AWS_NATIVE'));
  static const clair = EcrAccountSettingValue._(TfArgLiteral('CLAIR'));
  static const disabled = EcrAccountSettingValue._(TfArgLiteral('DISABLED'));
  static const enabled = EcrAccountSettingValue._(TfArgLiteral('ENABLED'));
  static const v1 = EcrAccountSettingValue._(TfArgLiteral('V1'));
  static const v2 = EcrAccountSettingValue._(TfArgLiteral('V2'));

  static const List<EcrAccountSettingValue> values = [
    awsNative,
    clair,
    disabled,
    enabled,
    v1,
    v2,
  ];
}

/// Factory wrapper for `aws_ecr_account_setting`.
final class AwsEcrAccountSetting extends Resource {
  static const String tfType = 'aws_ecr_account_setting';

  AwsEcrAccountSetting(
    super.localName, {
    required EcrAccountSettingName name,
    TfArg<String>? region,
    required EcrAccountSettingValue value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, 'value': value},
       );

  @override
  Set<String> get sensitiveFields => _awsEcrAccountSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcrAccountSetting>`.
  RefTo<AwsEcrAccountSetting> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
