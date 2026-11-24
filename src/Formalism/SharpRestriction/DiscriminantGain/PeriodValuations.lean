import Formalism.SharpRestriction.Divisibility.LocalQuadraticParts
import Formalism.LocalToGlobal.GroupLattices.ServJointF
import Formalism.SharpRestriction.GrowthBounds.SmallOrderPrimes
import Formalism.SharpRestriction.GrowthBounds.AdmissibleIntegers.StatementsOfRemainingBound

open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.BasicNotions.DV Formalism.MainNotions.G
open Formalism.L2.G.ServJoint Formalism.L2.G.ServJointF Formalism.L2.DIV
open scoped BigOperators
open Classical

set_option autoImplicit false

namespace ThetaDivisionSubstitution

/-- A local version of the period condition in `adm2`, with an explicit threshold. -/
def PeriodAt (D : D7) (L : SizeData₂ D) (u : D.what₂.Word) (w : D.what₂.places.Pl) (s : ℝ) : Prop :=
  ∀ φ : (D.div.Nu u).V, φ ∈ L.NuLat u →
    ∀ F ∈ (D.what₂.Mtilde (D.what₂.muAt w)).carrier, F ∈ D.what₂.V0 (D.what₂.muAt w) →
      ∃ y : D.what₂.LL, D.what₂.embLL y = D.what₂.perCol u (D.what₂.muAt w) (D.jN u φ) F ∧
        (y = 0 ∨ s ≤ (vAdd (D.plEq w) y : ℝ))

/-- The old division threshold, also used by `sgRec`. -/
noncomputable def orderAt (D : D7) (L : SizeData₂ D) (u : D.what₂.Word) (w : D.what₂.places.Pl) : ℝ :=
  (⌊ur D w (L.sg u w)⌋ : ℤ)

/-- Substitution at the first division consumer preserves the full increment. -/
theorem division_valuation_of_stronger_periods (D : D7) (L : SizeData₂ D) (B : ColBrF D)
    (hB : B.Tied) (hcut : ∀ μ, DV.Used D μ → CutUp D μ)
    (u : D.what₂.Word) (Nu : Submodule (𝓞 D.what₂.LL) (Fin (B.Dc.a (B.wU u)) → D.what₂.LL))
    (hNu : ∀ x ∈ Nu, B.eNu u x ∈ L.NuLat u) (z : HeightOneSpectrum (𝓞 D.what₂.LL))
    (s : ℝ) (h : PeriodAt D L u (D.plEq.symm z) s) :
    ∀ φ ∈ Nu, ∀ F ∈ B.Df1.Mt (B.tz z),
      B.Dc.Pt (B.wU u) (B.tz z) φ F = 0 ∨
        s ≤ (Formalism.DivisionValues.vw z (B.Dc.Pt (B.wU u) (B.tz z) φ F) : ℝ) := by
  intro φ hφ F hF
  have hmu : D.what₂.muAt (D.plEq.symm z) = B.tup (B.tz z) := by
    rw [hB.mu]; simp
  have hc := hcut (B.tup (B.tz z)) (Or.inr (Or.inr (Or.inr ⟨D.plEq.symm z, hmu.symm⟩)))
  have key := perToVal2F D B hB u (B.tz z) hc z s (Nu : Set _) (by
    intro x hx G hG hG0
    have h' := h (B.eNu u x) (hNu x hx)
    rw [hmu] at h'
    simp only [Equiv.apply_symm_apply] at h'
    exact h' G hG hG0)
  exact key φ (Submodule.subset_span hφ) F hF

end ThetaDivisionSubstitution
