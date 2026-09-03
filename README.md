# Pillowcase-gap certificates

Machine-checked certificates accompanying the paper:

> **A spectral gap uniform in the gauge group for a class of Kaluza–Klein
> reductions over the pillowcase**
> Dhiren Jashwant Master — Independent Researcher, Pinner, United Kingdom
> ORCID 0009-0009-9474-7191
> dhiren@masterequation.org

Archived release on Zenodo: DOI https://doi.org/10.5281/zenodo.22284549

## Lean certificates (`PillowcaseGap/`)

Formal verification in [Lean 4](https://lean-lang.org) with
[Mathlib](https://github.com/leanprover-community/mathlib4) of the
arithmetic, algebraic and metric cores of the paper's results.

| File | Certificate | Content |
|---|---|---|
| `Corners.lean` | 1 | The four corners of the pillowcase are exactly the two-torsion points of the torus, pairwise distinct |
| `Gap.lean` | 2 | Positivity of the corner gap, at metric-space level |
| `Identification.lean` | 3 | From the three class hypotheses, κΔ is the lowest non-vacuum one-particle mass (spectral-class form) |
| `Transfer.lean` | 4 | The gap and the identification for an arbitrary gauge-group datum; proofs definitionally constant in that datum |
| `Scope.lean` | 5 | The value of the gap is not selection-independent (statement-level abstraction) |
| `BettiParity.lean` | 6 | Signed count equals absolute count under odd vanishing |
| `OddDivisors.lean` | 7 | Central coefficients of the level-two Lambert-type sum are the odd divisor numbers; table certified to order fifteen |
| `TransitParity.lean` | 8 | Orbit decomposition of the quaternion group; transit parity under two declared identifications; modulus-two characterisation |
| `TransitParityExt.lean` | 8, extension | Universal relative alternation; the sign character of Γ₀(2) |
| `Witness.lean` | 9 | The admissible pair: the pillowcase as a compact metric quotient of the flat torus, corner gap exactly p/2 |
| `WitnessGeodesic.lean` | 10 | The admissible pair is a geodesic, hence length, space |
| `Audit.lean` | — | Axiom-audit driver: `#print axioms` for the twenty-nine certified declarations |

The library root `PillowcaseGap.lean` imports all twelve modules, so a
successful build verifies the whole collection. Each file states its own
scope in its header: the certificates eliminate arithmetic and algebraic
error; the geometric and physical arguments are in the paper.

### Building

Install [`elan`](https://github.com/leanprover/elan), then:

```bash
git clone <this repository>
cd PillowcaseGap-certificates
lake exe cache get     # fetch prebuilt Mathlib
lake build
```

Lean `4.29.1`, Mathlib pinned at `v4.29.1`; exact versions are fixed by
`lean-toolchain` and `lake-manifest.json`. Continuous integration runs the
same build on every commit — see the Actions tab.

No certificate contains `sorry`, and none introduces an axiom beyond Lean's
foundational ones. The build re-runs the axiom audit (`Audit.lean`); its
output is recorded in `axiom_audit_output.txt`.

## Licence

Code (Lean): MIT. Text of this README: CC-BY-4.0.
