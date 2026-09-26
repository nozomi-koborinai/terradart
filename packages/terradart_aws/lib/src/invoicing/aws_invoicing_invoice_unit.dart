// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_invoicing_invoice_unit`.
const Set<String> _awsInvoicingInvoiceUnitSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_invoicing_invoice_unit` (derived from provider schema).
@immutable
final class InvoicingInvoiceUnitRule {
  const InvoicingInvoiceUnitRule({required this.linkedAccounts});

  final TfArg<List<Object?>> linkedAccounts;

  Map<String, Object?> encode() => {
    'linked_accounts': linkedAccounts.toTfJson(),
  };
}

/// Factory wrapper for `aws_invoicing_invoice_unit`.
final class AwsInvoicingInvoiceUnit extends Resource {
  static const String tfType = 'aws_invoicing_invoice_unit';

  AwsInvoicingInvoiceUnit({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> invoiceReceiver,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? taxInheritanceDisabled,
    List<InvoicingInvoiceUnitRule>? rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'invoice_receiver': invoiceReceiver,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (taxInheritanceDisabled != null)
             'tax_inheritance_disabled': taxInheritanceDisabled,
           if (rule != null)
             'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsInvoicingInvoiceUnitSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `last_modified` attribute.
  TfRef<String> get lastModified =>
      TfRef.attribute<String>(this, 'last_modified');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
