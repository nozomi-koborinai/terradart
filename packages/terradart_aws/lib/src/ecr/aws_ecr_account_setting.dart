// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_account_setting`.
const Set<String> _awsEcrAccountSettingSensitive = <String>{};

/// Ecr Account Setting enum for `name`.
enum EcrAccountSettingName implements TerraformEnum {
  basicScanTypeVersion('BASIC_SCAN_TYPE_VERSION'),
  blobMounting('BLOB_MOUNTING'),
  registryPolicyScope('REGISTRY_POLICY_SCOPE');

  const EcrAccountSettingName(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ecr Account Setting enum for `value`.
enum EcrAccountSettingValue implements TerraformEnum {
  awsNative('AWS_NATIVE'),
  clair('CLAIR'),
  disabled('DISABLED'),
  enabled('ENABLED'),
  v1('V1'),
  v2('V2');

  const EcrAccountSettingValue(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ecr_account_setting`.
final class AwsEcrAccountSetting extends Resource {
  static const String tfType = 'aws_ecr_account_setting';

  AwsEcrAccountSetting({
    required super.localName,
    required TfArg<EcrAccountSettingName> name,
    TfArg<String>? region,
    required TfArg<EcrAccountSettingValue> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrAccountSettingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcrAccountSetting>`.
  RefTo<AwsEcrAccountSetting> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
