import Formalism.SharpRestriction.DiscriminantGain.UpstreamInputs
import Formalism.SharpRestriction.SmoothDesignExistence.SumOverPrimesHypotheses

open Formalism.MainNotions Formalism.MainNotions.Pk Formalism.L2.G.Adm2InU Formalism.L2.DIV

namespace ThetaConcreteDivision

/-- Use the original `pdv` and admissibility fields to supply the local data at the same family point. -/
theorem realized_inputs_closed_of_pdv {𝒞 : FamClass} (hKer : SumOverPrimesHypotheses 𝒞)
    (hPer : Adm2InU 𝒞) (Cabs : ℝ)
    (hRows : Closed 𝒞 fun Fm CH =>
      ∃ Rw : Σ' x0 : ℝ, ∀ x, Fm.x1 < x → x0 ≤ x → ∀ i : Fm.Ix x,
        DivisionRowsFace (Fm.L x i), BridgeRowsF Fm Rw Cabs CH)
    (hN : Closed 𝒞 fun Fm _ => DIVinN Fm) :
    Closed 𝒞 fun Fm _ => ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x,
      2 ≤ (Fm.D x i).R.n0 ∧ Nonempty (RealizedInputs (Fm.D x i) (Fm.L x i)) :=
  realized_inputs_closed hKer.pdv hPer Cabs hRows hN

end ThetaConcreteDivision
