// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_billing_service_account`.
const Set<String> _awsBillingServiceAccountSensitive = <String>{};

/// Factory wrapper for `aws_billing_service_account`.
final class DataAwsBillingServiceAccount extends Data {
  static const String tfType = 'aws_billing_service_account';

  DataAwsBillingServiceAccount({
    required super.localName,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields => _awsBillingServiceAccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
