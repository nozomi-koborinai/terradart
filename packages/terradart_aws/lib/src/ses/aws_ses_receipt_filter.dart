// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_receipt_filter`.
const Set<String> _awsSesReceiptFilterSensitive = <String>{};

/// Factory wrapper for `aws_ses_receipt_filter`.
final class AwsSesReceiptFilter extends Resource {
  static const String tfType = 'aws_ses_receipt_filter';

  AwsSesReceiptFilter({
    required super.localName,
    required TfArg<String> cidr,
    required TfArg<String> name,
    required TfArg<String> policy,
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
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesReceiptFilterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
