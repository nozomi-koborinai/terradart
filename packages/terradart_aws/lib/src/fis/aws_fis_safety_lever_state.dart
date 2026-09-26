// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fis_safety_lever_state`.
const Set<String> _awsFisSafetyLeverStateSensitive = <String>{};

/// Typed helper for the `state` block of
/// `aws_fis_safety_lever_state` (derived from provider schema).
@immutable
final class FisSafetyLeverStateState {
  const FisSafetyLeverStateState({required this.reason, required this.status});

  final TfArg<String> reason;

  final TfArg<String> status;

  Map<String, Object?> encode() => {
    'reason': reason.toTfJson(),
    'status': status.toTfJson(),
  };
}

/// Factory wrapper for `aws_fis_safety_lever_state`.
final class AwsFisSafetyLeverState extends Resource {
  static const String tfType = 'aws_fis_safety_lever_state';

  AwsFisSafetyLeverState({
    required super.localName,
    TfArg<String>? region,
    List<FisSafetyLeverStateState>? state,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (state != null)
             'state': TfArg.literal([for (final e in state) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFisSafetyLeverStateSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
