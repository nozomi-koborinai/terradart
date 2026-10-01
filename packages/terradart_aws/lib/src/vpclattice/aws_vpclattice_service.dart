// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_service`.
const Set<String> _awsVpclatticeServiceSensitive = <String>{};

/// Vpclattice Service Auth enum for `auth_type`.
extension type const VpclatticeServiceAuthType._(TfArg<String> _)
    implements TfArg<String> {
  VpclatticeServiceAuthType.variable(String name)
    : this._(TfArg.variable(name));
  VpclatticeServiceAuthType.expression(String template)
    : this._(TfArg.expression(template));
  const VpclatticeServiceAuthType.arg(TfArg<String> arg) : this._(arg);

  static const none = VpclatticeServiceAuthType._(TfArgLiteral('NONE'));
  static const awsIam = VpclatticeServiceAuthType._(TfArgLiteral('AWS_IAM'));

  static const List<VpclatticeServiceAuthType> values = [none, awsIam];
}

/// Factory wrapper for `aws_vpclattice_service`.
final class AwsVpclatticeService extends Resource {
  static const String tfType = 'aws_vpclattice_service';

  AwsVpclatticeService(
    super.localName, {
    VpclatticeServiceAuthType? authType,
    TfArg<String>? certificateArn,
    TfArg<String>? customDomainName,
    TfArg<num>? idleTimeoutSeconds,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auth_type': ?authType,
           'certificate_arn': ?certificateArn,
           'custom_domain_name': ?customDomainName,
           'idle_timeout_seconds': ?idleTimeoutSeconds,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsVpclatticeService>`.
  RefTo<AwsVpclatticeService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `dns_entry` attribute.
  TfRef<List<Map<String, Object?>>> get dnsEntry =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_entry');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `auth_type` attribute.
  TfRef<String> get authType => TfRef.attribute<String>(this, 'auth_type');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `custom_domain_name` attribute.
  TfRef<String> get customDomainName =>
      TfRef.attribute<String>(this, 'custom_domain_name');

  /// Reference to `idle_timeout_seconds` attribute.
  TfRef<num> get idleTimeoutSeconds =>
      TfRef.attribute<num>(this, 'idle_timeout_seconds');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
