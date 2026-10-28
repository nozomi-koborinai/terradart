# Nested sealed groups plan

Three Azure exactly-one groups share a member, so wrap seals the first and leaves the rest as plain fields. This program seals each overlap as one argument. The shared member is a solo variant. The leftovers share one joint variant. Callers of `terradart_azure` get that shape before the first publish. Published factories in google, google-beta, aws, cloudflare, and appwrite stay as they are. #947 lands first. #948 lands on #947. This program lands after #948. The commits are `codegen`, then `regen`, on one pull request. A codegen-only head fails `ci gate`.

## How to read this

One box is one unit of work. Every box names the evidence that checks it. A nested box is a sub-step of the box above it. Check a box only when its evidence exists, a file, a log line, a screenshot, a test run, or a SHA. The body is a how-to. The appendices explain and record.

The program runs `pstack/skills/poteto-mode/playbooks/autopilot-stack.md`. The operator lands one pull request. That pull request contains commit `codegen` and then commit `regen`. Nobody merges from this program.

Tests alone are not sufficient verification. A PR is verified only when its unit, live, and perf boxes are all checked.

## Program checklist

### Arm the program

- [ ] State the protocol and this plan to the operator, then stop. Start execution only on the operator's explicit go.
- [ ] Use the approved names in Appendix E. They are `sealedNames` entries on the three Azure overrides, the same axis as `"display_name, name": identifier` on `data_azurerm_policy_definition.yaml`. Do not change `deriveSealedConcept`.
- [ ] Read these from trunk at program start. Re-read them at every tick.
  - [ ] `git show origin/main:pstack/skills/poteto-mode/playbooks/autopilot-stack.md`
  - [ ] `git show origin/main:pstack/skills/swarm/SKILL.md`
  - [ ] `git show origin/main:cursor-team-kit/skills/control-cli/SKILL.md`
  - [ ] `git show origin/main:pstack/skills/poteto-mode/playbooks/opening-a-pr.md`
  - [ ] `git show origin/main:pstack/skills/how/SKILL.md`
  - [ ] `git show origin/main:pstack/skills/interrogate/SKILL.md`
  - [ ] `git show origin/main:pstack/skills/technical-writing/SKILL.md`
- [ ] If `git show origin/main:pstack/skills/poteto-mode/playbooks/autopilot-stack.md` exits 128, read the plugin copies named in Appendix D. Those paths are not in this repo.
- [ ] On the operator's go, arm the audit tick as `/loop 1h` with the tick prompt below. Never leave the cadence to memory.
- [ ] Use this tick prompt, verbatim. "Re-read the execution playbook from trunk. Audit the operation against it and fix drift in this tick. Probe every active lane and judge progress by side effects only. Stand down a stuck lane and dispatch its replacement now. Then post a short status message to the operator in chat only when the audit found a tracked change that no earlier status message reported, such as a PR opened, a code-ready head, a round launched or closed, a verdict, a merge, a stuck agent and the action taken, a blocker added or cleared, or a decision only the operator can make. Name every such change and nothing else. Do not repeat a table, the merged list, or an unchanged blocker. If the audit found none, end the turn with no reply text. Either way, log this tick's row in your decision trail. The row names the items reported, or none."
- [ ] On the operator's hold or stand-down, send every owner a zero-writes order at once.

### Spawn owners

- [ ] Spawn one owner per PR with the full lifecycle the execution playbook names.
- [ ] Follow this dependency graph. Start dependent work only after its parent merges, or base it on the parent branch when the execution playbook stacks.
  - [ ] `codegen` is the first commit. Branch the pull request from the head that contains #947 and #948.
  - [ ] `regen` is the second commit on that same branch.
- [ ] Hold the file boundaries. `codegen` touches only `packages/terradart_codegen/**`. `regen` touches generated Azure factories, `packages/terradart_migrate/lib/src/manifest/azure.g.dart`, and Azure override YAML only when a new `sealedNames` entry is required.
- [ ] Hold the review gate. `regen` changes the caller-facing constructors. It waits for the operator's review in chat with screenshots and a video before merge.

### PR mechanics, for every PR

- [ ] Resolve the forge once. Default to `gh`; if `command -v origin` succeeds and Origin can resolve the repository, use `origin pr` for every PR operation. Record any fallback to `gh`. Never require `gt`.
- [ ] Open the PR ready, never draft, per **Opening a PR**. Use the run's built-in PR tool when it has one, else `origin pr create --status open --base <base-branch>` or `gh pr create --base <base-branch>` according to the resolved forge. A stack child targets its parent branch.
- [ ] Run the repo's lint and typecheck once before the PR-facing push. Push with hooks on.
- [ ] Run `/deslop` before each commit and `/no-comments` before review.
- [ ] Triage every Bugbot and security-reviewer comment per `../references/bugbot-triage.md`.
- [ ] Rebase onto current trunk before the code-ready report and babysit. Keep that merge base in fix rounds. Rebase again only at merge prep, on a `git merge-tree` conflict with trunk, on a CI failure that comes from a change on trunk, or when a known concurrent change to the same files lands.

### Verdict and merge, for every PR

- [ ] A full swarm runs once, at the code-ready head. Another full swarm runs only for new behavior, a redesign, or a large new diff. A rebase, a merge-conflict resolution, or a minor fix gets a single verifier at the new head, and a wording-only change gets none. Run each full swarm per `pstack/skills/swarm/SKILL.md`. One gates lane. The ten live lanes from the PR's **Verify, live** block. The perf lane from its **Verify, perf** block. Two or more audit lanes, each with its own focus, that read the diff and the receipts and distrust the PR body. The root audits the receipts in the merge-ready report before the verdict.
- [ ] Judge every finding by the execution playbook's blocking rule. The verdict is clean when none blocks. A failure on trunk behavior in a lane marked `Regression lane against trunk.` is recorded against trunk and does not block the PR. A new head gets a fresh verdict, except for results that stay valid under the patch-id rule in `playbooks/shipping.md`.
- [ ] Stop at verified. Hand `codegen` and `regen` to the operator. Do not merge. After the handoff, nobody pushes without the operator's go. A restack that leaves `git patch-id` unchanged keeps its verdict.

### Boot recipe, for every live lane

Each live lane runs on its own cloud VM at the PR head. `control-cli` is not in this environment, so each lane drives the terminal with the commands below and saves a screenshot of that terminal.

- [ ] `git fetch origin <head-branch> && git checkout <head SHA>`.
- [ ] From the repo root, run the lane's `dart test` or `dart tool/wrap_lanes.dart` command. Wait until the process exits.
- [ ] Pass input only as that command's arguments. Read stdout and the exit code. Do not edit the tree.
- [ ] Save every screenshot to `/tmp/swarm-<pr-id>/worker-<n>/<slug>.png` and return the paths with the report.

## Add residual nesting to the sealer (codegen)

**Depends on.** #948, which lands after #947. Do not start from today's `CustomSlot` strings.

**Files.**

- [ ] Create `packages/terradart_codegen/lib/src/codegen/nested_residual.dart` for `Residual`, `placeGroup`, and the slot tree.
- [ ] Edit `packages/terradart_codegen/lib/src/codegen/exactly_one_derivation.dart`.
- [ ] Edit `packages/terradart_codegen/lib/src/codegen/nested_types/nested_type_emitter.dart`.
- [ ] Edit `packages/terradart_codegen/lib/src/codegen/exactly_one_types.dart`.
- [ ] Edit the derived sealed slot type #948 adds. Add `residuals` on each variant in this PR. Do not add that field inside #948.
- [ ] Edit `packages/terradart_codegen/test/codegen/exactly_one_test.dart`.
- [ ] Create no file under `packages/terradart_azure` or `packages/terradart_migrate`.
- [ ] Delete nothing.

**Build.**

- [ ] Put the overlap rule in `placeGroup` only. `_derive` and the nested-block layout both call it. `exclusive_groups.dart` stays as it is. Merging these pairs into one exactly-one set would reject the legal config. `deriveSealedConcept` stays as it is.
- [ ] When two or more exactly-one groups on one block share one member set and nothing else, seal them as one argument. Each shared member is a solo variant. The leftovers are one joint variant, with one required named field per leftover part.
- [ ] A one-member part is a plain required field. A part of two or more members is one nested sealed argument, named by `resolveSealedName`. Do not add a `sealedNames` entry that repeats the derived concept `source_image`.
- [ ] Name the outer slot and the joint factory only from a `sealedNames` entry whose key equals the members that thing sets. With no entry, keep today's member-named factory. Published lanes have no such entry.
- [ ] When the overlap is not that shape, or every member is already taken, skip the whole group. Do not keep a partial tree.
- [ ] Leave at-most-one overlaps as skips. A nullable joint would still allow the illegal pair. Also leave keyed blocks, custom slots, `nestedTypeExcludes`, and `groupSkipReason` drops on the path they have today.
- [ ] Do not seal a group whose members have different parents. `groupSkipReason` already drops those before they reach wrap.
- [ ] Render `encode()` and `argMap` as every key the variant sets. The joint image variant spreads `...sourceImage.encode()`. Its `blockKey` is `admin_username`. The `.defaults` variant writes both default keys. Its `blockKey` is `default_log_storage_account_id`.
- [ ] Teach the same joint rule inside a nested block in `nested_type_emitter.dart`, so a helper is not a second algorithm.

**You see.**

- [ ] `dart test packages/terradart_codegen/test/codegen/exactly_one_test.dart` prints `All tests passed`.
- [ ] The new test's prelude contains a joint factory and an inner `sealed class` for a two-member part.
- [ ] The one-member part test's prelude has a required field on the joint factory and no inner `sealed class` for that part.
- [ ] A group with no shared member still renders one sealed slot and no extra field.

**Verify, unit.** Tests alone are not sufficient verification. A PR is verified only when its unit, live, and perf boxes are all checked.

- [ ] `packages/terradart_codegen/test/codegen/exactly_one_test.dart` gains `an overlapping exactly-one pair becomes one joint variant`. Run `dart test packages/terradart_codegen/test/codegen/exactly_one_test.dart`.
- [ ] The same file gains `a one-member part is a required field on the joint variant`. Run that test.
- [ ] The same file gains `a non-overlapping group stays a single sealed slot`. Run that test.
- [ ] A test renders the prelude and runs `HelperClassExtractor`. Pass when `sourceImage` is merged, the nested variants carry `source_image_id` and `source_image_reference`, and the one-member variant carries both `default_log_storage_account_id` and `default_recovery_disk_type` with `irregular` null. Run that test.

**Verify, live.** Tests alone are not sufficient verification. A PR is verified only when its unit, live, and perf boxes are all checked. Ten lanes on `grok-4.7-xhigh-fast` at the PR head, per the boot recipe.

- [ ] Lane 1. Regression lane against trunk. Run `dart test packages/terradart_codegen/test/codegen/exactly_one_test.dart` at trunk and head. Trunk lacks the residual tests. Record that, and gate the three new test names plus a green exit. Save `codegen-regression.png`. Pass when head exits 0 and trunk's existing tests still pass.
- [ ] Lane 2. Two-member part. Run the joint-variant test alone. Save `codegen-two-member.png`. Pass when the prelude contains one outer sealed class, a joint factory, and an inner `sealed class` for the two-member part.
- [ ] Lane 3. One-member part. Run the one-member test alone. Save `codegen-one-member.png`. Pass when the joint factory has a required field and the prelude has no sealed class named for that single part.
- [ ] Lane 4. Disjoint groups. Run the non-overlapping test. Save `codegen-disjoint.png`. Pass when the slot count is one and no residual field appears.
- [ ] Lane 5. Block payload. Run a test whose residual member is a `max_items` 1 block with a helper. Save `codegen-block.png`. Pass when the factory takes the helper and the variant class ends in `Choice` if the helper owns the unsuffixed name.
- [ ] Lane 6. Derived name clash. Run a test that sets `sealedNames` to the derived concept. Save `codegen-name-clash.png`. Pass when the result's `nameErrors` contains `repeats the derived name`.
- [ ] Lane 7. Ledger. Run `dart test packages/terradart_codegen/test/codegen/exactly_one_test.dart` and `dart tool/release_ledger_check.dart` if the PR did not regen a lane. Save `codegen-ledger.png`. Pass when `tool/sealed_name_debt.yaml` is still `{}` and the ledger check exits 0.
- [ ] Lane 8. Published lanes stay quiet. Run `dart tool/wrap_lanes.dart --lane google --gate wrap`, then the same command for aws, cloudflare, appwrite, and google-beta. Save `codegen-overlap-scan.png`. Pass when each command exits 0.
- [ ] Lane 9. Manifest keys. Run the extractor test. Save `codegen-manifest.png`. Pass when `irregular` is null, `sourceImage` is merged, and the one-member variant lists both Terraform keys.
- [ ] Lane 10. Nested block path. Run a test whose overlap sits under a child block, not the resource root. Save `codegen-nested-block.png`. Pass when the helper field carries the residual and the resource constructor does not.

**Verify, perf.** Tests alone are not sufficient verification. A PR is verified only when its unit, live, and perf boxes are all checked.

- [ ] Metric. Wall-clock seconds of `dart test packages/terradart_codegen/test/codegen/exactly_one_test.dart` at trunk and at head. Trunk lacks the new tests, so also record the seconds of the three new tests alone, and the end state is a green test file.
- [ ] Probe. Run the same `dart test` command twice at trunk, then twice at head, interleaved by one trunk run between the head runs. Both sides print the test runner's elapsed time.
- [ ] Baseline. Record the trunk elapsed seconds first.
- [ ] Rule. Fail when the head file takes more than twice the trunk seconds. Also fail when the three new tests together take more than 30 seconds.

**Review gate.** None. `codegen` is not review-gated.

**Merge.**

- [ ] Root's clean verdict at the exact head SHA.
- [ ] Bugbot triage done.
- [ ] Rebased onto current trunk after the verdict, patch-id unchanged.
- [ ] Do not open `codegen` as its own pull request. `wrap_check` in `.github/workflows/ci.yml` runs every lane, and `ci gate` requires that job. A codegen-only tree fails Azure `wrap --check`.

## Regenerate the three Azure factories (regen)

**Depends on.** `codegen`.

**Files.**

- [ ] Edit `packages/terradart_azure/lib/src/compute/azurerm_linux_virtual_machine.dart` by running wrap, not by hand.
- [ ] Edit `packages/terradart_azure/lib/src/compute/azurerm_windows_virtual_machine.dart` by running wrap, not by hand.
- [ ] Edit `packages/terradart_azure/lib/src/site_recovery/azurerm_site_recovery_vmware_replicated_vm.dart` by running wrap, not by hand.
- [ ] Edit `packages/terradart_migrate/lib/src/manifest/azure.g.dart` by running wrap, not by hand.
- [ ] Edit `packages/terradart_azure/lib/compute.dart` by running wrap, not by hand.
- [ ] Edit `packages/terradart_azure/lib/src/_catalog.g.dart` by running wrap, not by hand.
- [ ] Replace `sealedNames` in the three Azure override YAML files with the approved keys in Appendix E. Do not add `source_image`.
- [ ] Create no hand-written factory.
- [ ] Delete the top-level `sourceImageId`, `sourceImageReference`, and `defaultRecoveryDiskType` parameters from those three constructors. Wrap does this when the members move onto variants.

**Build.**

- [ ] Run the Azure wrap lane so the three resources pick up the joint rule and the approved `sealedNames`.
- [ ] Confirm the Linux and Windows constructors take `osSource`, with factories `.image` and `.osManagedDiskId`.
- [ ] Confirm `LinuxVirtualMachineSourceImage` and `WindowsVirtualMachineSourceImage` come from `deriveSealedConcept` with no `sealedNames` line for `source_image`.
- [ ] Confirm VMware keeps the slot `diskReplication`, with factories `.defaults` and `.managedDisk`.
- [ ] Run `dart tool/release_ledger_check.dart` and keep `tool/sealed_name_debt.yaml` empty.

**You see.**

- [ ] `AzurermLinuxVirtualMachine` no longer takes `sourceImageId` or `sourceImageReference`. The `sourceImageId` and `sourceImageReference` getters stay, because `emitDerivedOutputGetters` walks schema attributes.
- [ ] `osSource: .image` takes `adminUsername` and `sourceImage`. `osSource: .osManagedDiskId` takes only the disk id.
- [ ] `diskReplication: .defaults` takes `defaultLogStorageAccountId` and `defaultRecoveryDiskType`. `.managedDisk` takes neither.
- [ ] Appendix E matches the generated factories.

**Verify, unit.** Tests alone are not sufficient verification. A PR is verified only when its unit, live, and perf boxes are all checked.

- [ ] `packages/terradart_azure/test/synth_test.dart` still passes. Run `dart test packages/terradart_azure`.
- [ ] A new test in that package synths the three call shapes in Appendix E and expects the Terraform keys from Appendix F. Run `dart test packages/terradart_azure`.

**Verify, live.** Tests alone are not sufficient verification. A PR is verified only when its unit, live, and perf boxes are all checked. Ten lanes on `grok-4.7-xhigh-fast` at the PR head, per the boot recipe.

- [ ] Lane 1. Regression lane against trunk. Open the three generated factories at trunk and head. Trunk still has optional `sourceImageId` and `defaultRecoveryDiskType` on the resource. Record that. Gate the head constructors in Appendix E. Save `regen-regression.png`. Pass when those three optional parameters are gone at head and present at trunk.
- [ ] Lane 2. Linux image id. Synth the Appendix E linux id example. Save `regen-linux-id.png`. Pass when the JSON has `admin_username`, `source_image_id`, and `storage_account_type`, and omits `os_managed_disk_id` and `source_image_reference`.
- [ ] Lane 3. Linux image reference. Synth the reference example. Save `regen-linux-ref.png`. Pass when the JSON has `source_image_reference` with `publisher`, `offer`, `sku`, and `version`.
- [ ] Lane 4. Linux managed disk. Synth the disk example. Save `regen-linux-disk.png`. Pass when the JSON has `os_managed_disk_id` and omits `admin_username`, `source_image_id`, `source_image_reference`, and `storage_account_type`.
- [ ] Lane 5. Windows image id. Synth the Windows twin of lane 2. Save `regen-windows-id.png`. Pass when the keys match lane 2.
- [ ] Lane 6. VMware log account. Synth the log-account example. Save `regen-vmware-log.png`. Pass when the JSON has `default_log_storage_account_id` and `default_recovery_disk_type` and omits `managed_disk`.
- [ ] Lane 7. VMware managed disk. Synth the managed-disk example. Save `regen-vmware-disk.png`. Pass when the JSON has `managed_disk` and omits `default_log_storage_account_id` and `default_recovery_disk_type`.
- [ ] Lane 8. Analyze. Run `dart analyze packages/terradart_azure packages/terradart_migrate`. Save `regen-analyze.png`. Pass when the command exits 0.
- [ ] Lane 9. Ledger. Run `dart tool/release_ledger_check.dart`. Save `regen-ledger.png`. Pass when the command exits 0 and `tool/sealed_name_debt.yaml` is `{}`.
- [ ] Lane 10. Wrap check. Run `dart tool/wrap_lanes.dart --lane azure --gate wrap`. Save `regen-wrap.png`. Pass when the command exits 0. Then run `git diff --stat origin/main -- packages/terradart_google packages/terradart_aws packages/terradart_cloudflare packages/terradart_appwrite packages/terradart_google_beta` and pass when that diff is empty.

**Verify, perf.** Tests alone are not sufficient verification. A PR is verified only when its unit, live, and perf boxes are all checked.

- [ ] Metric. Wall-clock seconds of `dart tool/wrap_lanes.dart --lane azure --gate wrap` at trunk and at head. Trunk already wraps Azure, so both sides produce the same metric. The end state is a green wrap whose three factories match Appendix E.
- [ ] Probe. Run the wrap command once at trunk, once at head, then once more at trunk. Record each elapsed time from the shell.
- [ ] Baseline. Record the first trunk seconds first.
- [ ] Rule. Fail when the head seconds are more than twice the first trunk seconds.

**Review gate.** The operator reviews before merge.

- [ ] Copy lane 2 screenshots into `/opt/cursor/artifacts/regen-review-linux-id.png`.
- [ ] Record a 30 to 60 second video of the linux id synth and the VMware log synth on a lane VM. Save it as `/opt/cursor/artifacts/regen-review.mp4`.
- [ ] Post the screenshots and the video in chat. Stop at merge-ready. Wait for the operator's click.

**Merge.**

- [ ] Root's clean verdict at the exact head SHA.
- [ ] Bugbot triage done.
- [ ] Rebased onto `codegen` after the verdict, patch-id unchanged.
- [ ] The operator lands the one pull request whose head contains both commits. The owner does not merge.

## Close the program

- [ ] Every box above is checked with its evidence.
- [ ] Reply to the operator with the report the execution playbook names.

## Appendix A. Prototype evidence

The overlap question was settled by reading the checked-in groups, not by changing codegen.

Hint files under `packages/terradart_codegen/test/fixtures/wrap/source_aws/hints`, `source_cloudflare/hints`, `source_appwrite/hints`, and `source_azure/hints` were parsed in list order. Groups were split by parent block. A member already taken by an earlier exactly-one group marked the later group as a skip, which is what `_derive` does today. Counts from that run.

- aws had 165 exactly-one groups and 0 overlap skips.
- cloudflare had 13 exactly-one groups and 0 overlap skips.
- appwrite had 2 exactly-one groups and 0 overlap skips.
- azure had 95 exactly-one groups and 3 overlap skips.

The three Azure skips were `azurerm_linux_virtual_machine` and `azurerm_windows_virtual_machine` with residual `source_image_id`, `source_image_reference`, and `azurerm_site_recovery_vmware_replicated_vm` with residual `default_recovery_disk_type`. At-most-one overlap skips were 0 on every hint lane.

Google and google-beta have no hint group files. `MmYamlParser.exactlyOneOfPaths` and `atMostOneOfPaths` were run on every file in `source/mm` and `source_beta/mm` by `/tmp/mm_overlap.dart`. Google had 206 exactly-one groups and 0 overlap skips. Google-beta had 2 exactly-one groups and 0 overlap skips.

`schema.json` for Azure was loaded. The three resources exist. `os_managed_disk_id` is an optional computed string. `source_image_id` is an optional string. `source_image_reference` is a list block with `max_items` 1. The file has no `ExactlyOneOf`, `ConflictsWith`, or `AtLeastOneOf` keys.

The Go at `hashicorp/terraform-provider-azurerm` tag `v5.11.0` does have those keys. `internal/services/compute/resources/linux_virtual_machine/r_schema.go` and the Windows twin set `ExactlyOneOf` on `admin_username`, `os_managed_disk_id`, and `source_image_id`. `internal/services/recoveryservices/site_recovery_vmware_replicated_vm_resource.go` sets `ExactlyOneOf` on `default_log_storage_account_id` and `default_recovery_disk_type`. The hint files match those sets and list them under `exactly_one_of_groups`.

pub.dev on this run returned 0.35.0 for `terradart_google`, `terradart_google_beta`, `terradart_aws`, `terradart_cloudflare`, and `terradart_appwrite`. `terradart_azure` returned HTTP 404.

A second scan, `python3 /tmp/how-sealed/scan_groups.py`, wrote `/tmp/how-sealed/scan.json`. It reimplemented `exclusiveGroups` and checked that port against `exclusive_groups_test.dart`. Overlapping groups after that combine step are the same three Azure resources and zero everywhere else. Same-parent groups that mix a scalar and a block are already sealed on aws, cloudflare, google, and google-beta, except the two AWS rows below. The only hint groups it marked `partial_fields` were the three Azure leftovers.

`/tmp/arena-nested/candidate-a/design.md` is the joint-variant shape this plan now follows. `/tmp/arena-nested/candidate-b/design.md` hung the leftover on `.adminUsername`. Appendix B records why that hang lost. Nozomi chose the joint variant on 2026-10-28.

`dart --packages=.dart_tool/package_config.json /tmp/interrogate/names_and_extractor.dart` was rerun on this branch. `deriveSealedConcept` returned `source_image`. A human name of `source_image` returned `repeats the derived name`. Variant classes were `LinuxVirtualMachineSourceImageId` and `LinuxVirtualMachineSourceImageReferenceChoice`, and the Windows pair. `HelperClassExtractor` printed `irregular=null`. The host field `sourceImage` was merged. The one-member variant listed `default_log_storage_account_id` and `default_recovery_disk_type`. The same package config ran `/tmp/interrogate/overlap_scan.dart` and printed the three Azure exactly-one skips, zero elsewhere, including 9 Azure data-source exactly-one groups with zero skips. None of the seal members matched an Azure `RefTo` rule.

`dart tool/wrap_lanes.dart --gate wrap` was not run.

## Appendix B. Alternatives rejected

Leaving the three groups unsealed keeps `sourceImageId` and `defaultRecoveryDiskType` optional. The provider still rejects a config that sets both, or neither, and the type does not.

A flat seal with one variant per legal config repeats `adminUsername` on two variants. It is a legal encoding. It throws away the nested shape Nozomi asked for, and it does not reuse the sealed block pattern already in `LinuxVirtualMachineScaleSetSourceImage`.

Naming the host slot `osDisk` clashes with the required `osDisk` parameter of type `LinuxVirtualMachineOsDisk`. The approved slot is `osSource`.

Folding every `ConflictsWith: os_managed_disk_id` field onto `.image` would move `admin_password`, `computer_name`, `custom_data`, and the patch fields. Those are pairwise conflicts, not an exactly-one group. `exclusiveGroups` already leaves them unsealed. This program does not move them.

A sealed type with one variant for `default_recovery_disk_type` would reject the legal pair of log account plus disk type. The residual is a required field.

Landing the nesting on today's `CustomSlot` strings implements the payload once, then #948 deletes that representation. #947 and #948 both require byte-identical `wrap --check`. A generated API change in front of them moves the baseline those refactors are measured against.

Sealing across parent blocks would change published `terradart_google` 0.35.0 factories. Magic Modules drops these because the members do not share a parent. `google_compute_url_map` and `google_compute_region_url_map` (`default_service` with `default_route_action.weighted_backend_services`), `google_vpc_access_connector` (`network` with `subnet.name`), `google_alloydb_cluster` (`network_config.network` with `psc_config.psc_enabled`), and `google_compute_reservation` (`delete_at_time` with `delete_after_duration.seconds`). They stay separate fields.

Sealing a block that `nestedTypeExcludes` leaves as a map would change published `terradart_aws` 0.35.0. `aws_s3_bucket` keeps `object_lock_configuration` as `TfArg<Map<String, dynamic>>?` beside `objectLockEnabled`. `aws_wafv2_web_acl` keeps `rule` as `TfArg<List<Map<String, dynamic>>>?` beside `ruleJson`. The helper names belong to other resources. This program does not type those maps.

Sealing `os_disk.storage_account_type` against `os_managed_disk_id` would be a cross-block rule. `groupSkipReason` drops that pair today. Pulling a nested field up into `osSource` is a second design, and the same mechanism would reach the published Google groups named above. Examples set `storageAccountType` by hand instead.

Hanging the leftover on `.adminUsername` and `.defaultLogStorageAccountId`. That keeps the names the current factories already emit, and it follows whichever group `renderHintsYaml` sorts first. Nozomi rejected it on 2026-10-28. The joint variant is the clearer call, and `terradart_azure` is unpublished, so the rename breaks nobody. The accepted cost is that `os_source`, `image`, and `defaults` do not follow that sort.

A temporary flag that keeps root residuals off until a second pull request. The flag would let a codegen-only head pass `wrap --check`. This program lands one pull request whose head already contains the regeneration, so the flag would only exist to be deleted.

## Appendix C. Risks

`codegen` changes a function every lane calls. The new branch runs only when a later exactly-one group shares a taken member. Appendix A found that case only on the three Azure resources. A bug that fires the branch for a disjoint group would change a published factory. Lane 8 and lane 10 of `regen` watch that. `wrap --check` on the published lanes is the proof this plan did not run.

Hint files do not store cross-block conflicts for aws, cloudflare, appwrite, or azure. `groupSkipReason` drops them before write. A later extract that started keeping them would be a different change. This program does not change that filter. Google's four dropped cross-block lists are named in Appendix B. They stay dropped.

`renderHintsYaml` sorts groups by the comma-joined member string before wrap reads them (`tool/extract_provider_hints.dart`). The joint variant does not use that order to pick factory names. `os_source`, `image`, and `defaults` come only from the approved `sealedNames` entries. A later pin that changes a member set does not rename those factories unless the override entries change too.

`encode()` on a variant is one map, while `blockKey` stays one string. The resource emits `...osSource.argMap`, so the extra keys have to be in `argMap`, not only in `blockKey`. The extractor test in `codegen` is what catches a manifest that drops `source_image_id`.

`control-cli` was not installed here. Live lanes are terminal commands plus a screenshot of the terminal. That is a weaker UI proof than a control skill, and it is the surface this repo has for a library change.

A prototype that changed only the sealer, then ran `dart tool/wrap_lanes.dart --lane azure --gate wrap`, exited 1 with 6 of 1648 files different. The files were the three factories, `packages/terradart_azure/lib/compute.dart`, `packages/terradart_azure/lib/src/_catalog.g.dart`, and `packages/terradart_migrate/lib/src/manifest/azure.g.dart`. `.github/workflows/ci.yml` job `wrap_check` runs every lane, and `ci gate` requires it. The pull request head is the regen commit so that check can pass.

#949 and #950 also block the first Azure publish. They do not have to merge before `codegen` for these three groups. None of the members is a `RefTo` under the Azure rules in `tool/reference_targets.yaml`. If #950 has already changed the return type of `deriveExactlyOneSlots`, rebase `codegen` onto it so the residual references, if a later group has any, are returned rather than scanned from prelude text.

Windows `admin_password` is `RequiredWith` `admin_username` and `ConflictsWith` `os_managed_disk_id`. The scanner does not record `RequiredWith`. The password stays a separate optional. The type will still accept an image VM with no password.

`tool/example_debt.yaml` lists `AzurermLinuxVirtualMachine`, `AzurermWindowsVirtualMachine`, and `AzurermSiteRecoveryVmwareReplicatedVm` as `awaiting-example`. This program does not delete those lines and does not run `dart tool/coverage_stack.dart --lane azure`. Azure has no coverage generator in `tool/providers.yaml`, and `CoverageLane.read` always leaves out a class the debt file lists. Deleting the lines without an example fails the synth gate. The scale-set lines for `AzurermLinuxVirtualMachineScaleSet` and `AzurermWindowsVirtualMachineScaleSet` are a separate retry. Their image pair is already sealed.

## Appendix D. Links and reading list

Read before editing.

- `packages/terradart_codegen/lib/src/codegen/exclusive_groups.dart`
- `packages/terradart_codegen/lib/src/codegen/exactly_one_derivation.dart`
- `packages/terradart_codegen/lib/src/codegen/exactly_one_types.dart`
- `packages/terradart_codegen/lib/src/codegen/nested_types/nested_type_emitter.dart`
- `tool/extract_provider_hints.dart` (`renderHintsYaml`, `groupSkipReason`)
- `tool/provider_hints_azurerm.dart` (`_recordRelation`)
- The three hint files named in Appendix F
- #947, #948, #949, #950

`codegen` and `regen` get `pstack/skills/how/SKILL.md` before the edit and `pstack/skills/interrogate/SKILL.md` on the synthesized sketch. The decision trail follows `pstack/skills/show-me-your-work/SKILL.md`. Those poteto paths are not files in this repo. The copies used to write this plan live under the Cursor plugin cache for `poteto-mode`.

## Appendix E. Caller API

Nozomi approved these names on 2026-10-28. Record them as `sealedNames` on the three override files, the same way #946 recorded `identifier`, `lookup`, and `shape` on data-source overrides such as `packages/terradart_codegen/lib/src/codegen/wrapper_overrides/azure/yaml/data_azurerm_policy_definition.yaml`. Do not change `deriveSealedConcept`. A group with no matching entry keeps a member-named factory.

`packages/terradart_codegen/lib/src/codegen/wrapper_overrides/azure/yaml/azurerm_linux_virtual_machine.yaml` and `azurerm_windows_virtual_machine.yaml` replace the `os_profile` entry with these two lines.

```yaml
sealedNames:
  "admin_username, os_managed_disk_id, source_image_id, source_image_reference": os_source
  "admin_username, source_image_id, source_image_reference": image
```

`packages/terradart_codegen/lib/src/codegen/wrapper_overrides/azure/yaml/azurerm_site_recovery_vmware_replicated_vm.yaml` replaces the `disk_replication` key with these two lines. The concept `disk_replication` stays.

```yaml
sealedNames:
  "default_log_storage_account_id, default_recovery_disk_type, managed_disk": disk_replication
  "default_log_storage_account_id, default_recovery_disk_type": defaults
```

`source_image` is not in either file. `deriveSealedConcept` already returns it for `source_image_id` and `source_image_reference`. A `sealedNames` copy of that word is E406.

Approved caller names.

- Slot `osSource`, types `LinuxVirtualMachineOsSource` and `WindowsVirtualMachineOsSource`.
- Factory `.image`, with required named fields `adminUsername` and `sourceImage`.
- Factory `.osManagedDiskId`.
- Slot `diskReplication`, type `SiteRecoveryVmwareReplicatedVmDiskReplication`.
- Factory `.defaults`, with required named fields `defaultLogStorageAccountId` and `defaultRecoveryDiskType`.
- Factory `.managedDisk`.
- Inner parameter `sourceImage`, types `LinuxVirtualMachineSourceImage` and `WindowsVirtualMachineSourceImage`.
- Inner factories `.sourceImageId` and `.sourceImageReference`.
- Inner variant classes `LinuxVirtualMachineSourceImageId`, `LinuxVirtualMachineSourceImageReferenceChoice`, and the Windows twins. The `Choice` suffix is the existing collision rule. The helper already owns `LinuxVirtualMachineSourceImageReference`.

The joint factory class names come from the existing joiner. `LinuxVirtualMachineOsSourceImage`, `LinuxVirtualMachineOsSourceOsManagedDiskId`, the Windows twins, and `SiteRecoveryVmwareReplicatedVmDiskReplicationDefaults`. They are not separate approved words.

Names that stay.

- `.managedDisk` and the managed-disk helper `SiteRecoveryVmwareReplicatedVmManagedDisk`.
- Helper `LinuxVirtualMachineSourceImageReference` and the Windows twin.
- Enum `SiteRecoveryVmwareReplicatedVmDefaultRecoveryDiskType`, including `.premiumLrs`.
- Output getters `adminUsername`, `osManagedDiskId`, `sourceImageId`, `sourceImageReference`, `defaultLogStorageAccountId`, and `defaultRecoveryDiskType`.

Linux, image id. The other required arguments stay. `storageAccountType` is required by the provider and is not part of the seal.

```dart
osDisk: LinuxVirtualMachineOsDisk(
  caching: .literal('ReadWrite'),
  storageAccountType: .literal('Standard_LRS'),
),
osSource: .image(
  adminUsername: .literal('azureuser'),
  sourceImage: .sourceImageId(
    .literal('/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Compute/images/img'),
  ),
),
```

Linux, marketplace image. The same `osDisk` applies.

```dart
osSource: .image(
  adminUsername: .literal('azureuser'),
  sourceImage: .sourceImageReference(
    LinuxVirtualMachineSourceImageReference(
      publisher: .literal('Canonical'),
      offer: .literal('0001-com-ubuntu-server-jammy'),
      sku: .literal('22_04-lts'),
      version: .literal('latest'),
    ),
  ),
),
```

Linux, existing OS disk. Omit `storageAccountType`, `name`, and `diffDiskSettings` on `osDisk`.

```dart
osDisk: LinuxVirtualMachineOsDisk(caching: .literal('ReadWrite')),
osSource: .osManagedDiskId(
  .literal('/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Compute/disks/os'),
),
```

Windows uses `WindowsVirtualMachineOsSource`, `WindowsVirtualMachineSourceImage`, and `WindowsVirtualMachineSourceImageReference` in the same three shapes. `adminPassword` stays a top-level `Sensitive<String>?`.

VMware, account plus disk type.

```dart
diskReplication: .defaults(
  defaultLogStorageAccountId: .literal('/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Storage/storageAccounts/logs'),
  defaultRecoveryDiskType: .premiumLrs,
),
```

VMware, per-disk list. `managedDisk` stays a `List` because the schema block has no `max_items` of 1.

```dart
diskReplication: .managedDisk([
  SiteRecoveryVmwareReplicatedVmManagedDisk(
    diskId: .literal('disk-1'),
    targetDiskType: .literal('Premium_LRS'),
  ),
]),
```

## Appendix F. Schema constraints

`packages/terradart_codegen/test/fixtures/wrap/source_azure/schema.json` records types and nesting only. Relation keys are in the hint YAML, copied from Go `ExactlyOneOf` by `tool/provider_hints_azurerm.dart`.

`packages/terradart_codegen/test/fixtures/wrap/source_azure/hints/azurerm_linux_virtual_machine.yaml` and `azurerm_windows_virtual_machine.yaml` both list these `exactly_one_of_groups`.

- `admin_username`, `os_managed_disk_id`
- `os_managed_disk_id`, `source_image_id`, `source_image_reference`

The two hint groups allow three combinations. `os_managed_disk_id` alone. `admin_username` plus `source_image_id`. `admin_username` plus `source_image_reference`. Those are not the full provider rule.

`VirtualMachineOSDiskSchema` in the provider at tag `v5.11.0` sets `ExactlyOneOf` to `os_managed_disk_id` and `os_disk.0.storage_account_type`. `groupSkipReason` drops that set with `members in different blocks`. The hint files do not list `storage_account_type`. OpenTofu 1.13.1 validate against azurerm 5.11.0 rejects an image VM whose `os_disk` omits `storage_account_type`, and rejects `os_managed_disk_id` together with `storage_account_type`. This program does not seal that cross-block pair. An image example sets `storageAccountType` on `osDisk`. A managed-disk example omits it. The type still allows both mistakes.

The same OS-disk schema sets `ConflictsWith` `os_managed_disk_id` on `name` and `diff_disk_settings`. Root fields that conflict with `os_managed_disk_id` stay outside the seal. Linux lists `admin_password`, `bypass_platform_safety_checks_on_user_schedule_enabled`, `computer_name`, `custom_data`, `provision_vm_agent`, `patch_mode`, `patch_assessment_mode`, and `reboot_setting`. Windows lists those same fields plus `automatic_updates_enabled` and `hotpatching_enabled`. Windows `admin_password` and `admin_username` are `RequiredWith` each other.

`packages/terradart_codegen/test/fixtures/wrap/source_azure/hints/azurerm_site_recovery_vmware_replicated_vm.yaml` lists these `exactly_one_of_groups`.

- `default_log_storage_account_id`, `managed_disk`
- `default_recovery_disk_type`, `managed_disk`

Legal configs are `managed_disk` alone, or the log storage account together with the disk type. `default_recovery_disk_type` is also a `StringInSlice`. The hint file records that as `enum_values`. `target_availability_set_id` and `target_zone` are already the nullable seal `target`.

Scale sets are not in the overlap list. `LinuxVirtualMachineScaleSetSourceImage` already seals `source_image_id` against `source_image_reference` because that pair shares no member with an earlier group. The variant class for the block is `LinuxVirtualMachineScaleSetSourceImageReferenceChoice`. The inner image choice on `.image` uses that same helper-as-variant pattern.

## Appendix G. Slot shape after #948

#947 makes `WrapperEmitter` and `DataSourceWrapperEmitter` call one constructor builder. #948 stops storing a derived seal as a `CustomSlot` of source strings. `deriveExactlyOneSlots` returns the slot type #948 defines. The emitters render it. Hand-written `customSlots` stay the YAML shape, and a data source YAML still cannot set them.

Do not add a joint-variant field inside #948. That couples an API field to a refactor whose output must stay byte-identical. `codegen` adds the joint variant on the slot type #948 returns.

`placeGroup` is the only overlap policy. Two or more exactly-one groups whose shared members are one set, and whose leftovers are disjoint from that set and from each other, become one slot. Each shared member is a solo variant. The leftovers are one joint variant. A one-member leftover is a required named field. Two or more leftovers are one nested sealed field. Any other overlap is skipped whole. At-most-one groups never join.

The outer concept and the joint factory name come from `sealedNames` when the key equals the members that thing sets. `resolveSealedName` and `deriveSealedConcept` are otherwise unchanged. The inner image type is the derived concept `source_image`. The existing joiner names its variant classes, including the `Choice` suffix when the helper owns the unsuffixed name.

A whole-block seal is a different case. It already exists when the group lists every input of a block, and `MonitoringSloSli.requestBasedSli` already takes the sealed helper `MonitoringSloRequestBasedSli`. The Azure image part is not a whole-block seal. `source_image_reference` is one member. The other member is a string.

A spread of that sealed value stays `MigrateSlotKind.sealed` through `mergedShape`. The `.defaults` disk-type field is a quoted enum key, not a spread, so it stays `MigrateSlotKind.enumValue`. The joint `.image` `blockKey` is `admin_username`. There is no new manifest kind and no `tool/migrate_manifest_debt.yaml` line. If a rendered `encode()` comes back irregular, fix the extractor in `codegen`.

`codegen` does not append a new `CustomSlot` for `osSource`. Published lanes never enter `placeGroup`'s joint path, because they have zero overlap skips, so their generated factories stay byte-identical.
