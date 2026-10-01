// `RefTo.read` is what generated data-source getters call.
// ignore_for_file: invalid_use_of_internal_member
import 'package:terradart_core/terradart_core.dart';
import 'package:test/test.dart';

import 'helpers/fake_resources.dart';

final class _FakeNetwork extends Resource {
  _FakeNetwork({required super.localName})
    : super(terraformType: 'fake_network', argMap: const {});

  @override
  Set<String> get sensitiveFields => const {};

  RefTo<_FakeNetwork> get ref => RefTo.of(this);
}

final class _FakeNetworkData extends Data {
  _FakeNetworkData({required super.localName})
    : super(terraformType: 'fake_network', argMap: const {});

  @override
  Set<String> get sensitiveFields => const {};

  RefTo<_FakeNetwork> get ref => RefTo.read(this);
}

final class _FakeSubnet extends Resource {
  _FakeSubnet({required super.localName, required RefTo<_FakeNetwork> network})
    : super(
        terraformType: 'fake_subnet',
        argMap: {'network': network.encodeAs('self_link')},
      );

  @override
  Set<String> get sensitiveFields => const {};
}

final class _FakeInstance extends Resource {
  _FakeInstance({
    required super.localName,
    required TfArg<List<RefTo<_FakeNetwork>>> networks,
  }) : super(
         terraformType: 'fake_instance',
         argMap: {'networks': networks.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => const {};
}

void main() {
  final vpc = _FakeNetwork(localName: 'main');

  test('a resource reference emits the attribute the argument picks', () {
    expect(
      vpc.ref.encodeAs('self_link').toTfJson(),
      r'${fake_network.main.self_link}',
    );
    expect(vpc.ref.encodeAs('id').toTfJson(), r'${fake_network.main.id}');
  });

  test('a data source reference reads the data block', () {
    final ref = _FakeNetworkData(localName: 'default').ref.encodeAs('name');
    expect(ref.toTfJson(), r'${data.fake_network.default.name}');
    expect((ref as TfArgRef<String>).ref, isA<DataRef<String>>());
  });

  test('pinned keeps its attribute whatever the argument picks', () {
    final pinned = vpc.ref.pinned('id');
    expect(pinned.encodeAs('self_link').toTfJson(), r'${fake_network.main.id}');
  });

  test('alsoAs reads another attribute of a block, never of a value', () {
    expect(
      vpc.ref.alsoAs('project')?.toTfJson(),
      r'${fake_network.main.project}',
    );
    expect(
      vpc.ref.pinned('id').alsoAs('project')?.toTfJson(),
      r'${fake_network.main.project}',
    );
    expect(
      _FakeNetworkData(localName: 'd').ref.alsoAs('project')?.toTfJson(),
      r'${data.fake_network.d.project}',
    );
    expect(RefTo<_FakeNetwork>.literal('n').alsoAs('project'), isNull);
  });

  test('values pass through unchanged', () {
    expect(
      RefTo<_FakeNetwork>.literal(
        'projects/p/global/networks/n',
      ).encodeAs('self_link').toTfJson(),
      'projects/p/global/networks/n',
    );
    expect(
      RefTo<_FakeNetwork>.variable('net').encodeAs('self_link').toTfJson(),
      r'${var.net}',
    );
    expect(
      RefTo<_FakeNetwork>.expression(
        r'${local.net}',
      ).encodeAs('self_link').toTfJson(),
      r'${local.net}',
    );
    final arg = RefTo<_FakeNetwork>.arg(
      TfArg.ref(TfRef.attribute<String>(vpc, 'name')),
    );
    expect(arg.encodeAs('self_link').toTfJson(), r'${fake_network.main.name}');
    expect(
      RefTo<_FakeNetwork>.literal(
        'n',
      ).pinned('id').encodeAs('self_link').toTfJson(),
      'n',
    );
  });

  test('a typed argument synthesizes to the reference', () {
    final stack = TestStack(
      providers: const [
        FakeStackProvider(
          providerName: 'fake',
          source: 'example/fake',
          versionConstraint: '~> 1.0',
        ),
      ],
    );
    stack
      ..add(vpc)
      ..add(_FakeSubnet(localName: 'app', network: vpc.ref))
      ..add(_FakeSubnet(localName: 'other', network: .literal('legacy')));
    final resources = stack.synth().tfJson['resource'] as Map<String, Object?>;
    final subnets = resources['fake_subnet']! as Map<String, Object?>;
    expect(
      (subnets['app']! as Map)['network'],
      r'${fake_network.main.self_link}',
    );
    expect((subnets['other']! as Map)['network'], 'legacy');
  });

  test('a list of references encodes each element', () {
    final literal = TfArg.literal<List<RefTo<_FakeNetwork>>>([
      vpc.ref,
      vpc.ref.pinned('name'),
      .literal('n'),
    ]).encodeAs('id');
    expect(TfJsonEncoder.encodeArg(literal), [
      r'${fake_network.main.id}',
      r'${fake_network.main.name}',
      'n',
    ]);
    expect(
      TfArg.variable<List<RefTo<_FakeNetwork>>>(
        'networks',
      ).encodeAs('id').toTfJson(),
      r'${var.networks}',
    );
  });

  test('a list argument synthesizes to its references', () {
    final stack = TestStack(
      providers: const [
        FakeStackProvider(
          providerName: 'fake',
          source: 'example/fake',
          versionConstraint: '~> 1.0',
        ),
      ],
    );
    stack
      ..add(vpc)
      ..add(
        _FakeInstance(
          localName: 'vm',
          networks: .literal([vpc.ref, .literal('n')]),
        ),
      );
    final resources = stack.synth().tfJson['resource'] as Map<String, Object?>;
    final vm = (resources['fake_instance']! as Map)['vm'] as Map;
    expect(vm['networks'], [r'${fake_network.main.id}', 'n']);
  });
}
