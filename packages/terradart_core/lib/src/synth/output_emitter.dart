import 'package:terradart_core/src/app_export.dart';
import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/synth/literal_resolver.dart';
import 'package:terradart_core/src/tf_ref.dart';

/// Result of Pass 2: separate lists of Dart constants and Terraform
/// outputs.
class OutputEmissionResult {
  const OutputEmissionResult({
    required this.dartConstants,
    required this.terraformOutputs,
  });

  final List<DartConstantSpec> dartConstants;
  final List<TerraformOutputSpec> terraformOutputs;
}

/// Spec for a single Dart constant in the generated `app_exports.g.dart`
/// file.
class DartConstantSpec {
  const DartConstantSpec({
    required this.name,
    required this.dartType,
    required this.rhs,
    this.doc,
  });

  /// Identifier in the generated class, e.g. `apiVersion`.
  final String name;

  /// Dart type, e.g. `String`, `int`, `Uri`.
  final String dartType;

  /// Right-hand side, ready to insert after `=`. e.g. `r'orders-prod'`.
  final String rhs;

  /// Optional documentation comment.
  final String? doc;
}

/// Spec for a single Terraform `output` block.
class TerraformOutputSpec {
  const TerraformOutputSpec({
    required this.name,
    required this.value,
    required this.sensitive,
    this.description,
  });

  /// Output block name.
  final String name;

  /// Interpolation string, e.g. `${google_pubsub_topic.orders.name}`.
  final String value;

  final bool sensitive;
  final String? description;
}

/// Pass 2: walks `stack.appExports`, classifies each as Dart-only,
/// Dart + Terraform output, or Terraform-output-only based on the literal
/// resolver and the export's flags.
class OutputEmitter {
  static OutputEmissionResult run({
    required Stack stack,
    required LiteralResolver resolver,
  }) {
    final dartConstants = <DartConstantSpec>[];
    final terraformOutputs = <TerraformOutputSpec>[];

    stack.appExports.forEach((key, export) {
      // `AppExport` is `abstract base class` (not `sealed`) so we can't
      // use exhaustive switch — dispatch on `is`.
      if (export is StringExport) {
        // `StringExport.dartLiteralExpression` is non-null by contract; the
        // base class declares it nullable so we read via the concrete type.
        dartConstants.add(
          DartConstantSpec(
            name: key,
            dartType: export.dartType,
            rhs: export.dartLiteralExpression,
            doc: export.description,
          ),
        );
        // StringExport never emits Terraform output (would be redundant).
        return;
      }

      if (export is ResourceIdExport) {
        final lit = _lookupLiteralForRef<String>(resolver, export.ref);
        final canDartLiteral = lit != null && !export.sensitive;

        if (canDartLiteral) {
          dartConstants.add(
            DartConstantSpec(
              name: key,
              dartType: export.dartType,
              rhs: "r'$lit'",
              doc: export.description,
            ),
          );
        }

        // Force Terraform output when:
        //   - user opted in, OR
        //   - we couldn't materialise a Dart constant (computed/sensitive).
        final mustOutput = export.emitTerraformOutput || !canDartLiteral;
        if (mustOutput) {
          terraformOutputs.add(
            TerraformOutputSpec(
              name: export.terraformOutputName ?? key,
              value: export.ref.interpolation,
              sensitive: export.sensitive,
              description: export.description,
            ),
          );
        }
        return;
      }

      if (export is ResourceAttributeExport) {
        final (addr, attrName) = _refAddress(export.ref);
        final litRaw = resolver.lookup(addr, attrName);
        final canDartLiteral = litRaw != null && !export.sensitive;

        if (canDartLiteral) {
          // Dispatch via a generic helper that captures the export's
          // erased `T` so the encoder is invoked with the correct
          // parameter type.
          final rhs = _runEncoder(export, litRaw, addr, attrName);
          dartConstants.add(
            DartConstantSpec(
              name: key,
              dartType: export.dartType,
              rhs: rhs,
              doc: export.description,
            ),
          );
        }

        final mustOutput = export.emitTerraformOutput || !canDartLiteral;
        if (mustOutput) {
          terraformOutputs.add(
            TerraformOutputSpec(
              name: export.terraformOutputName ?? key,
              value: export.ref.interpolation,
              sensitive: export.sensitive,
              description: export.description,
            ),
          );
        }
        return;
      }

      if (export is EnvBackedExport) {
        dartConstants.add(
          DartConstantSpec(
            name: key,
            dartType: export.dartType,
            rhs: export.dartLiteralExpression,
            doc: export.description,
          ),
        );
        // Never emits Terraform output by contract.
        return;
      }

      // Defensive: AppExport is open for cross-package extension. Unknown
      // variants must fail loudly so users notice the gap.
      throw StateError(
        'OutputEmitter: unknown AppExport variant ${export.runtimeType}; '
        'add a dispatch branch in OutputEmitter.run()',
      );
    });

    return OutputEmissionResult(
      dartConstants: dartConstants,
      terraformOutputs: terraformOutputs,
    );
  }

  /// `TfRef` does not expose `tfAddress` / `attribute` directly — it exposes
  /// `interpolation` and `bareAddress`. To look up literals in
  /// `LiteralResolver` we need the `(owner.tfAddress, attr)` pair, which
  /// lives on `AttributeRef<T>` / `DataRef<T>` (the only ref subtypes that
  /// target a single attribute). `ResourceRef<S>` has no attribute — exports
  /// that wrap it cannot be literal-resolved against an attr.
  static (String, String) _refAddress(TfRef<dynamic> ref) {
    if (ref is AttributeRef) {
      return (ref.owner.tfAddress, ref.attr);
    }
    if (ref is DataRef) {
      return (ref.owner.tfAddress, ref.attr);
    }
    // ResourceRef has no attribute — return a sentinel that will never
    // hit a literal in the resolver. This is correct behaviour: a whole-
    // resource ref can't be materialised as a Dart constant anyway.
    return (ref.bareAddress, '');
  }

  static T? _lookupLiteralForRef<T>(LiteralResolver r, TfRef<T> ref) {
    final (addr, attrName) = _refAddress(ref);
    final v = r.lookup(addr, attrName);
    if (v is T) return v;
    return null;
  }

  /// Dispatches encoder invocation through `ResourceAttributeExport.encodeLiteral`,
  /// which handles the `Object? -> T` cast internally. A bad cast (e.g.
  /// a `String` literal stored under a field that the export declared
  /// as `int`) surfaces as a `TypeError` at the cast boundary, which we
  /// wrap in a clear `StateError` for diagnosability.
  static String _runEncoder(
    ResourceAttributeExport<dynamic> export,
    Object literal,
    String addr,
    String attrName,
  ) {
    try {
      return export.encodeLiteral(literal);
    } catch (e) {
      throw StateError(
        'ResourceAttributeExport encoder for $addr.$attrName could not '
        'encode literal of type ${literal.runtimeType}: $e',
      );
    }
  }
}
