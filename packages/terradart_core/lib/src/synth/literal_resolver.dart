import 'package:terradart_core/src/stack.dart';
import 'package:terradart_core/src/tf_arg.dart';

/// Pass-1 product: every literal value supplied to any resource/data
/// source in a [Stack], indexed by `(tfAddress, attrName)` where
/// `attrName` is the snake_case Terraform attribute name (matching what
/// `TfRef.attribute` references).
class LiteralResolver {
  const LiteralResolver._(this._byAddress);

  /// Walks `stack.resources` and `stack.dataSources`, indexing every
  /// `TfArgLiteral<T>` value. `TfArgRef` and any nullable argMap entries
  /// are skipped.
  factory LiteralResolver.fromStack(Stack stack) {
    final out = <String, Map<String, Object?>>{};

    void index(String tfAddress, Map<String, TfArg<dynamic>?> argMap) {
      final attrs = <String, Object?>{};
      argMap.forEach((attrName, arg) {
        if (arg is TfArgLiteral) {
          attrs[attrName] = arg.value;
        }
        // TfArgRef and any future variants intentionally skipped — the
        // lookup simply returns null for those, signalling Pass 2 to fall
        // back to a Terraform output.
      });
      if (attrs.isNotEmpty) out[tfAddress] = attrs;
    }

    for (final r in stack.resources) {
      index(r.tfAddress, r.argMap);
    }
    for (final d in stack.dataSources) {
      index(d.tfAddress, d.argMap);
    }

    return LiteralResolver._(out);
  }

  /// `tfAddress` → (snake_case attr name → literal value).
  final Map<String, Map<String, Object?>> _byAddress;

  /// Returns the literal value for `(tfAddress, attrName)` if it was
  /// supplied as a [TfArgLiteral]; otherwise `null`.
  Object? lookup(String tfAddress, String attrName) =>
      _byAddress[tfAddress]?[attrName];

  /// Diagnostics-only: number of (resource, attr) pairs indexed.
  int get size => _byAddress.values.fold<int>(0, (acc, m) => acc + m.length);
}
