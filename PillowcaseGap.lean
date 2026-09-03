import PillowcaseGap.Corners
import PillowcaseGap.Gap
import PillowcaseGap.Identification
import PillowcaseGap.Transfer
import PillowcaseGap.Scope
import PillowcaseGap.BettiParity
import PillowcaseGap.OddDivisors
import PillowcaseGap.TransitParity
import PillowcaseGap.TransitParityExt
import PillowcaseGap.Witness
import PillowcaseGap.WitnessGeodesic
import PillowcaseGap.Audit

/-!
# Pillowcase-gap certificates

Library root. It imports the eleven certificate modules of this repository
together with the axiom-audit driver, so that `lake build` compiles and
verifies the whole collection:

* `Corners` — Certificate 1: the four corners of the pillowcase are exactly
  the two-torsion points of the torus, pairwise distinct (Lemma 2.2).
* `Gap` — Certificate 2: positivity of the corner gap at metric-space level
  (Lemma 2.3).
* `Identification` — Certificate 3: from the three class hypotheses, κΔ is
  the lowest non-vacuum one-particle mass (Proposition 7.1, spectral-class
  form).
* `Transfer` — Certificate 4: the gap and the identification for an arbitrary
  gauge-group datum, with proofs definitionally constant in that datum
  (Proposition 7.2).
* `Scope` — Certificate 5: the value of the gap is not selection-independent
  (Corollary 8.1, value half, abstraction).
* `BettiParity` — Certificate 6: signed count equals absolute count under
  odd vanishing (Theorem B.9, parity implication).
* `OddDivisors` — Certificate 7: the central coefficients of the level-two
  Lambert-type sum are the odd divisor numbers (Propositions 3.4 and 5.3).
* `TransitParity` — Certificate 8: the orbit decomposition of Q₈, the
  transit parity under two declared identifications, and the modulus-two
  characterisation (Lemma 4.2, Proposition 4.3, Corollary B.4).
* `TransitParityExt` — Certificate 8, extension: the universal relative
  alternation and the sign character of Γ₀(2) (Proposition B.3, Lemma B.5).
* `Witness` — Certificate 9: the admissible pair — the pillowcase as a
  compact metric quotient of the flat torus, corner gap exactly p/2
  (Corollary 8.1, value half, admissible pair).
* `WitnessGeodesic` — Certificate 10: the admissible pair is a geodesic,
  hence length, space (Corollary 8.1, admissibility).
* `Audit` — the axiom-audit driver: `#print axioms` for the twenty-nine
  certified declarations.

Each module is a self-contained certificate accompanying the paper
"A spectral gap uniform in the gauge group for a class of Kaluza–Klein
reductions over the pillowcase". Each file states its own scope in its
header: the certificates eliminate arithmetic and algebraic error; the
geometric and physical arguments are in the paper itself.
-/
