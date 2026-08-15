// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_billing_account_sink`.
const Set<String> _googleLoggingBillingAccountSinkSensitive = <String>{};

/// Typed helper for the `bigquery_options` block of
/// `google_logging_billing_account_sink` (derived from provider schema).
@immutable
final class LoggingBillingAccountSinkBigqueryOptions {
  const LoggingBillingAccountSinkBigqueryOptions({
    required this.usePartitionedTables,
  });

  final TfArg<bool> usePartitionedTables;

  Map<String, Object?> encode() => {
    'use_partitioned_tables': usePartitionedTables.toTfJson(),
  };
}

/// Typed helper for the `exclusions` block of
/// `google_logging_billing_account_sink` (derived from provider schema).
@immutable
final class LoggingBillingAccountSinkExclusions {
  const LoggingBillingAccountSinkExclusions({
    this.description,
    this.disabled,
    required this.filter,
    required this.name,
  });

  final TfArg<String>? description;

  final TfArg<bool>? disabled;

  final TfArg<String> filter;

  final TfArg<String> name;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (disabled != null) 'disabled': disabled!.toTfJson(),
    'filter': filter.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Factory wrapper for `google_logging_billing_account_sink`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleLoggingBillingAccountSink extends Resource {
  static const String tfType = 'google_logging_billing_account_sink';

  GoogleLoggingBillingAccountSink({
    required super.localName,
    required TfArg<String> billingAccount,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> destination,
    TfArg<bool>? disabled,
    TfArg<String>? filter,
    required TfArg<String> name,
    LoggingBillingAccountSinkBigqueryOptions? bigqueryOptions,
    List<LoggingBillingAccountSinkExclusions>? exclusions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'billing_account': billingAccount,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'destination': destination,
           if (disabled != null) 'disabled': disabled,
           if (filter != null) 'filter': filter,
           'name': name,
           if (bigqueryOptions != null)
             'bigquery_options': TfArg.literal(bigqueryOptions.encode()),
           if (exclusions != null)
             'exclusions': TfArg.literal([
               for (final e in exclusions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingBillingAccountSinkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `writer_identity` attribute.
  TfRef<String> get writerIdentity =>
      TfRef.attribute<String>(this, 'writer_identity');
}
