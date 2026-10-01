// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_ipset`.
const Set<String> _awsGuarddutyIpsetSensitive = <String>{};

/// Guardduty Ipset enum for `format`.
extension type const GuarddutyIpsetFormat._(TfArg<String> _)
    implements TfArg<String> {
  GuarddutyIpsetFormat.variable(String name) : this._(TfArg.variable(name));
  GuarddutyIpsetFormat.expression(String template)
    : this._(TfArg.expression(template));
  const GuarddutyIpsetFormat.arg(TfArg<String> arg) : this._(arg);

  static const txt = GuarddutyIpsetFormat._(TfArgLiteral('TXT'));
  static const stix = GuarddutyIpsetFormat._(TfArgLiteral('STIX'));
  static const otxCsv = GuarddutyIpsetFormat._(TfArgLiteral('OTX_CSV'));
  static const alienVault = GuarddutyIpsetFormat._(TfArgLiteral('ALIEN_VAULT'));
  static const proofPoint = GuarddutyIpsetFormat._(TfArgLiteral('PROOF_POINT'));
  static const fireEye = GuarddutyIpsetFormat._(TfArgLiteral('FIRE_EYE'));

  static const List<GuarddutyIpsetFormat> values = [
    txt,
    stix,
    otxCsv,
    alienVault,
    proofPoint,
    fireEye,
  ];
}

/// Factory wrapper for `aws_guardduty_ipset`.
final class AwsGuarddutyIpset extends Resource {
  static const String tfType = 'aws_guardduty_ipset';

  AwsGuarddutyIpset(
    super.localName, {
    required TfArg<bool> activate,
    required TfArg<String> detectorId,
    required GuarddutyIpsetFormat format,
    required TfArg<String> location,
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
           'activate': activate,
           'detector_id': detectorId,
           'format': format,
           'location': location,
           'name': name,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyIpsetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGuarddutyIpset>`.
  RefTo<AwsGuarddutyIpset> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ip_set_id` attribute.
  TfRef<String> get ipSetId => TfRef.attribute<String>(this, 'ip_set_id');

  /// Reference to `activate` attribute.
  TfRef<bool> get activate => TfRef.attribute<bool>(this, 'activate');

  /// Reference to `detector_id` attribute.
  TfRef<String> get detectorId => TfRef.attribute<String>(this, 'detector_id');

  /// Reference to `format` attribute.
  TfRef<String> get format => TfRef.attribute<String>(this, 'format');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
