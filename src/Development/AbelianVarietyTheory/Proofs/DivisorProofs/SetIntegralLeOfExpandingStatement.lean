module

public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Measure.Haar.OfBasis
public import Mathlib.MeasureTheory.Integral.Layercake
public import Mathlib.MeasureTheory.Measure.Hausdorff
public import Mathlib.MeasureTheory.Function.LocallyIntegrable
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SetIntegralLeOfExpanding, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SetIntegralLeOfExpandingStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SetIntegralLeOfExpanding =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SetIntegralLeOfExpanding", "h": "module\n\npublic import Mathlib.MeasureTheory.Integral.Bochner.Basic\npublic import Mathlib.MeasureTheory.Measure.Haar.OfBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Integral.Layercake\npublic import Mathlib.MeasureTheory.Measure.Hausdorff\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Function.LocallyIntegrable\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory

namespace GlobalTheory

theorem volume_le_mul_volume_image_of_expanding (N : ℕ) (S : Set (Fin N → ℝ)) (K : ℝ)
    (f : (Fin N → ℝ) → (Fin N → ℝ)) (hK : 0 ≤ K)
    (hf : ∀ t ∈ S, ∀ t' ∈ S, ‖t - t'‖ ≤ K * ‖f t - f t'‖) :
    volume S ≤ ENNReal.ofReal (K ^ N) * volume (f '' S) := by
  have hinj : Set.InjOn f S := by
    intro a ha b hb hab
    have := hf a ha b hb
    rw [hab, sub_self, norm_zero, mul_zero] at this
    exact sub_eq_zero.mp (norm_le_zero_iff.mp this)
  have hg : ∀ a ∈ S, Function.invFunOn f S (f a) = a := fun a ha => hinj.leftInvOn_invFunOn ha
  have hlip : LipschitzOnWith K.toNNReal (Function.invFunOn f S) (f '' S) := by
    apply LipschitzOnWith.of_dist_le_mul
    rintro _ ⟨a, ha, rfl⟩ _ ⟨b, hb, rfl⟩
    rw [hg a ha, hg b hb, dist_eq_norm, dist_eq_norm, Real.coe_toNNReal _ hK]
    exact hf a ha b hb
  have himg : Function.invFunOn f S '' (f '' S) = S := hinj.invFunOn_image subset_rfl
  have h := hlip.hausdorffMeasure_image_le (d := (Fintype.card (Fin N) : ℝ)) (by positivity)
  rw [himg, hausdorffMeasure_pi_real, Fintype.card_fin, ENNReal.rpow_natCast] at h
  rw [ENNReal.ofReal_pow hK]
  exact h

theorem setIntegral_le_of_expanding (N : ℕ) (A Q : Set (Fin N → ℝ)) (K : ℝ)
    (f : (Fin N → ℝ) → (Fin N → ℝ)) (h₁ h₂ : (Fin N → ℝ) → ℝ)
    (hA : IsCompact A) (hQ : IsCompact Q) (hK : 0 ≤ K) (c₁ : Continuous h₁) (c₂ : Continuous h₂)
    (n₁ : ∀ t, 0 ≤ h₁ t) (n₂ : ∀ t, 0 ≤ h₂ t) (hm : ∀ t ∈ A, f t ∈ Q ∧ h₁ t ≤ h₂ (f t))
    (hf : ∀ t ∈ A, ∀ t' ∈ A, ‖t - t'‖ ≤ K * ‖f t - f t'‖) :
    ∫ t in A, h₁ t ≤ K ^ N * ∫ t in Q, h₂ t := by
  have i₁ : IntegrableOn h₁ A volume := c₁.continuousOn.integrableOn_compact hA
  have i₂ : IntegrableOn h₂ Q volume := c₂.continuousOn.integrableOn_compact hQ
  have hKN : 0 ≤ K ^ N := pow_nonneg hK N
  have hI₂ : 0 ≤ ∫ t in Q, h₂ t := integral_nonneg n₂
  rw [← ENNReal.ofReal_le_ofReal_iff (mul_nonneg hKN hI₂), ENNReal.ofReal_mul hKN,
    ofReal_integral_eq_lintegral_ofReal i₁ (Filter.Eventually.of_forall n₁),
    ofReal_integral_eq_lintegral_ofReal i₂ (Filter.Eventually.of_forall n₂),
    lintegral_eq_lintegral_meas_lt _ (Filter.Eventually.of_forall n₁) c₁.aemeasurable,
    lintegral_eq_lintegral_meas_lt _ (Filter.Eventually.of_forall n₂) c₂.aemeasurable,
    ← lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
  refine lintegral_mono fun r => ?_
  have m₁ : MeasurableSet {a | r < h₁ a} := measurableSet_lt measurable_const c₁.measurable
  have m₂ : MeasurableSet {a | r < h₂ a} := measurableSet_lt measurable_const c₂.measurable
  rw [Measure.restrict_apply m₁, Measure.restrict_apply m₂]
  refine (volume_le_mul_volume_image_of_expanding N ({a | r < h₁ a} ∩ A) K f hK
    (fun t ht t' ht' => hf t ht.2 t' ht'.2)).trans ?_
  gcongr
  rintro _ ⟨a, ⟨ha, haA⟩, rfl⟩
  exact ⟨lt_of_lt_of_le ha (hm a haA).2, (hm a haA).1⟩

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SetIntegralLeOfExpanding =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SetIntegralLeOfExpandingStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SetIntegralLeOfExpandingStatement", "h": "module\n\npublic import Mathlib.MeasureTheory.Integral.Bochner.Basic\npublic import Mathlib.MeasureTheory.Measure.Haar.OfBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SetIntegralLeOfExpanding\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory

theorem _root_.GlobalTheory.T.setIntegral_le_pow_mul_setIntegral_of_expanding : ∀ (N : ℕ) (A Q : Set (Fin N → ℝ)) (K : ℝ) (f : (Fin N → ℝ) → (Fin N → ℝ)) (h₁ h₂ : (Fin N → ℝ) → ℝ), IsCompact A → IsCompact Q → 0 ≤ K → Continuous h₁ → Continuous h₂ → (∀ t, 0 ≤ h₁ t) → (∀ t, 0 ≤ h₂ t) → (∀ t ∈ A, f t ∈ Q ∧ h₁ t ≤ h₂ (f t)) → (∀ t ∈ A, ∀ t' ∈ A, ‖t - t'‖ ≤ K * ‖f t - f t'‖) → ∫ t in A, h₁ t ≤ K ^ N * ∫ t in Q, h₂ t := by
  first | exact @GlobalTheory.setIntegral_le_of_expanding | exact GlobalTheory.setIntegral_le_of_expanding | (intros; apply GlobalTheory.setIntegral_le_of_expanding <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SetIntegralLeOfExpandingStatement =====
