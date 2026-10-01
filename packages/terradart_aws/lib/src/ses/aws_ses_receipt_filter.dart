// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_receipt_filter`.
const Set<String> _awsSesReceiptFilterSensitive = <String>{};

/// Ses Receipt Filter enum for `policy`.
extension type const SesReceiptFilterPolicy._(TfArg<String> _)
    implements TfArg<String> {
  SesReceiptFilterPolicy.variable(String name) : this._(TfArg.variable(name));
  SesReceiptFilterPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const SesReceiptFilterPolicy.arg(TfArg<String> arg) : this._(arg);

  static const block = SesReceiptFilterPolicy._(TfArgLiteral('Block'));
  static const allow = SesReceiptFilterPolicy._(TfArgLiteral('Allow'));

  static const List<SesReceiptFilterPolicy> values = [block, allow];
}

/// Factory wrapper for `aws_ses_receipt_filter`.
final class AwsSesReceiptFilter extends Resource {
  static const String tfType = 'aws_ses_receipt_filter';

  AwsSesReceiptFilter(
    super.localName, {
    required TfArg<String> cidr,
    required TfArg<String> name,
    required SesReceiptFilterPolicy policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cidr': cidr,
           'name': name,
           'policy': policy,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesReceiptFilterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesReceiptFilter>`.
  RefTo<AwsSesReceiptFilter> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `policy` attribute.
  TfRef<String> get policy => TfRef.attribute<String>(this, 'policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
