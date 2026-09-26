// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_subscription`.
const Set<String> _awsShieldSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_shield_subscription`.
final class AwsShieldSubscription extends Resource {
  static const String tfType = 'aws_shield_subscription';

  AwsShieldSubscription({
    required super.localName,
    TfArg<String>? autoRenew,
    TfArg<bool>? skipDestroy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (autoRenew != null) 'auto_renew': autoRenew,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsShieldSubscriptionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
