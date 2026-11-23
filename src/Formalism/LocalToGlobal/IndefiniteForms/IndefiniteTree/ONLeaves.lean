module

public import Formalism.MirabolicMackeyTheory.StatementL
public import Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.Mirabolic
public import Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.OnLocal
public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Basic.Real.Basic
public import Mathlib.Order.Interval.Finset.Nat
public import Mathlib.Algebra.BigOperators.Group.Finset.Basic
public import Mathlib.Algebra.BigOperators.Intervals
public import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
public import Mathlib.Algebra.Ring.GeomSum
public import Formalism.PeriodIntegrals.MirabIndex
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicIndex.RowMulOfMirab
public import Formalism.PeriodIntegrals.UnipVal
public import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
public import Mathlib.NumberTheory.Padics.PadicVal.Basic
public import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.ExampleSatisfiesConditionsAtFive
public import Mathlib.NumberTheory.Cyclotomic.Basic
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
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.IsMackeyPiUpperUnipotentProdCharacter, Formalism.PeriodIntegrals.IndexUBound, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IndexUpperBound.OneSubSumLeProd, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.IndexUBound, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.MirabIndex, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentValuation.VwIntEqZero, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnipVal, Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.ONLeaves

-- ===== clump member: Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.IsMackeyPiUpperUnipotentProdCharacter =====
-- clump-header: {"m": "Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.IsMackeyPiUpperUnipotentProdCharacter", "h": "module\n\npublic import Formalism.MirabolicMackeyTheory.StatementL\npublic import Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.Mirabolic\npublic import Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.OnLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain

namespace Formalism.EigenvalueLevelCeiling

open Formalism.DivisionValues

theorem isMackey_pi_upper_unipotent_prod_character (K : Type) [Field K] [NumberField K]
    (ι : Type) [Fintype ι] [DecidableEq ι] (k : ι → Type) [∀ v, Field (k v)] [∀ v, Finite (k v)] (n : ℕ)
    (χ : ∀ v, AddChar (k v) (𝓞 K)) (hχ : ∀ v, χ v ≠ 1)
    (P : ∀ v, Subgroup (GL (Fin (n + 1)) (k v))) (U : ∀ v, Subgroup (P v))
    (hP : ∀ v, ∀ h : GL (Fin (n + 1)) (k v), h ∈ P v ↔ IsMirab (h : Matrix (Fin (n + 1)) (Fin (n + 1)) (k v)))
    (hU : ∀ v, ∀ h : P v, h ∈ U v ↔
      IsUniU ((h : GL (Fin (n + 1)) (k v)) : Matrix (Fin (n + 1)) (Fin (n + 1)) (k v))) :
    IsMackey (Subgroup.pi Set.univ U) (fun h : (∀ v, P v) =>
      ∏ v, χ v (supd (((h v : P v) : GL (Fin (n + 1)) (k v)) : Matrix (Fin (n + 1)) (Fin (n + 1)) (k v)))) := mackey_product ι (𝓞 K) (fun v => ↥(P v)) U
    (fun v (h : P v) => χ v (supd (((h : GL (Fin (n + 1)) (k v)) : Matrix (Fin (n + 1)) (Fin (n + 1)) (k v)))))
    (fun v => mirabolic_is_mackey (k v) (𝓞 K) n (χ v) (hχ v) (P v) (U v) (hP v) (hU v))

end Formalism.EigenvalueLevelCeiling
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.IsMackeyPiUpperUnipotentProdCharacter =====

-- ===== clump member: Formalism.PeriodIntegrals.IndexUBound =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.IndexUBound", "h": "module\n\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Basic.Real.Basic\npublic import Mathlib.Order.Interval.Finset.Nat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.IndexUBound

def IndexUBound : Prop :=
  ∀ (ι : Type) (S : Finset ι) (g : ι → ℕ) (r : ℕ) (y : ℝ),
    (∀ v ∈ S, 2 ≤ g v) → ∑ v ∈ S, 1 / ((g v : ℝ) - 1) ≤ y →
      (1 - y) * ∏ v ∈ S, (g v : ℝ) ^ (r * (r - 1) / 2) ≤
        ∏ v ∈ S, ∏ i ∈ Finset.Ico 1 r, ((g v : ℝ) ^ i - 1)

end PI.IndexUBound
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.IndexUBound =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IndexUpperBound.OneSubSumLeProd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IndexUpperBound.OneSubSumLeProd", "h": "module\n\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Basic.Real.Basic\npublic import Mathlib.Order.Interval.Finset.Nat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Basic\npublic import Mathlib.Algebra.BigOperators.Intervals\npublic import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset\npublic import Mathlib.Algebra.Ring.GeomSum\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.UnitaryGroupMassFormula.IndexUBound

open Finset

theorem one_sub_sum_le_prod {ι : Type*} [DecidableEq ι] (s : Finset ι) (P b : ι → ℝ)
    (hP0 : ∀ i ∈ s, 0 ≤ P i) (hP1 : ∀ i ∈ s, P i ≤ 1) (hb : ∀ i ∈ s, 0 ≤ b i)
    (hPb : ∀ i ∈ s, 1 - b i ≤ P i) : 1 - ∑ i ∈ s, b i ≤ ∏ i ∈ s, P i := by
  induction s using Finset.induction_on with
  | empty => simp
  | insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.prod_insert ha]
    have hm : ∀ i ∈ s, i ∈ insert a s := fun i hi => Finset.mem_insert_of_mem hi
    have hQ0 : 0 ≤ ∏ i ∈ s, P i := Finset.prod_nonneg fun i hi => hP0 i (hm i hi)
    have hQ1 : ∏ i ∈ s, P i ≤ 1 :=
      Finset.prod_le_one₀ (fun i hi => hP0 i (hm i hi)) (fun i hi => hP1 i (hm i hi))
    have h := ih (fun i hi => hP0 i (hm i hi)) (fun i hi => hP1 i (hm i hi))
      (fun i hi => hb i (hm i hi)) (fun i hi => hPb i (hm i hi))
    have ha1 := hP1 a (Finset.mem_insert_self a s)
    have hab := hPb a (Finset.mem_insert_self a s)
    nlinarith [mul_nonneg (sub_nonneg.2 ha1) (sub_nonneg.2 hQ1)]

theorem prod_Ico_pow (g : ℝ) (r : ℕ) :
    ∏ i ∈ Ico 1 r, g ^ i = g ^ (r * (r - 1) / 2) := by
  rw [Finset.prod_pow_eq_pow_sum, ← Finset.sum_range_id]
  congr 1
  rcases Nat.eq_zero_or_pos r with rfl | hr
  · simp
  · rw [Finset.range_eq_Ico, Finset.sum_eq_sum_Ico_succ_bot hr]
    simp

theorem prod_factor (g : ℝ) (hg : g ≠ 0) (r : ℕ) :
    ∏ i ∈ Ico 1 r, (g ^ i - 1) = g ^ (r * (r - 1) / 2) * ∏ i ∈ Ico 1 r, (1 - g⁻¹ ^ i) := by
  rw [← PI.UnitaryGroupMassFormula.IndexUBound.prod_Ico_pow, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun i _ => ?_
  rw [mul_sub, mul_one, inv_pow, mul_inv_cancel₀ (pow_ne_zero _ hg)]

theorem inner_bounds (g : ℝ) (hg : 2 ≤ g) (r : ℕ) :
    0 ≤ ∏ i ∈ Ico 1 r, (1 - g⁻¹ ^ i) ∧ ∏ i ∈ Ico 1 r, (1 - g⁻¹ ^ i) ≤ 1 ∧
      1 - 1 / (g - 1) ≤ ∏ i ∈ Ico 1 r, (1 - g⁻¹ ^ i) := by
  have hg0 : 0 < g := by linarith
  set x := g⁻¹ with hx
  have hx0 : 0 < x := inv_pos.2 hg0
  have hx1 : x ≤ 1 := inv_le_one_of_one_le₀ (by linarith)
  have hxg : x * g = 1 := inv_mul_cancel₀ hg0.ne'
  have hpow0 : ∀ i : ℕ, 0 ≤ x ^ i := fun i => pow_nonneg hx0.le i
  have hpow1 : ∀ i : ℕ, x ^ i ≤ 1 := fun i => pow_le_one₀ hx0.le hx1
  have hf0 : ∀ i ∈ Ico 1 r, 0 ≤ 1 - x ^ i := fun i _ => sub_nonneg.2 (hpow1 i)
  have hf1 : ∀ i ∈ Ico 1 r, 1 - x ^ i ≤ 1 := fun i _ => by linarith [hpow0 i]
  refine ⟨Finset.prod_nonneg hf0, Finset.prod_le_one₀ hf0 hf1, ?_⟩
  have hS : (∑ i ∈ Ico 1 r, x ^ i) * (g - 1) ≤ 1 := by
    rcases Nat.eq_zero_or_pos r with rfl | hr
    · simp
    · have h := geom_sum_Ico_mul x hr
      have e : (∑ i ∈ Ico 1 r, x ^ i) * (g - 1) = 1 - x ^ r * g := by
        linear_combination (-g) * h + ((∑ i ∈ Ico 1 r, x ^ i) + 1) * hxg
      rw [e]
      nlinarith [hpow0 r]
  have hS' : ∑ i ∈ Ico 1 r, x ^ i ≤ 1 / (g - 1) := by
    rw [le_div_iff₀ (by linarith)]
    exact hS
  have h1 := PI.UnitaryGroupMassFormula.IndexUBound.one_sub_sum_le_prod (Ico 1 r) (fun i => 1 - x ^ i)
    (fun i => x ^ i) hf0 hf1 (fun i _ => hpow0 i) (fun i _ => le_refl _)
  beta_reduce at h1
  linarith

end PI.UnitaryGroupMassFormula.IndexUBound
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IndexUpperBound.OneSubSumLeProd =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.IndexUBound =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.IndexUBound", "h": "module\n\npublic import Formalism.PeriodIntegrals.IndexUBound\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IndexUpperBound.OneSubSumLeProd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem product_lowerBound : PI.IndexUBound.IndexUBound := by
  classical
  intro ι S g r y hg hy
  have h2 : ∀ v ∈ S, (2 : ℝ) ≤ g v := fun v hv => by exact_mod_cast hg v hv

  have hfac : ∀ v ∈ S, ∏ i ∈ Finset.Ico 1 r, ((g v : ℝ) ^ i - 1) =
      (g v : ℝ) ^ (r * (r - 1) / 2) * ∏ i ∈ Finset.Ico 1 r, (1 - (g v : ℝ)⁻¹ ^ i) :=
    fun v hv => PI.UnitaryGroupMassFormula.IndexUBound.prod_factor _ (by linarith [h2 v hv] : (0 : ℝ) < g v).ne' r
  rw [Finset.prod_congr rfl hfac, Finset.prod_mul_distrib]

  have hQ := PI.UnitaryGroupMassFormula.IndexUBound.one_sub_sum_le_prod S
    (fun v => ∏ i ∈ Finset.Ico 1 r, (1 - (g v : ℝ)⁻¹ ^ i)) (fun v => 1 / ((g v : ℝ) - 1))
    (fun v hv => (PI.UnitaryGroupMassFormula.IndexUBound.inner_bounds _ (h2 v hv) r).1)
    (fun v hv => (PI.UnitaryGroupMassFormula.IndexUBound.inner_bounds _ (h2 v hv) r).2.1)
    (fun v hv => div_nonneg zero_le_one (by linarith [h2 v hv]))
    (fun v hv => (PI.UnitaryGroupMassFormula.IndexUBound.inner_bounds _ (h2 v hv) r).2.2)
  beta_reduce at hQ
  have hpos : 0 ≤ ∏ v ∈ S, (g v : ℝ) ^ (r * (r - 1) / 2) :=
    Finset.prod_nonneg fun v _ => by positivity
  have key := mul_le_mul_of_nonneg_right
    (show 1 - y ≤ ∏ v ∈ S, ∏ i ∈ Finset.Ico 1 r, (1 - (g v : ℝ)⁻¹ ^ i) by linarith) hpos
  linarith
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.IndexUBound =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.MirabIndex =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.MirabIndex", "h": "module\n\npublic import Formalism.PeriodIntegrals.MirabIndex\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicIndex.RowMulOfMirab\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem mirabolic_index : PI.MirabIndex.MirabIndex := PI.MirabolicIndex₂.mirabIndex
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.MirabIndex =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentValuation.VwIntEqZero =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentValuation.VwIntEqZero", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnipVal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.NumberTheory.Padics.PadicVal.Basic\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain

noncomputable section

namespace PI.UnitaryGroupMassFormula.UnipVal.Main

open PI.UnipVal

variable {K : Type} [Field K] [NumberField K]

lemma vw_mul (w : HeightOneSpectrum (𝓞 K)) {x y : K} (hx : x ≠ 0) (hy : y ≠ 0) :
    vw w (x * y) = vw w x + vw w y := by
  simp only [vw]
  rw [← FractionalIdeal.spanSingleton_mul_spanSingleton,
    FractionalIdeal.count_mul K w (FractionalIdeal.spanSingleton_eq_zero_iff.not.mpr hx)
      (FractionalIdeal.spanSingleton_eq_zero_iff.not.mpr hy)]

lemma vw_pow (w : HeightOneSpectrum (𝓞 K)) (x : K) (k : ℕ) : vw w (x ^ k) = k * vw w x := by
  simp only [vw]
  rw [← FractionalIdeal.spanSingleton_pow, FractionalIdeal.count_pow]

lemma vw_int_eq_zero (w : HeightOneSpectrum (𝓞 K)) (x : 𝓞 K) (hx : x ≠ 0)
    (hxw : x ∉ w.asIdeal) : vw w (algebraMap (𝓞 K) K x) = 0 := by
  have hJ : Ideal.span {x} ≠ (0 : Ideal (𝓞 K)) := by
    rw [Ne, Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot]
    exact hx
  have h0 : (Associates.mk w.asIdeal).count (Associates.mk (Ideal.span {x})).factors = 0 := by
    by_contra hne
    exact hxw ((Ideal.span_singleton_le_iff_mem _).mp
      (Ideal.le_of_dvd ((Associates.count_ne_zero_iff_dvd hJ w.irreducible).mp hne)))
  simp only [vw]
  rw [← FractionalIdeal.coeIdeal_span_singleton, FractionalIdeal.count_coe K w hJ]
  exact_mod_cast h0

lemma plc_prime (w : HeightOneSpectrum (𝓞 K)) : (plc w).Prime := by
  haveI : Finite (𝓞 K ⧸ w.asIdeal) := Ideal.finiteQuotientOfFreeOfNeBot _ w.ne_bot
  haveI : w.asIdeal.IsPrime := w.isPrime
  rw [plc]
  exact CharP.char_is_prime (𝓞 K ⧸ w.asIdeal) _

lemma natCast_mem_iff (w : HeightOneSpectrum (𝓞 K)) (m : ℕ) :
    ((m : 𝓞 K) ∈ w.asIdeal) ↔ plc w ∣ m := by
  rw [← Ideal.Quotient.eq_zero_iff_mem, map_natCast, plc, ringChar.spec]

theorem part1 (w : HeightOneSpectrum (𝓞 K)) (n : ℕ) (hn : n ≠ 0) :
    vw w ((n : ℕ) : K) = ramw w * (padicValNat (plc w) n : ℤ) := by
  have hp := plc_prime w
  haveI : Fact (plc w).Prime := ⟨hp⟩
  obtain ⟨m, hm⟩ := (fun {p n : ℕ} => _root_.Dvd.intro_left _ (_root_.Nat.divMaxPow_mul_pow_padicValNat p n)) (p := plc w) (n := n)
  have hm0 : m ≠ 0 := by
    rintro rfl
    exact hn (by simpa using hm)
  have hpm : ¬ plc w ∣ m := by
    rintro ⟨c, rfl⟩
    exact pow_succ_multiplicity_not_dvd hn ⟨c, hm.trans (by rw [← Nat.padicValNat_def]; ring)⟩
  have hmw : ((m : 𝓞 K)) ∉ w.asIdeal := by
    rw [natCast_mem_iff]
    exact hpm
  have hm0' : ((m : 𝓞 K)) ≠ 0 := by
    intro h
    apply hmw
    rw [h]
    exact w.asIdeal.zero_mem
  have hval := vw_int_eq_zero w (m : 𝓞 K) hm0' hmw
  rw [map_natCast] at hval
  have hpK : ((plc w : ℕ) : K) ≠ 0 := Nat.cast_ne_zero.mpr hp.ne_zero
  have hmK : ((m : ℕ) : K) ≠ 0 := Nat.cast_ne_zero.mpr hm0
  conv_lhs => rw [hm]
  rw [Nat.cast_mul, Nat.cast_pow, vw_mul w (pow_ne_zero _ hpK) hmK, vw_pow, hval, ramw]
  ring

lemma pv_prime (l g : ℕ) (hl : l.Prime) (hg : g.Prime) :
    padicValNat l g = if l = g then 1 else 0 := by
  rw [Nat.padicValNat_def]
  split_ifs with h
  · rw [h]
    exact Nat.multiplicity_self hg.one_lt
  · exact multiplicity_eq_zero_of_not_dvd fun hd => h ((Nat.prime_dvd_prime_iff_eq hl hg).mp hd)

theorem part2 (w : HeightOneSpectrum (𝓞 K)) (g₁ g₂ a : ℕ) (h1 : g₁.Prime) (h2 : g₂.Prime)
    (h12 : g₁ ≠ g₂) :
    (vw w (((g₁ ^ a * g₂ ^ a : ℕ)) : K) : ℝ) =
      (ramw w : ℝ) * (if plc w = g₁ ∨ plc w = g₂ then (a : ℝ) else 0) := by
  have hp := plc_prime w
  haveI : Fact (plc w).Prime := ⟨hp⟩
  have ha1 : g₁ ^ a ≠ 0 := pow_ne_zero _ h1.ne_zero
  have ha2 : g₂ ^ a ≠ 0 := pow_ne_zero _ h2.ne_zero
  rw [part1 w _ (mul_ne_zero ha1 ha2), Nat.padicValNat_def, Nat.multiplicity_mul ha1 ha2,
    Nat.multiplicity_pow g₁ a, Nat.multiplicity_pow g₂ a]
  simp only [← Nat.padicValNat_def, pv_prime _ _ hp h1, pv_prime _ _ hp h2]
  by_cases e1 : plc w = g₁
  · have e2 : plc w ≠ g₂ := fun e => h12 (e1.symm.trans e)
    rw [if_pos e1, if_neg e2, if_pos (Or.inl e1)]
    push_cast
    ring
  · by_cases e2 : plc w = g₂
    · rw [if_neg e1, if_pos e2, if_pos (Or.inr e2)]
      push_cast
      ring
    · rw [if_neg e1, if_neg e2, if_neg (not_or.mpr ⟨e1, e2⟩)]
      push_cast
      ring

end PI.UnitaryGroupMassFormula.UnipVal.Main

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentValuation.VwIntEqZero =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnipVal =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnipVal", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnipVal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentValuation.VwIntEqZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem unipVal : PI.UnipVal.UnipVal := fun _ _ _ w =>
  ⟨fun n hn => PI.UnitaryGroupMassFormula.UnipVal.Main.part1 w n hn,
    fun g₁ g₂ a h1 h2 h12 => PI.UnitaryGroupMassFormula.UnipVal.Main.part2 w g₁ g₂ a h1 h2 h12⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnipVal =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.ONLeaves =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.ONLeaves", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.ExampleSatisfiesConditionsAtFive\npublic import Formalism.PeriodIntegrals.MirabIndex\npublic import Mathlib.NumberTheory.Cyclotomic.Basic\npublic import Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.IsMackeyPiUpperUnipotentProdCharacter\nimport Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.Mirabolic\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.IndexUBound\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.MirabIndex\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.UnipVal\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicIndex.RowMulOfMirab\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Module NumberField IsDedekindDomain CategoryTheory

namespace Formalism.L2.Indef.Tree

open Formalism.DivisionValues Formalism.EigenvalueLevelCeiling Formalism.L2.Indef

variable {K : Type} [Field K] [NumberField K] [StarRing K]

theorem vw_level (w : HeightOneSpectrum (𝓞 K)) {g1 g2 : ℕ} (h1 : g1.Prime) (h2 : g2.Prime) (h12 : g1 ≠ g2) (a : ℕ) :
    (vw w (((g1 ^ a * g2 ^ a : ℕ)) : K) : ℝ) =
      (ramw w : ℝ) * (if plc w = g1 ∨ plc w = g2 then (a : ℝ) else 0) :=
  (unipVal K w).2 g1 g2 a h1 h2 h12

section Level

variable {ι : Type} [Fintype ι] [DecidableEq ι] (kf : ι → Type) [∀ v, Field (kf v)] [∀ v, Fintype (kf v)] (n : ℕ)

def IsLevelGroups (Pm : ∀ v, Subgroup (GL (Fin (n + 1)) (kf v))) (Uv : ∀ v, Subgroup (Pm v)) : Prop :=
  (∀ v (h : GL (Fin (n + 1)) (kf v)), h ∈ Pm v ↔ IsMirab (h : Matrix (Fin (n + 1)) (Fin (n + 1)) (kf v))) ∧
  ∀ v (h : Pm v), h ∈ Uv v ↔ IsUniU ((h : GL (Fin (n + 1)) (kf v)) : Matrix (Fin (n + 1)) (Fin (n + 1)) (kf v))

def IsGenericChar (χ : ∀ v, AddChar (kf v) (𝓞 K)) : Prop := ∀ v, χ v ≠ 1

def psiU (χ : ∀ v, AddChar (kf v) (𝓞 K)) (Pm : ∀ v, Subgroup (GL (Fin (n + 1)) (kf v))) : (∀ v, Pm v) → 𝓞 K :=
  fun h => ∏ v, χ v (supd (((h v : Pm v) : GL (Fin (n + 1)) (kf v)) : Matrix (Fin (n + 1)) (Fin (n + 1)) (kf v)))

end Level

section Ties

variable {Bs : DefBase K} {Df : DefSide Bs} {S : IndefData Df} {c : OnConst}
variable {ι : Type} [Fintype ι] [DecidableEq ι] {kf : ι → Type} [∀ v, Field (kf v)] [∀ v, Fintype (kf v)] {n : ℕ}

def TieU {Pm : ∀ v, Subgroup (GL (Fin (n + 1)) (kf v))} (O : OnObj S (∀ v, Pm v) c) (Uv : ∀ v, Subgroup (Pm v)) : Prop :=
  O.U = Subgroup.pi Set.univ Uv

def TiePsi {Pm : ∀ v, Subgroup (GL (Fin (n + 1)) (kf v))} (O : OnObj S (∀ v, Pm v) c) (χ : ∀ v, AddChar (kf v) (𝓞 K)) :
    Prop :=
  O.ψ = psiU kf n χ Pm

def TieLevelNum {P : Type} [Group P] [Finite P] (O : OnObj S P c) (n fN : ℕ) : Prop :=
  O.f = (fN : ℝ) ∧ O.rr = (n : ℝ) + 1

def LeafLevelSq {P : Type} [Group P] [Finite P] (O : OnObj S P c) (kf : ι → Type) [∀ v, Field (kf v)] [∀ v, Fintype (kf v)]
    (fN : ℕ) : Prop :=
  O.g1.Prime ∧ O.g2.Prime ∧ O.g1 ≠ O.g2 ∧ (∀ v, Fintype.card (kf v) = O.g1 ∨ Fintype.card (kf v) = O.g2) ∧
    (Finset.univ.filter fun v => Fintype.card (kf v) = O.g1).card = fN ∧
    (Finset.univ.filter fun v => Fintype.card (kf v) = O.g2).card = fN

def LeafYBound {P : Type} [Group P] [Finite P] (O : OnObj S P c) : Prop :=
  2 * O.f / (((min O.g1 O.g2 : ℕ) : ℝ) - 1) ≤ O.y

end Ties

section Orders

variable {ι : Type} [Fintype ι] [DecidableEq ι] {kf : ι → Type} [∀ v, Field (kf v)] [∀ v, Fintype (kf v)] {n : ℕ}
variable {Pm : ∀ v, Subgroup (GL (Fin (n + 1)) (kf v))} {Uv : ∀ v, Subgroup (Pm v)}

theorem card_Uv_uni (hG : IsLevelGroups kf n Pm Uv) (v : ι) :
    Nat.card (Uv v) =
      Nat.card {u : GL (Fin (n + 1)) (kf v) // PI.MirabIndex.IsUniU (u : Matrix (Fin (n + 1)) (Fin (n + 1)) (kf v))} :=
  Nat.card_congr
    { toFun := fun h => ⟨((h : Pm v) : GL (Fin (n + 1)) (kf v)), (hG.2 v h).1 h.2⟩
      invFun := fun u => ⟨⟨u.1, (hG.1 v u.1).2 (isMirab_of_isUniU _ u.2)⟩, (hG.2 v _).2 u.2⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }

theorem card_Uv (hG : IsLevelGroups kf n Pm Uv) (v : ι) :
    Nat.card (Uv v) = Fintype.card (kf v) ^ ((n + 1) * n / 2) := by
  rw [card_Uv_uni hG v, PI.MirabolicIndex₂.card_uni]

theorem card_Pm (hG : IsLevelGroups kf n Pm Uv) (v : ι) :
    Nat.card (Pm v) = Nat.card (Uv v) * ∏ i ∈ Finset.Ico 1 (n + 1), (Fintype.card (kf v) ^ i - 1) := by
  rw [card_Uv_uni hG v, ← mirabolic_index (kf v) n]
  exact Nat.card_congr (Equiv.subtypeEquivRight (hG.1 v))

theorem index_Uv (hG : IsLevelGroups kf n Pm Uv) (v : ι) :
    (Uv v).index = ∏ i ∈ Finset.Ico 1 (n + 1), (Fintype.card (kf v) ^ i - 1) := by
  have h1 := Subgroup.card_mul_index (Uv v)
  rw [card_Pm hG v] at h1
  exact Nat.eq_of_mul_eq_mul_left Nat.card_pos h1

theorem card_piU : Nat.card (Subgroup.pi Set.univ Uv) = ∏ v, Nat.card (Uv v) := by
  rw [← Nat.card_pi]
  exact Nat.card_congr
    { toFun := fun x v => ⟨x.1 v, (Subgroup.mem_pi _).mp x.2 v (Set.mem_univ v)⟩
      invFun := fun y => ⟨fun v => (y v).1, (Subgroup.mem_pi _).mpr fun v _ => (y v).2⟩
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl }

theorem index_piU (hG : IsLevelGroups kf n Pm Uv) :
    (Subgroup.pi Set.univ Uv).index = ∏ v, ∏ i ∈ Finset.Ico 1 (n + 1), (Fintype.card (kf v) ^ i - 1) := by
  have h1 := Subgroup.card_mul_index (Subgroup.pi Set.univ Uv)
  rw [Nat.card_pi] at h1
  simp only [card_Pm hG] at h1
  rw [Finset.prod_mul_distrib, ← card_piU] at h1
  exact Nat.eq_of_mul_eq_mul_left Nat.card_pos h1

theorem card_piU_eq (hG : IsLevelGroups kf n Pm Uv) :
    Nat.card (Subgroup.pi Set.univ Uv) = ∏ v, Fintype.card (kf v) ^ ((n + 1) * n / 2) := by
  rw [card_piU]
  exact Finset.prod_congr rfl fun v _ => card_Uv hG v

end Orders

section Discharge

variable {Bs : DefBase K} {Df : DefSide Bs} {S : IndefData Df} {c : OnConst}
variable {ι : Type} [Fintype ι] [DecidableEq ι] {kf : ι → Type} [∀ v, Field (kf v)] [∀ v, Fintype (kf v)] {n : ℕ}
variable {Pm : ∀ v, Subgroup (GL (Fin (n + 1)) (kf v))} {Uv : ∀ v, Subgroup (Pm v)}

theorem leafMackey_of (O : OnObj S (∀ v, Pm v) c) (χ : ∀ v, AddChar (kf v) (𝓞 K))
    (hG : IsLevelGroups kf n Pm Uv) (hχ : IsGenericChar kf χ) (hU : TieU O Uv) (hψ : TiePsi O χ) : LeafMackey O := by
  unfold LeafMackey
  rw [hU, hψ]
  exact isMackey_pi_upper_unipotent_prod_character K ι kf n χ hχ Pm Uv hG.1 hG.2

theorem sum_inv_le_y {P : Type} [Group P] [Finite P] (O : OnObj S P c) (fN : ℕ) (hSq : LeafLevelSq O kf fN)
    (hf : O.f = (fN : ℝ)) (hY : LeafYBound O) :
    ∑ v, 1 / ((Fintype.card (kf v) : ℝ) - 1) ≤ O.y := by
  classical
  obtain ⟨hp1, hp2, h12, hor, hc1, hc2⟩ := hSq
  have hY2 : (2 : ℝ) ≤ ((min O.g1 O.g2 : ℕ) : ℝ) := by
    have : 2 ≤ min O.g1 O.g2 := le_min hp1.two_le hp2.two_le
    exact_mod_cast this
  have hle : ∀ v, 1 / ((Fintype.card (kf v) : ℝ) - 1) ≤ 1 / (((min O.g1 O.g2 : ℕ) : ℝ) - 1) := by
    intro v
    have hYv : ((min O.g1 O.g2 : ℕ) : ℝ) ≤ (Fintype.card (kf v) : ℝ) := by
      have : min O.g1 O.g2 ≤ Fintype.card (kf v) := by
        rcases hor v with h | h <;> rw [h]
        · exact min_le_left _ _
        · exact min_le_right _ _
      exact_mod_cast this
    exact one_div_le_one_div_of_le (by linarith) (by linarith)
  have hcard : (Finset.univ : Finset ι).card = 2 * fN := by
    have hsplit := Finset.card_filter_add_card_filter_not (s := (Finset.univ : Finset ι))
      (fun v => Fintype.card (kf v) = O.g1)
    have hfilt : (Finset.univ.filter fun v => ¬ Fintype.card (kf v) = O.g1) =
        (Finset.univ.filter fun v => Fintype.card (kf v) = O.g2) := by
      ext v
      simp only [Finset.mem_filter, Finset.mem_univ, true_and]
      constructor
      · intro h; exact (hor v).resolve_left h
      · intro h h'; exact h12 (h'.symm.trans h)
    rw [hfilt, hc1, hc2] at hsplit
    omega
  calc ∑ v, 1 / ((Fintype.card (kf v) : ℝ) - 1) ≤ ∑ _v : ι, 1 / (((min O.g1 O.g2 : ℕ) : ℝ) - 1) :=
        Finset.sum_le_sum fun v _ => hle v
    _ = 2 * O.f / (((min O.g1 O.g2 : ℕ) : ℝ) - 1) := by
      rw [Finset.sum_const, nsmul_eq_mul, hcard, hf]
      push_cast
      ring
    _ ≤ O.y := hY

theorem leafIndexU_of (O : OnObj S (∀ v, Pm v) c) (fN : ℕ) (hG : IsLevelGroups kf n Pm Uv)
    (hSq : LeafLevelSq O kf fN) (hY : LeafYBound O) (hU : TieU O Uv) (hN : TieLevelNum O n fN) : LeafIndexU O := by
  unfold LeafIndexU
  rw [hU, index_piU hG, card_piU_eq hG]
  have hsum := sum_inv_le_y O fN hSq hN.1 hY
  have hB := product_lowerBound ι Finset.univ (fun v => Fintype.card (kf v)) (n + 1) O.y
    (fun v _ => Fintype.one_lt_card) hsum
  simp only [Nat.add_sub_cancel] at hB
  have hcast : ((∏ v, ∏ i ∈ Finset.Ico 1 (n + 1), (Fintype.card (kf v) ^ i - 1) : ℕ) : ℝ) =
      ∏ v, ∏ i ∈ Finset.Ico 1 (n + 1), ((Fintype.card (kf v) : ℝ) ^ i - 1) := by
    rw [Nat.cast_prod]
    refine Finset.prod_congr rfl fun v _ => ?_
    rw [Nat.cast_prod]
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [Nat.cast_sub (Nat.one_le_pow _ _ Fintype.card_pos)]
    push_cast
    ring
  rw [hcast]
  push_cast
  exact hB

theorem card_piU_level (hG : IsLevelGroups kf n Pm Uv) (g1 g2 fN : ℕ) (h12 : g1 ≠ g2)
    (hor : ∀ v, Fintype.card (kf v) = g1 ∨ Fintype.card (kf v) = g2)
    (hc1 : (Finset.univ.filter fun v => Fintype.card (kf v) = g1).card = fN)
    (hc2 : (Finset.univ.filter fun v => Fintype.card (kf v) = g2).card = fN) :
    Nat.card (Subgroup.pi Set.univ Uv) = g1 ^ ((n + 1) * n / 2 * fN) * g2 ^ ((n + 1) * n / 2 * fN) := by
  classical
  rw [card_piU_eq hG, ← Finset.prod_filter_mul_prod_filter_not Finset.univ (fun v => Fintype.card (kf v) = g1)]
  have hfilt : (Finset.univ.filter fun v => ¬ Fintype.card (kf v) = g1) =
      (Finset.univ.filter fun v => Fintype.card (kf v) = g2) := by
    ext v
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · intro h; exact (hor v).resolve_left h
    · intro h h'; exact h12 (h'.symm.trans h)
  rw [hfilt]
  have e1 : ∏ v ∈ Finset.univ.filter (fun v => Fintype.card (kf v) = g1), Fintype.card (kf v) ^ ((n + 1) * n / 2) =
      ∏ _v ∈ Finset.univ.filter (fun v => Fintype.card (kf v) = g1), g1 ^ ((n + 1) * n / 2) :=
    Finset.prod_congr rfl fun v hv => by rw [(Finset.mem_filter.mp hv).2]
  have e2 : ∏ v ∈ Finset.univ.filter (fun v => Fintype.card (kf v) = g2), Fintype.card (kf v) ^ ((n + 1) * n / 2) =
      ∏ _v ∈ Finset.univ.filter (fun v => Fintype.card (kf v) = g2), g2 ^ ((n + 1) * n / 2) :=
    Finset.prod_congr rfl fun v hv => by rw [(Finset.mem_filter.mp hv).2]
  rw [e1, e2, Finset.prod_const, Finset.prod_const, hc1, hc2, ← pow_mul, ← pow_mul]

theorem leafUnip_of (O : OnObj S (∀ v, Pm v) c) (fN : ℕ) (hG : IsLevelGroups kf n Pm Uv)
    (hSq : LeafLevelSq O kf fN) (hU : TieU O Uv) (hN : TieLevelNum O n fN) : LeafUnip O := by
  obtain ⟨hp1, hp2, h12, hor, hc1, hc2⟩ := hSq
  obtain ⟨hf, hr⟩ := hN
  refine ⟨by rw [hr]; linarith [(n.cast_nonneg : (0 : ℝ) ≤ n)], fun w _ => ?_⟩
  rw [hU, card_piU_level hG O.g1 O.g2 fN h12 hor hc1 hc2, vw_level w hp1 hp2 h12, hf, hr]
  have hev : 2 ∣ (n + 1) * n := by
    have := Nat.even_mul_succ_self n
    rw [mul_comm] at this
    exact even_iff_two_dvd.mp this
  have hT : (((n + 1) * n / 2 : ℕ) : ℝ) = ((n : ℝ) + 1) * n / 2 := by
    rw [Nat.cast_div hev (by norm_num)]
    push_cast
    ring
  congr 1
  split_ifs
  · push_cast
    rw [hT]
    ring
  · rfl

end Discharge

section Builder

variable {Bs : DefBase K} {Df : DefSide Bs} {S : IndefData Df} {c : OnConst}

end Builder

section Groups

def mirabSub (k : Type) [Field k] [Fintype k] (n : ℕ) : Subgroup (GL (Fin (n + 1)) k) where
  carrier := {h | IsMirab (h : Matrix (Fin (n + 1)) (Fin (n + 1)) k)}
  mul_mem' := by
    intro a b ha hb
    show PI.MirabIndex.IsMirab _
    rw [PI.MirabolicIndex₂.isMirab_iff, PI.MirabolicIndex₂.row_mul_of_mirab n a b ha]
    exact (PI.MirabolicIndex₂.isMirab_iff n _).mp hb
  one_mem' := by
    show PI.MirabIndex.IsMirab _
    rw [PI.MirabolicIndex₂.isMirab_iff, Units.val_one]
    exact PI.MirabolicIndex₂.one_last n
  inv_mem' := by
    intro h hh
    have := PI.MirabolicIndex₂.mirab_mul_inv n 1 h (by
      rw [Units.val_one, PI.MirabolicIndex₂.one_last]
      exact ((PI.MirabolicIndex₂.isMirab_iff n _).mp hh).symm)
    rwa [one_mul] at this

theorem isUniU_mul {k : Type} [Field k] {n : ℕ} {a b : Matrix (Fin (n + 1)) (Fin (n + 1)) k}
    (ha : IsUniU a) (hb : IsUniU b) : IsUniU (a * b) := by
  have hta : a.BlockTriangular id := fun i j hij => ha.2 i j hij
  have htb : b.BlockTriangular id := fun i j hij => hb.2 i j hij
  refine ⟨fun i => ?_, fun i j hij => (hta.mul htb) hij⟩
  rw [Matrix.mul_apply, Finset.sum_eq_single i]
  · rw [ha.1 i, hb.1 i, one_mul]
  · intro m _ hm
    rcases lt_or_gt_of_ne hm with h | h
    · rw [ha.2 i m h, zero_mul]
    · rw [hb.2 m i h, mul_zero]
  · intro h
    exact absurd (Finset.mem_univ i) h

theorem isUniU_one {k : Type} [Field k] {n : ℕ} : IsUniU (1 : Matrix (Fin (n + 1)) (Fin (n + 1)) k) :=
  ⟨fun i => Matrix.one_apply_eq i, fun _ _ hij => Matrix.one_apply_ne (ne_of_gt hij)⟩

def uniSub (k : Type) [Field k] [Fintype k] (n : ℕ) : Subgroup (mirabSub k n) where
  carrier := {h | IsUniU (((h : mirabSub k n) : GL (Fin (n + 1)) k) : Matrix (Fin (n + 1)) (Fin (n + 1)) k)}
  mul_mem' := by
    intro a b ha hb
    show IsUniU ((((a * b : mirabSub k n) : GL (Fin (n + 1)) k)) : Matrix (Fin (n + 1)) (Fin (n + 1)) k)
    rw [Subgroup.coe_mul, Units.val_mul]
    exact isUniU_mul ha hb
  one_mem' := by
    show IsUniU ((((1 : mirabSub k n) : GL (Fin (n + 1)) k)) : Matrix (Fin (n + 1)) (Fin (n + 1)) k)
    rw [OneMemClass.coe_one, Units.val_one]
    exact isUniU_one
  inv_mem' := by
    intro x hx
    have hpow : ∀ m : ℕ, IsUniU ((((x ^ m : mirabSub k n) : GL (Fin (n + 1)) k)) : Matrix (Fin (n + 1)) (Fin (n + 1)) k) := by
      intro m
      induction m with
      | zero =>
        rw [pow_zero, OneMemClass.coe_one, Units.val_one]
        exact isUniU_one
      | succ m ih =>
        rw [pow_succ, Subgroup.coe_mul, Units.val_mul]
        exact isUniU_mul ih hx
    have hinv : x⁻¹ = x ^ (orderOf x - 1) := by
      refine (eq_inv_of_mul_eq_one_left ?_).symm
      rw [← pow_succ, Nat.sub_add_cancel (orderOf_pos x), pow_orderOf_eq_one]
    show IsUniU ((((x⁻¹ : mirabSub k n) : GL (Fin (n + 1)) k)) : Matrix (Fin (n + 1)) (Fin (n + 1)) k)
    rw [hinv]
    exact hpow _

theorem mirab_levelGroups {ι : Type} (kf : ι → Type) [∀ v, Field (kf v)] [∀ v, Fintype (kf v)] (n : ℕ) :
    IsLevelGroups kf n (fun v => mirabSub (kf v) n) (fun v => uniSub (kf v) n) :=
  ⟨fun _ _ => Iff.rfl, fun _ _ => Iff.rfl⟩

end Groups

section ToyLevel

abbrev KC : Type := CyclotomicField 143 ℚ

@[instance_reducible] noncomputable def starKC : StarRing KC := starRingOfComm

theorem one_hundred_forty_three_ne_zero : NeZero ((143 : ℕ) : ℚ) := ⟨by norm_num⟩

attribute [local instance] starKC one_hundred_forty_three_ne_zero

theorem cycKC : IsCyclotomicExtension {143} ℚ KC := CyclotomicField.isCyclotomicExtension 143 ℚ

attribute [local instance] cycKC

variable (v0 : InfinitePlace KC) (Tw0 : Finset (HeightOneSpectrum (𝓞 KC)))

end ToyLevel

section NotProjectiveExample

variable (K)
variable (v0 : InfinitePlace K) (Tw0 : Finset (HeightOneSpectrum (𝓞 K)))

end NotProjectiveExample

end Formalism.L2.Indef.Tree
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.ONLeaves =====
