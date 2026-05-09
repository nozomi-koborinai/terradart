import 'package:terradart_core/terradart_core.dart';

/// Minimal concrete `Stack` subclass for tests. Mirrors the helper in
/// `packages/terradart/test/helpers/fake_resources.dart`. We can't import
/// test-private helpers from the sibling package, so we redeclare the
/// trivial subclass here.
class TestStack extends Stack {
  TestStack({super.providers = const [], super.backend});

  @override
  Future<void> synth({required String outDir}) async =>
      throw UnimplementedError('use StackSynth.synth(...) directly in tests');
}
