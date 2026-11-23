module

public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ValHalfInf
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsCompactAdeleRingModNumberField
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
import Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsAdeleCoverModFieldShrunkCompact, Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsAdeleCoverModFieldShrunkCompactStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsAdeleCoverModFieldShrunkCompact =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsAdeleCoverModFieldShrunkCompact", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ValHalfInf\npublic import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsCompactAdeleRingModNumberField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.UG GlobalTheory.Doubling GlobalTheory.Eis.Conv

namespace GlobalTheory.Eis.ConvCover

theorem exists_int_near {F : Type} [Field F] {w : InfinitePlace F} (hw : w.IsReal)
    (N : ℕ) (t : w.Completion) (ht : ‖t‖ ≤ N) :
    ∃ n ∈ Finset.Icc (-(N : ℤ)) N, ‖t - (n : w.Completion)‖ ≤ 1 := by
  have hi := InfinitePlace.Completion.isometry_extensionEmbeddingOfIsReal hw
  set e := InfinitePlace.Completion.extensionEmbeddingOfIsReal hw with he
  have hn : ∀ s, ‖e s‖ = ‖s‖ := fun s => hi.norm_map_of_map_zero (map_zero e) s
  rw [← hn, Real.norm_eq_abs, abs_le] at ht
  refine ⟨⌊e t⌋, Finset.mem_Icc.2 ⟨?_, ?_⟩, ?_⟩
  · rw [Int.le_floor]; push_cast; exact ht.1
  · have : (⌊e t⌋ : ℝ) ≤ ((N : ℤ) : ℝ) := by
      push_cast; exact (Int.floor_le _).trans ht.2
    exact_mod_cast this
  · rw [← hn, map_sub, map_intCast, Real.norm_eq_abs, abs_le]
    have h1 := Int.floor_le (e t)
    have h2 := Int.lt_floor_add_one (e t)
    constructor <;> linarith

theorem norm_two_pow_le {F : Type} [Field F] (w : InfinitePlace F) (m : ℕ) :
    ‖(2 : w.Completion) ^ m‖ ≤ 2 ^ m := by
  have hi := InfinitePlace.Completion.isometry_extensionEmbedding w
  rw [← hi.norm_map_of_map_zero (map_zero _), map_pow, map_ofNat, norm_pow]
  simp

theorem exists_cover : ∀ (F : Type) [Field F] [NumberField F] [IsTotallyReal F], ∃ (Ω : Set (AF F)) (C : ℝ), IsCompact Ω ∧ ∀ m : ℕ, ∃ Y : Finset (AF F), (Y.card : ℝ) ≤ C * ((2 : ℝ) ^ Fintype.card (InfinitePlace F)) ^ m ∧ ∀ a : AF F, ∃ x : F, ∃ y ∈ Y, ∃ ω ∈ Ω, a = algebraMap F (AF F) x + y + (halfInf F).1 ^ m * ω := by
  intro F _ _ _
  classical
  obtain ⟨K, hK, hKx⟩ := GlobalTheory.AdeleCocompact.exists_compact_adele F
  have := GlobalTheory.AdeleCocompact.properSpace_completion F
  have hb : ∃ R : ℕ, ∀ k ∈ K, ∀ w : InfinitePlace F, ‖k.1 w‖ ≤ R := by
    have hc : Continuous fun k : AdeleRing (𝓞 F) F => ∑ w : InfinitePlace F, ‖k.1 w‖ :=
      continuous_finsetSum _ fun w _ => ((continuous_apply w).comp continuous_fst).norm
    obtain ⟨B, hB⟩ := (hK.image hc).bddAbove
    refine ⟨⌈B⌉₊, fun k hk w => ?_⟩
    refine le_trans ?_ ((hB ⟨k, hk, rfl⟩).trans (Nat.le_ceil B))
    exact Finset.single_le_sum (f := fun w : InfinitePlace F => ‖k.1 w‖)
      (fun _ _ => norm_nonneg _) (Finset.mem_univ w)
  obtain ⟨R, hR⟩ := hb
  let h : InfiniteAdeleRing F := algebraMap F (InfiniteAdeleRing F) 2⁻¹
  have h2 : h * 2 = 1 := by
    rw [← map_ofNat (algebraMap F (InfiniteAdeleRing F)) 2, ← map_mul,
      inv_mul_cancel₀ two_ne_zero, map_one]
  let ι : (InfinitePlace F → ℤ) → InfiniteAdeleRing F := fun n w => (n w : w.Completion)
  refine ⟨((Set.pi Set.univ fun w : InfinitePlace F => Metric.closedBall (0 : w.Completion) 1 :
      Set (InfiniteAdeleRing F)) ×ˢ (Prod.snd '' K) :
        Set (InfiniteAdeleRing F × FiniteAdeleRing (𝓞 F) F)),
    (2 * R + 1 : ℝ) ^ Fintype.card (InfinitePlace F),
    (isCompact_univ_pi fun v => isCompact_closedBall _ _).prod (hK.image continuous_snd),
    fun m => ?_⟩
  refine ⟨(Fintype.piFinset fun _ : InfinitePlace F =>
      Finset.Icc (-((2 ^ m * R : ℕ) : ℤ)) ((2 ^ m * R : ℕ) : ℤ)).image
      fun n => ((h ^ m * ι n, 0) : InfiniteAdeleRing F × FiniteAdeleRing (𝓞 F) F), ?_, fun a => ?_⟩
  · refine le_trans (Nat.cast_le.2 Finset.card_image_le) ?_
    rw [Fintype.card_piFinset, Finset.prod_const, Finset.card_univ, ← pow_mul, mul_comm _ m,
      pow_mul, ← mul_pow, Nat.cast_pow]
    refine pow_le_pow_left₀ (Nat.cast_nonneg _) ?_ _
    have hc : (Finset.Icc (-((2 ^ m * R : ℕ) : ℤ)) ((2 ^ m * R : ℕ) : ℤ)).card
        = 2 * (2 ^ m * R) + 1 := by
      rw [Int.card_Icc]; omega
    rw [hc]
    push_cast
    have : (1 : ℝ) ≤ 2 ^ m := one_le_pow₀ one_le_two
    nlinarith
  · obtain ⟨x, hx⟩ := hKx a
    set k := a - algebraMap F (AdeleRing (𝓞 F) F) x with hk
    have hn : ∀ w : InfinitePlace F, ∃ n ∈ Finset.Icc (-((2 ^ m * R : ℕ) : ℤ)) ((2 ^ m * R : ℕ) : ℤ),
        ‖(2 : w.Completion) ^ m * k.1 w - (n : w.Completion)‖ ≤ 1 := fun w => by
      refine exists_int_near (IsTotallyReal.isReal w) _ _ ((norm_mul_le _ _).trans ?_)
      push_cast
      exact mul_le_mul (norm_two_pow_le w m) (hR k hx w) (norm_nonneg _) (by positivity)
    choose n hn1 hn2 using hn
    refine ⟨x, _, Finset.mem_image_of_mem _ (Fintype.mem_piFinset.2 hn1),
      ((2 ^ m * k.1 - ι n, k.2) : InfiniteAdeleRing F × FiniteAdeleRing (𝓞 F) F),
      ⟨fun w _ => ?_, ⟨k, hx, rfl⟩⟩, ?_⟩
    · exact mem_closedBall_zero_iff.2 (hn2 w)
    · have ha : a = algebraMap F (AdeleRing (𝓞 F) F) x + k := by rw [hk]; ring
      refine ha.trans (Eq.trans (congrArg (algebraMap F (AF F) x + ·) ?_) (add_assoc (G := AF F) _ _ _).symm)
      refine Prod.ext ?_ ?_
      · change k.1 = h ^ m * ι n + h ^ m * (2 ^ m * k.1 - ι n)
        rw [← mul_add, add_sub_cancel, ← mul_assoc, ← mul_pow, h2, one_pow, one_mul]
      · change k.2 = 0 + 1 ^ m * k.2
        rw [one_pow, one_mul, zero_add]

end GlobalTheory.Eis.ConvCover
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsAdeleCoverModFieldShrunkCompact =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsAdeleCoverModFieldShrunkCompactStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsAdeleCoverModFieldShrunkCompactStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ValHalfInf\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsAdeleCoverModFieldShrunkCompact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.IsIwasawaOfIsCompact\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct NNReal Matrix
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.UG GlobalTheory.Doubling GlobalTheory.Eis.Conv

theorem _root_.GlobalTheory.T.exists_adele_cover_mod_field_shrunk_compact : ∀ (F : Type) [Field F] [NumberField F] [IsTotallyReal F], ∃ (Ω : Set (AF F)) (C : ℝ), IsCompact Ω ∧ ∀ m : ℕ, ∃ Y : Finset (AF F), (Y.card : ℝ) ≤ C * ((2 : ℝ) ^ Fintype.card (InfinitePlace F)) ^ m ∧ ∀ a : AF F, ∃ x : F, ∃ y ∈ Y, ∃ ω ∈ Ω, a = algebraMap F (AF F) x + y + (halfInf F).1 ^ m * ω := by
  first | exact @GlobalTheory.Eis.ConvCover.exists_cover | exact GlobalTheory.Eis.ConvCover.exists_cover | (intros; apply GlobalTheory.Eis.ConvCover.exists_cover <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsAdeleCoverModFieldShrunkCompactStatement =====
