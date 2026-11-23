module

public import Mathlib.Algebra.Polynomial.Eval.Defs
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
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
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjSkewDetUnitOfAvoidance, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjSkewDetUnitOfAvoidanceStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjSkewDetUnitOfAvoidance =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjSkewDetUnitOfAvoidance", "h": "module\n\npublic import Mathlib.Algebra.Polynomial.Eval.Defs\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix

namespace GlobalTheory

theorem exists_conj_skew_det_unit_of_avoidance :
  ∀ {F R : Type} [Field F] [CommRing R] [Algebra F R] [Invertible (2 : R)] (c : R →+* R), (∀ r, c (c r) = r) → (∀ t : F, c (algebraMap F R t) = algebraMap F R t) → ∀ (e : R), (∀ ψ : Polynomial R, (∀ (Ω : Type) [Field Ω] (φ : R →+* Ω), φ e = 1 → ψ.map φ ≠ 0) → ∃ t : F, IsUnit (e * ψ.eval (algebraMap F R t) + (1 - e))) → ∀ (ρ : R), IsUnit ρ → c ρ = -ρ → ∀ {n : ℕ} (J₀ : Matrix (Fin n) (Fin n) R) (ε : ℤˣ), (J₀.map c)ᵀ = ((ε : ℤ) : R) • J₀ → IsUnit J₀.det → ∀ (D C x₀ : Matrix (Fin n) (Fin n) R), IsUnit (e * (D + C * x₀).det + (1 - e)) → ∃ x : Matrix (Fin n) (Fin n) R, xᵀ * J₀ + J₀ * x.map c = 0 ∧ IsUnit (e * (D + C * x).det + (1 - e)) := by
  intro F R _ _ _ _ c hcc hcF e H ρ hρ hcρ n J₀ ε hJ hdet D C x₀ hx₀
  obtain ⟨e', he'⟩ : ∃ a : R, a = ((ε : ℤ) : R) := ⟨_, rfl⟩
  rw [← he'] at hJ
  have hee : e' * e' = 1 := by
    rw [he', ← Int.cast_mul, ← Units.val_mul, Int.units_mul_self, Units.val_one, Int.cast_one]
  have hce : c e' = e' := by rw [he']; exact map_intCast c _
  have h2 : (2 : R) * ⅟2 = 1 := mul_invOf_self 2
  have hc2 : c (⅟2 : R) = ⅟2 := by
    have h1 : c (⅟2 : R) * 2 = 1 := by
      have := congrArg c (invOf_mul_self (2 : R))
      rwa [map_mul, map_ofNat, map_one] at this
    calc c (⅟2 : R) = c (⅟2) * (2 * ⅟2) := by rw [h2, mul_one]
      _ = ⅟2 := by rw [← mul_assoc, h1, one_mul]
  obtain ⟨r, hr'⟩ : ∃ a : R, a = ↑hρ.unit⁻¹ := ⟨_, rfl⟩
  have hr : ρ * r = 1 := by rw [hr']; exact hρ.mul_val_inv
  have hcr : c r = -r := by
    have h1 : c r * (-ρ) = 1 := by rw [← hcρ, ← map_mul, mul_comm, hr, map_one]
    linear_combination (-r) * h1 + (-c r) * hr
  have hKdet : IsUnit (J₀ᵀ).det := by rw [Matrix.det_transpose]; exact hdet
  have hLK : J₀ᵀ⁻¹ * J₀ᵀ = 1 := Matrix.nonsing_inv_mul _ hKdet
  have hLtJ : (J₀ᵀ⁻¹)ᵀ * J₀ = 1 := by
    have : J₀ * (J₀ᵀ⁻¹)ᵀ = 1 := by
      have := congrArg Matrix.transpose hLK
      rwa [Matrix.transpose_mul, Matrix.transpose_transpose, Matrix.transpose_one] at this
    exact mul_eq_one_comm.mp this
  have hJLc : J₀ * (J₀ᵀ⁻¹).map c = e' • 1 := by
    have h1 : (J₀ᵀ⁻¹).map c * (e' • J₀) = 1 := by
      have := congrArg c.mapMatrix hLK
      rw [map_mul, map_one, RingHom.mapMatrix_apply, RingHom.mapMatrix_apply, Matrix.transpose_map, hJ] at this
      exact this
    have h3 : (e' • J₀) * (J₀ᵀ⁻¹).map c = 1 := mul_eq_one_comm.mp h1
    rw [Matrix.smul_mul] at h3
    calc J₀ * (J₀ᵀ⁻¹).map c = (e' * e') • (J₀ * (J₀ᵀ⁻¹).map c) := by rw [hee, one_smul]
      _ = e' • (e' • (J₀ * (J₀ᵀ⁻¹).map c)) := by rw [mul_smul]
      _ = e' • 1 := by rw [h3]
  obtain ⟨M₀, hM₀⟩ : ∃ M : Matrix (Fin n) (Fin n) R, M = J₀ᵀ * x₀ := ⟨_, rfl⟩
  obtain ⟨v, hv'⟩ : ∃ M : Matrix (Fin n) (Fin n) R,
      M = (⅟2 : R) • (M₀ - Matrix.of fun i j => e' * c (M₀ j i)) := ⟨_, rfl⟩
  obtain ⟨w, hw'⟩ : ∃ M : Matrix (Fin n) (Fin n) R,
      M = (r * ⅟2) • (M₀ + Matrix.of fun i j => e' * c (M₀ j i)) := ⟨_, rfl⟩
  have hv : ∀ i j, v j i + e' * c (v i j) = 0 := by
    intro i j
    simp only [hv', Matrix.smul_apply, Matrix.sub_apply, Matrix.of_apply, smul_eq_mul, map_mul,
      map_sub, hc2, hce, hcc]
    linear_combination (-(⅟2 : R) * M₀ j i) * hee
  have hw : ∀ i j, w j i + e' * c (w i j) = 0 := by
    intro i j
    simp only [hw', Matrix.smul_apply, Matrix.add_apply, Matrix.of_apply, smul_eq_mul, map_mul,
      map_add, hc2, hce, hcc, hcr]
    linear_combination (-(r * ⅟2) * M₀ j i) * hee
  have hsum : v + ρ • w = M₀ := by
    ext i j
    simp only [hv', hw', Matrix.add_apply, Matrix.smul_apply, Matrix.sub_apply, Matrix.of_apply,
      smul_eq_mul]
    linear_combination ((⅟2 : R) * (M₀ i j + e' * c (M₀ j i))) * hr + M₀ i j * h2
  have hcond : ∀ s, c s = s →
      (J₀ᵀ⁻¹ * (v + s • w))ᵀ * J₀ + J₀ * (J₀ᵀ⁻¹ * (v + s • w)).map c = 0 := by
    intro s hs
    have e1 : (J₀ᵀ⁻¹ * (v + s • w))ᵀ * J₀ = (v + s • w)ᵀ := by
      rw [Matrix.transpose_mul, Matrix.mul_assoc, hLtJ, Matrix.mul_one]
    have e2 : J₀ * (J₀ᵀ⁻¹ * (v + s • w)).map c = e' • (v + s • w).map c := by
      rw [Matrix.map_mul, ← Matrix.mul_assoc, hJLc, Matrix.smul_mul, Matrix.one_mul]
    rw [e1, e2]
    ext i j
    simp only [Matrix.add_apply, Matrix.transpose_apply, Matrix.smul_apply, Matrix.map_apply,
      smul_eq_mul, map_add, map_mul, hs, Matrix.zero_apply]
    linear_combination hv i j + s * hw i j
  obtain ⟨ψ, hψ⟩ : ∃ p : Polynomial R, p = ((D + C * J₀ᵀ⁻¹ * v).map Polynomial.C +
      (Polynomial.X : Polynomial R) • (C * J₀ᵀ⁻¹ * w).map Polynomial.C).det := ⟨_, rfl⟩
  have hev : ∀ s, ψ.eval s = (D + C * (J₀ᵀ⁻¹ * (v + s • w))).det := by
    intro s
    have hre : D + C * (J₀ᵀ⁻¹ * (v + s • w)) = (D + C * J₀ᵀ⁻¹ * v) + s • (C * J₀ᵀ⁻¹ * w) := by
      simp only [Matrix.mul_add, Matrix.mul_smul, Matrix.mul_assoc, add_assoc]
    rw [hre, hψ, ← Polynomial.coe_evalRingHom, RingHom.map_det]
    congr 1
    ext i j
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.add_apply, Matrix.smul_apply,
      smul_eq_mul, Polynomial.coe_evalRingHom, Polynomial.eval_add, Polynomial.eval_mul,
      Polynomial.eval_X, Polynomial.eval_C]
  have hρev : ψ.eval ρ = (D + C * x₀).det := by
    rw [hev, hsum, hM₀, ← Matrix.mul_assoc J₀ᵀ⁻¹, hLK, Matrix.one_mul]
  have hne : ∀ (Ω : Type) [Field Ω] (φ : R →+* Ω), φ e = 1 → ψ.map φ ≠ 0 := by
    intro Ω _ φ hφ h0
    have h1 := congrArg (Polynomial.eval (φ ρ)) h0
    rw [Polynomial.eval_map, Polynomial.eval₂_at_apply, Polynomial.eval_zero, hρev] at h1
    have hu := hx₀.map φ
    rw [map_add (f := _), map_mul, map_sub, map_one, hφ, one_mul, sub_self, add_zero, h1] at hu
    exact not_isUnit_zero hu
  obtain ⟨t, ht⟩ := H ψ hne
  refine ⟨J₀ᵀ⁻¹ * (v + algebraMap F R t • w), hcond _ (hcF t), ?_⟩
  rwa [hev] at ht

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjSkewDetUnitOfAvoidance =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjSkewDetUnitOfAvoidanceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjSkewDetUnitOfAvoidanceStatement", "h": "module\n\npublic import Mathlib.Algebra.Polynomial.Eval.Defs\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjSkewDetUnitOfAvoidance\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped Matrix

theorem _root_.GlobalTheory.T.exists_conj_skew_det_unit_of_avoidance' : ∀ {F R : Type} [Field F] [CommRing R] [Algebra F R] [Invertible (2 : R)] (c : R →+* R), (∀ r, c (c r) = r) → (∀ t : F, c (algebraMap F R t) = algebraMap F R t) → ∀ (e : R), (∀ ψ : Polynomial R, (∀ (Ω : Type) [Field Ω] (φ : R →+* Ω), φ e = 1 → ψ.map φ ≠ 0) → ∃ t : F, IsUnit (e * ψ.eval (algebraMap F R t) + (1 - e))) → ∀ (ρ : R), IsUnit ρ → c ρ = -ρ → ∀ {n : ℕ} (J₀ : Matrix (Fin n) (Fin n) R) (ε : ℤˣ), (J₀.map c)ᵀ = ((ε : ℤ) : R) • J₀ → IsUnit J₀.det → ∀ (D C x₀ : Matrix (Fin n) (Fin n) R), IsUnit (e * (D + C * x₀).det + (1 - e)) → ∃ x : Matrix (Fin n) (Fin n) R, xᵀ * J₀ + J₀ * x.map c = 0 ∧ IsUnit (e * (D + C * x).det + (1 - e)) := by
  first | exact @GlobalTheory.exists_conj_skew_det_unit_of_avoidance | exact GlobalTheory.exists_conj_skew_det_unit_of_avoidance | (intros; apply GlobalTheory.exists_conj_skew_det_unit_of_avoidance <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConjSkewDetUnitOfAvoidanceStatement =====
