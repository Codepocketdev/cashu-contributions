# Cashu Contributions

Reviews and pull requests by [@Codepocketdev](https://github.com/Codepocketdev) across the [cashubtc](https://github.com/cashubtc) organisation. Snapshot: 27 Oct 2026.

| | Count |
|---|---|
| PRs reviewed | 15 |
| Reviewed PRs merged | 5 |
| PRs authored | 10 |
| Authored PRs merged | 2 |

## Review findings

Reviews method: for each PR, break the behavior it claims to change, run the test suites, and report whether any test notices.

| PR | Repo | Status | Result | Author response |
|---|---|---|---|---|
| [#2765](https://github.com/cashubtc/cdk/pull/2765) fix(ffi): expose canonical normalized MintUrl | cdk | open | Fix and validation pinned. Error message on the core parse path unpinned. | Awaiting reply |
| [#2764](https://github.com/cashubtc/cdk/pull/2764) fix(wallet): correct receive recovery accounting | cdk | open | Output-count and duplicate-output guards unpinned by existing tests. | Acknowledged, adding regression tests |
| [#2761](https://github.com/cashubtc/cdk/pull/2761) fix(sql): harden transaction cleanup | cdk | merged | Disabling the stale-discard branch failed no test. | Posted after merge |
| [#2721](https://github.com/cashubtc/cdk/pull/2721) fix(wallet): parse concrete BIP353 URIs without LNURL resolution | cdk | open | Five mutations across routing, scheme case and TXT conflicts, all caught. 524 tests pass. | None needed |
| [#2753](https://github.com/cashubtc/cdk/pull/2753) feat(mint): settle pending melts before inactivating a rotated keyset | cdk | open | In progress | |

## All reviews

| PR | Repo | Author | Status |
|---|---|---|---|
| [#2765](https://github.com/cashubtc/cdk/pull/2765) fix(ffi): expose canonical normalized MintUrl | cdk | @j-kon | open |
| [#2764](https://github.com/cashubtc/cdk/pull/2764) fix(wallet): correct receive recovery accounting | cdk | @comwanga | open |
| [#2761](https://github.com/cashubtc/cdk/pull/2761) fix(sql): harden transaction cleanup | cdk | @thesimplekid | merged |
| [#2753](https://github.com/cashubtc/cdk/pull/2753) feat(mint): settle pending melts before inactivating a rotated keyset | cdk | @robwoodgate | open |
| [#2721](https://github.com/cashubtc/cdk/pull/2721) fix(wallet): parse concrete BIP353 URIs without LNURL resolution | cdk | @asmogo | open |
| [#2699](https://github.com/cashubtc/cdk/pull/2699) fix(mint-rpc): prevent mint quote over-credit on force-paid | cdk | @comwanga | open |
| [#2696](https://github.com/cashubtc/cdk/pull/2696) feat(wallet): add resumable seed recovery | cdk | @a1denvalu3 | open |
| [#2683](https://github.com/cashubtc/cdk/pull/2683) refactor(wallet)!: remove the shared wallet trait | cdk | @thesimplekid | merged |
| [#2681](https://github.com/cashubtc/cdk/pull/2681) test: document and verify melt disable behavior contract | cdk | @MrishoLukamba | open |
| [#2674](https://github.com/cashubtc/cdk/pull/2674) test(cashu): carry the NUT-13 v3 seed as 64 bytes | cdk | @robwoodgate | merged |
| [#2649](https://github.com/cashubtc/cdk/pull/2649) feat(cashu): transcript container types carry their section in the high nibble | cdk | @robwoodgate | closed |
| [#2641](https://github.com/cashubtc/cdk/pull/2641) Allow HTLC refunds with signature-only witnesses | cdk | @Arthur031221 | merged |
| [#2639](https://github.com/cashubtc/cdk/pull/2639) fix: return persisted wallet quote state after status checks | cdk | @asmogo | merged |
| [#2589](https://github.com/cashubtc/cdk/pull/2589) feat(mint-rpc): expose issued and redeemed totals by unit and keyset | cdk | @j-kon | open |
| [#2499](https://github.com/cashubtc/cdk/pull/2499) fix(wallet): preserve exact recipient amounts after redemption fees | cdk | @thesimplekid | open |

## Authored

| PR | Repo | Status |
|---|---|---|
| [#2145](https://github.com/cashubtc/cdk/pull/2145) feat: add cdk-bark payment backend for Ark/bark | cdk | closed |
| [#524](https://github.com/cashubtc/cashu.me/pull/524) feat: add import backup button to welcome screen | cashu.me | open |
| [#523](https://github.com/cashubtc/cashu.me/pull/523) fix: handle non-ISO currency codes in formatCurrency without crashing | cashu.me | open |
| [#521](https://github.com/cashubtc/cashu.me/pull/521) fix: disable seed backup checkbox until seed is revealed | cashu.me | open |
| [#520](https://github.com/cashubtc/cashu.me/pull/520) fix: skip welcome onboarding if wallet mnemonic already exists | cashu.me | open |
| [#312](https://github.com/cashubtc/Numo/pull/312) feat: show active mint name and balance on POS screen | Numo | closed |
| [#1286](https://github.com/cashubtc/cashu-ts/pull/1286) test(wallet): cover a proofs-only transaction that settles to change | cashu-ts | closed |
| [#997](https://github.com/cashubtc/nutshell/pull/997) fix: add ORDER BY id to blind signatures and blinded messages melt queries | nutshell | closed |
| [#996](https://github.com/cashubtc/nutshell/pull/996) fix: update .env.example to reflect rate limiting enabled by default | nutshell | merged |
| [#23](https://github.com/cashubtc/awesome-cashu/pull/23) Add Satoshi Pay wallet | awesome-cashu | merged |

