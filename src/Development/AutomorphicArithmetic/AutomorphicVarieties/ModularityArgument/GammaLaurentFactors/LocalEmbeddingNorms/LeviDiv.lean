module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdDefs
public import GroundTheory.LocalFields.PadicExp
public import GroundTheory.AutomorphicForms.GL2.GJFEBlock
public import GroundTheory.AutomorphicForms.GL2.GJLocalFECoeff
public import GroundTheory.AutomorphicForms.GL2.GJLocalFEGamma
public import GroundTheory.AutomorphicForms.GL2.GJFELeviConv
public import GroundTheory.AutomorphicForms.GL2.GJFELeviMulti
public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.HodgeTateFromSandwich
public import Development.AutomorphicArithmetic.AutomorphicVarieties.BuildingsResidueChars.LocalZetaIntegralLaurentExpansion
public import Development.AutomorphicArithmetic.AutomorphicVarieties.BuildingsResidueChars.LocalZetaIntegralShellMean
public import Development.AutomorphicArithmetic.AutomorphicVarieties.BuildingsResidueChars.LocalZetaIntegralTateComparison
public import GroundTheory.AutomorphicForms.GL2.GJFELevi
import Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup
import Formalism.DoubleCosetMeasures.Statement
import GroundTheory.AutomorphicForms.AdmissibleInduction
import GroundTheory.AutomorphicForms.GL2.ExistsEqPowMulOfValuationLe
import GroundTheory.AutomorphicForms.SmoothRepContragredient
import GroundTheory.AutomorphicForms.SmoothRepSchur
import GroundTheory.LocalFields.UnramifiedHensel
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Algebra.Nonarchimedean.TotallyDisconnected
import Mathlib.Topology.Separation.Connected
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.Divisors.LineOppositeParabolicUnitaryLeviSectionEq
import GroundTheory.AutomorphicForms.GL2.GJZetaCore
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.LeviSmoothLocalization.LeviBlockInduction.GxBlock
import Std.Tactic.BVDecide.Normalize.Prop
import GroundTheory.AutomorphicForms.LocallyProfinite
import GroundTheory.AutomorphicForms.WhittakerGroups
import GroundTheory.AutomorphicForms.GL2.GJFELeviPeel
import Mathlib.Algebra.Order.Star.Int
import Mathlib.CategoryTheory.Countable
import Mathlib.Topology.Connected.Separation
import Mathlib.Topology.ExtremallyDisconnected
import Mathlib.Topology.UniformSpace.Uniformizable

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.AutomorphicVarieties.BuildingsResidueChars.LocalZetaFunctionalUniqueness, Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdBlock, Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdMulti, Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LocalEmbeddingNorms.LeviDiv

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.BuildingsResidueChars.LocalZetaFunctionalUniqueness =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.BuildingsResidueChars.LocalZetaFunctionalUniqueness", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdDefs\nimport Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup\nimport Formalism.DoubleCosetMeasures.Statement\nimport GroundTheory.AutomorphicForms.AdmissibleInduction\nimport GroundTheory.AutomorphicForms.GL2.ExistsEqPowMulOfValuationLe\nimport GroundTheory.AutomorphicForms.SmoothRepContragredient\nimport GroundTheory.AutomorphicForms.SmoothRepSchur\npublic import GroundTheory.LocalFields.PadicExp\nimport GroundTheory.LocalFields.UnramifiedHensel\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Nonarchimedean.TotallyDisconnected\nimport Mathlib.Topology.Separation.Connected\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open MeasureTheory Polynomial GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal GroundTheory.Automorphic.Parabolic
open GroundTheory.Automorphic.GodementJacquet
open scoped NNReal Classical ValuativeRel

attribute [-instance] Formalism.DoubleCosetMeasures.instMeasGL

namespace UpperTheory.V.Z.Gam

section
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]

private theorem val_one_entry_le {n : ℕ} (i j : Fin n) :
    ValuativeRel.valuation F ((1 : Matrix (Fin n) (Fin n) F) i j) ≤ 1 := by
  by_cases h : i = j
  · simp [Matrix.one_apply, h]
  · simp [Matrix.one_apply, h]

private theorem coe_one_entry {n : ℕ} (i j : Fin n) :
    (((1 : Matrix (Fin n) (Fin n) 𝒪[F]) i j : 𝒪[F]) : F) = (1 : Matrix (Fin n) (Fin n) F) i j := by
  by_cases h : i = j
  · simp [Matrix.one_apply, h]
  · simp [Matrix.one_apply, h]

private theorem mem_integralGL_of_congr {n r : ℕ} (hr : 1 ≤ r) {g : GL (Fin n) F}
    (hg : ∀ i j, ValuativeRel.valuation F ((g : Matrix (Fin n) (Fin n) F) i j - (1 : Matrix (Fin n) (Fin n) F) i j) ≤
      ValuativeRel.valuation F (uniformizer F : F) ^ r) : g ∈ integralGL F n := by
  have hπ1 : ValuativeRel.valuation F (uniformizer F : F) ^ r ≤ 1 :=
    pow_le_one' (valuation_uniformizer_lt_one F).le r
  have hent : ∀ i j, (g : Matrix (Fin n) (Fin n) F) i j ∈ (ValuativeRel.valuation F).integer := by
    intro i j
    have e : (g : Matrix (Fin n) (Fin n) F) i j =
        ((g : Matrix (Fin n) (Fin n) F) i j - (1 : Matrix (Fin n) (Fin n) F) i j) +
          (1 : Matrix (Fin n) (Fin n) F) i j := by ring
    show ValuativeRel.valuation F _ ≤ 1
    rw [e]
    exact le_trans ((ValuativeRel.valuation F).map_add _ _)
      (max_le (le_trans (hg i j) hπ1) (val_one_entry_le i j))
  let M : Matrix (Fin n) (Fin n) 𝒪[F] := fun i j => ⟨_, hent i j⟩
  have hdiff : ∀ i j, M i j - (1 : Matrix (Fin n) (Fin n) 𝒪[F]) i j ∈ IsLocalRing.maximalIdeal 𝒪[F] := by
    intro i j
    have h1 : M i j - (1 : Matrix (Fin n) (Fin n) 𝒪[F]) i j ∈ IsLocalRing.maximalIdeal 𝒪[F] ^ r := by
      apply (mem_maximalIdeal_pow_iff F).2
      have e : ((M i j - (1 : Matrix (Fin n) (Fin n) 𝒪[F]) i j : 𝒪[F]) : F) =
          (g : Matrix (Fin n) (Fin n) F) i j - (1 : Matrix (Fin n) (Fin n) F) i j := by
        rw [AddSubgroupClass.coe_sub, coe_one_entry]
      rw [e]
      exact hg i j
    exact Ideal.pow_le_self (by omega) h1
  have hmap : (Ideal.Quotient.mk (IsLocalRing.maximalIdeal 𝒪[F])).mapMatrix M = 1 := by
    ext i j
    rw [RingHom.mapMatrix_apply, Matrix.map_apply, Ideal.Quotient.eq.2 (hdiff i j)]
    by_cases h : i = j
    · simp [Matrix.one_apply, h]
    · simp [Matrix.one_apply, h]
  have hdet : IsUnit M.det := by
    by_contra hu
    have hm : M.det ∈ IsLocalRing.maximalIdeal 𝒪[F] := (IsLocalRing.mem_maximalIdeal _).2 hu
    have h0 : Ideal.Quotient.mk (IsLocalRing.maximalIdeal 𝒪[F]) M.det = 0 := Ideal.Quotient.eq_zero_iff_mem.2 hm
    rw [RingHom.map_det, hmap, Matrix.det_one] at h0
    exact one_ne_zero h0
  have hM : IsUnit M := (Matrix.isUnit_iff_isUnit_det M).2 hdet
  refine ⟨hM.unit, ?_⟩
  ext i j
  rfl

private theorem mem_valBall_iff_val_le {r : ℕ} {x : F} :
    x ∈ GroundTheory.LocalField.valBall F (r : ℤ) ↔
      ValuativeRel.valuation F x ≤ ValuativeRel.valuation F (uniformizer F : F) ^ r := by
  have hπ : ValuativeRel.valuation F (uniformizer F : F) ^ r ≤ 1 :=
    pow_le_one' (valuation_uniformizer_lt_one F).le r
  constructor
  · intro hx
    obtain ⟨a, ha, rfl⟩ := mem_valBall_iff_exists.1 hx
    have hint : (uniformizer F : F) ^ r * a ∈ (ValuativeRel.valuation F).integer :=
      Subring.mul_mem _ (Subring.pow_mem _ (uniformizer F).2 r) ha
    have h1 := GroundTheory.LocalField.mem_maximalIdeal_pow_iff_valBall (y := ⟨_, hint⟩) (n := r)
    exact (mem_maximalIdeal_pow_iff F).1 (h1.2 hx)
  · intro hx
    have hint : x ∈ (ValuativeRel.valuation F).integer := le_trans hx hπ
    have h1 := (mem_maximalIdeal_pow_iff F (y := ⟨x, hint⟩) (m := r)).2 hx
    exact GroundTheory.LocalField.mem_maximalIdeal_pow_iff_valBall.1 h1

private def ballInd (r : ℕ) (a : F) : F → ℂ :=
  {x : F | x - a ∈ GroundTheory.LocalField.valBall F (r : ℤ)}.indicator 1

private theorem ballInd_mem (r : ℕ) (a : F) : ballInd r a ∈ GroundTheory.LocalField.schwartzBruhat F := by
  rw [GroundTheory.LocalField.mem_schwartzBruhat]
  constructor
  · apply GroundTheory.LocalField.isLocallyConstant_of_add_valBall (N := (r : ℤ))
    intro x h hh
    have e : x + h - a = (x - a) + h := by ring
    have key : x + h - a ∈ GroundTheory.LocalField.valBall F (r : ℤ) ↔ x - a ∈ GroundTheory.LocalField.valBall F (r : ℤ) := by
      rw [e]
      exact AddSubgroup.add_mem_cancel_right _ hh
    unfold ballInd
    by_cases hx : x - a ∈ GroundTheory.LocalField.valBall F (r : ℤ)
    · rw [Set.indicator_of_mem (show x + h ∈ {y : F | y - a ∈ GroundTheory.LocalField.valBall F (r : ℤ)} from key.2 hx),
        Set.indicator_of_mem (show x ∈ {y : F | y - a ∈ GroundTheory.LocalField.valBall F (r : ℤ)} from hx)]
      rfl
    · rw [Set.indicator_of_notMem (show x + h ∉ {y : F | y - a ∈ GroundTheory.LocalField.valBall F (r : ℤ)} from fun h' => hx (key.1 h')),
        Set.indicator_of_notMem (show x ∉ {y : F | y - a ∈ GroundTheory.LocalField.valBall F (r : ℤ)} from hx)]
  · apply HasCompactSupport.intro ((GroundTheory.LocalField.isCompact_valBall (r : ℤ)).image (show Continuous (fun x : F => x + a) from continuous_id.add continuous_const))
    intro x hx
    unfold ballInd
    apply Set.indicator_of_notMem
    intro hx'
    exact hx ⟨x - a, hx', by ring⟩

end

section
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  {n : ℕ} {β : Fin n → ℕ}

private theorem leviTensor_ball_of_mem {r : ℕ} {m : levi F n β}
    (hm : (m : GL (Fin n) F) ∈ congruenceSubgroup F n r) :
    leviTensor β (fun ij : LeviIndex n β => ballInd r ((1 : Matrix (Fin n) (Fin n) F) ij.1.1 ij.1.2))
      ((m : GL (Fin n) F) : Matrix (Fin n) (Fin n) F) = 1 := by
  rw [mem_congruenceSubgroup_iff] at hm
  unfold leviTensor
  apply Finset.prod_eq_one
  intro ij _
  unfold ballInd
  apply Set.indicator_of_mem
  exact mem_valBall_iff_val_le.2 (hm.2 ij.1.1 ij.1.2)

private theorem leviTensor_ball_of_notMem {r : ℕ} (hr : 1 ≤ r) {m : levi F n β}
    (hm : (m : GL (Fin n) F) ∉ congruenceSubgroup F n r) :
    leviTensor β (fun ij : LeviIndex n β => ballInd r ((1 : Matrix (Fin n) (Fin n) F) ij.1.1 ij.1.2))
      ((m : GL (Fin n) F) : Matrix (Fin n) (Fin n) F) = 0 := by
  by_contra h0
  apply hm
  have hall : ∀ i j, ValuativeRel.valuation F (((m : GL (Fin n) F) : Matrix (Fin n) (Fin n) F) i j -
      (1 : Matrix (Fin n) (Fin n) F) i j) ≤ ValuativeRel.valuation F (uniformizer F : F) ^ r := by
    intro i j
    by_cases hij : β i = β j
    · have h1 := Finset.prod_ne_zero_iff.1 h0 (⟨(i, j), hij⟩ : LeviIndex n β) (Finset.mem_univ _)
      refine mem_valBall_iff_val_le.1 ?_
      by_contra hn
      exact h1 (Set.indicator_of_notMem (s := {x : F | x - (1 : Matrix (Fin n) (Fin n) F) i j ∈ GroundTheory.LocalField.valBall F (r : ℤ)}) hn _)
    · have hne : i ≠ j := fun h => hij (by rw [h])
      rw [mem_levi.1 m.2 i j hij, Matrix.one_apply_ne hne, sub_zero, map_zero]
      exact zero_le'
  exact (mem_congruenceSubgroup_iff F n).2 ⟨mem_integralGL_of_congr hr hall, hall⟩

end

section
variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F] {n : ℕ} {β : Fin n → ℕ} {W : Type} [AddCommGroup W] [Module ℂ W]

end

end UpperTheory.V.Z.Gam

theorem UpperTheory.local_zeta_functional_uniqueness :
    UpperTheory.V.Z.Gam.LdUnique := by
  intro F _ _ _ _ _ _ n β W _ _ σ hadm hirr κ hκ μ _ ψ γ γ' h h'
  haveI := hirr
  obtain ⟨v, hv⟩ := exists_ne_zero_of_isIrreducible (ρ := σ)
  obtain ⟨m0, hm0⟩ := exists_subgroupOf_congruenceSubgroup_subset (β := β)
    ((hadm.1 v).mem_nhds (Subgroup.one_mem (stabilizerOf σ v)))
  have hr : 1 ≤ m0 + 1 := by omega
  have hKc : IsCompact (((congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β) : Subgroup (levi F n β)) :
      Set (levi F n β)) := isCompact_subgroupOf_levi (isCompact_congruenceSubgroup F n (m0 + 1))
  have hKo : IsOpen (((congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β) : Subgroup (levi F n β)) :
      Set (levi F n β)) := isOpen_subgroupOf_levi (isOpen_congruenceSubgroup F n (m0 + 1))
  have hvK : v ∈ fixedVectors σ ((congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β)) := by
    rw [mem_fixedVectors]
    intro k hk
    have hk' : k ∈ (congruenceSubgroup F n m0).subgroupOf (levi F n β) :=
      Subgroup.mem_subgroupOf.2 (congruenceSubgroup_antitone F n (show m0 ≤ m0 + 1 by omega)
        (Subgroup.mem_subgroupOf.1 hk))
    exact mem_stabilizerOf.1 (hm0 hk')
  haveI : FiniteDimensional ℂ (fixedVectors σ ((congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β))) :=
    hadm.2 _ hKc hKo
  have hv' : (⟨v, hvK⟩ : fixedVectors σ ((congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β))) ≠ 0 :=
    fun h0 => hv (congrArg Subtype.val h0)
  obtain ⟨f, hf⟩ : ∃ f : Module.Dual ℂ (fixedVectors σ ((congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β))),
      f ⟨v, hvK⟩ ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hv' ((Module.forall_dual_apply_eq_zero_iff ℂ _).1 hc)
  let E := fixedContragredientEquiv (ρ := σ) hadm.1 hKc hKo
  let x := E.symm f
  have hx : x.1.1 v ≠ 0 := by
    have h1 : E x = f := E.apply_symm_apply f
    rw [fixedContragredientEquiv_apply] at h1
    have h2 := restrictFixed_apply σ _ x ⟨v, hvK⟩
    rw [h1] at h2
    rw [← h2]
    exact hf
  have hφ : ∀ ij : LeviIndex n β, (fun ij : LeviIndex n β =>
      UpperTheory.V.Z.Gam.ballInd (m0 + 1) ((1 : Matrix (Fin n) (Fin n) F) ij.1.1 ij.1.2)) ij ∈
      GroundTheory.LocalField.schwartzBruhat F := fun ij => UpperTheory.V.Z.Gam.ballInd_mem _ _
  have e1 := (h _ hφ v x.1.1 x.1.2).2.2
  have e2 := (h' _ hφ v x.1.1 x.1.2).2.2
  apply RatFE.unique e1 e2
  intro t
  refine ⟨((t + 1 : ℝ) : ℂ), by simp, ?_⟩
  have hfun : (fun m => leviIntegrand σ κ (leviTensor β fun ij : LeviIndex n β =>
        UpperTheory.V.Z.Gam.ballInd (m0 + 1) ((1 : Matrix (Fin n) (Fin n) F) ij.1.1 ij.1.2)) v x.1.1
        ((t + 1 : ℝ) : ℂ) m) =
      (((congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β) : Subgroup (levi F n β)) :
        Set (levi F n β)).indicator (fun _ => x.1.1 v) := by
    funext m
    by_cases hm : m ∈ (congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β)
    · rw [Set.indicator_of_mem (show m ∈ (((congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β) :
        Subgroup (levi F n β)) : Set (levi F n β)) from hm)]
      have hm' : (m : GL (Fin n) F) ∈ congruenceSubgroup F n (m0 + 1) := Subgroup.mem_subgroupOf.1 hm
      unfold leviIntegrand
      rw [UpperTheory.V.Z.Gam.leviTensor_ball_of_mem hm', eq_one_of_mem_compact κ hκ hKc hm,
        detPow_of_mem_integralGL (congruenceSubgroup_le F n (m0 + 1) hm') _,
        (mem_fixedVectors.1 hvK) m hm]
      simp
    · rw [Set.indicator_of_notMem (show m ∉ (((congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β) :
        Subgroup (levi F n β)) : Set (levi F n β)) from hm)]
      unfold leviIntegrand
      rw [UpperTheory.V.Z.Gam.leviTensor_ball_of_notMem hr (fun h => hm (Subgroup.mem_subgroupOf.2 h))]
      simp
  have hKset : (((congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β) : Subgroup (levi F n β)) :
      Set (levi F n β)) = (fun m : levi F n β => ((m : GL (Fin n) F) : Matrix (Fin n) (Fin n) F)) ⁻¹'
        {M : Matrix (Fin n) (Fin n) F | ∀ i j, M i j - (1 : Matrix (Fin n) (Fin n) F) i j ∈
          GroundTheory.LocalField.valBall F ((m0 + 1 : ℕ) : ℤ)} := by
    ext m
    simp only [SetLike.mem_coe, Subgroup.mem_subgroupOf, Set.mem_preimage, Set.mem_setOf_eq,
      mem_congruenceSubgroup_iff]
    constructor
    · intro hm i j
      exact UpperTheory.V.Z.Gam.mem_valBall_iff_val_le.2 (hm.2 i j)
    · intro hm
      have hall := fun i j => UpperTheory.V.Z.Gam.mem_valBall_iff_val_le.1 (hm i j)
      exact ⟨UpperTheory.V.Z.Gam.mem_integralGL_of_congr hr hall, hall⟩
  have hT : MeasurableSet {M : Matrix (Fin n) (Fin n) F | ∀ i j, M i j - (1 : Matrix (Fin n) (Fin n) F) i j ∈
      GroundTheory.LocalField.valBall F ((m0 + 1 : ℕ) : ℤ)} := by
    have hB : MeasurableSet (GroundTheory.LocalField.valBall F ((m0 + 1 : ℕ) : ℤ) : Set F) :=
      (GroundTheory.LocalField.isCompact_valBall _).isClosed.measurableSet
    have e : {M : Matrix (Fin n) (Fin n) F | ∀ i j, M i j - (1 : Matrix (Fin n) (Fin n) F) i j ∈
        GroundTheory.LocalField.valBall F ((m0 + 1 : ℕ) : ℤ)} =
        ⋂ i, ⋂ j, (fun M : Matrix (Fin n) (Fin n) F => M i j - (1 : Matrix (Fin n) (Fin n) F) i j) ⁻¹'
          (GroundTheory.LocalField.valBall F ((m0 + 1 : ℕ) : ℤ) : Set F) := by
      ext M
      simp
    rw [e]
    exact MeasurableSet.iInter fun i => MeasurableSet.iInter fun j =>
      hB.preimage (((measurable_pi_apply j).comp (measurable_pi_apply i)).sub_const _)
  show (∫ m, leviIntegrand σ κ (leviTensor β fun ij : LeviIndex n β =>
        UpperTheory.V.Z.Gam.ballInd (m0 + 1) ((1 : Matrix (Fin n) (Fin n) F) ij.1.1 ij.1.2)) v x.1.1
        ((t + 1 : ℝ) : ℂ) m ∂μ) ≠ 0
  rw [hfun, integral_indicator_const (μ := μ) _ ?hm]
  · have hpos : 0 < μ.real (((congruenceSubgroup F n (m0 + 1)).subgroupOf (levi F n β) : Subgroup (levi F n β)) :
        Set (levi F n β)) :=
      ENNReal.toReal_pos (hKo.measure_ne_zero μ ⟨1, Subgroup.one_mem _⟩) hKc.measure_lt_top.ne
    exact smul_ne_zero hpos.ne' hx
  · rw [hKset]
    exact hT.preimage ((comap_measurable Units.val).comp
      (@measurable_subtype_coe (GL (Fin n) F)
        (MeasurableSpace.comap Units.val GroundTheory.Automorphic.GJMatrix.measurableSpace_matrix) _))
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.BuildingsResidueChars.LocalZetaFunctionalUniqueness =====

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdBlock =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdBlock", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdDefs\nimport Development.AbelianVarietyTheory.Definitions.Divisors.LineOppositeParabolicUnitaryLeviSectionEq\nimport Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup\nimport Formalism.DoubleCosetMeasures.Statement\nimport GroundTheory.AutomorphicForms.GL2.ExistsEqPowMulOfValuationLe\npublic import GroundTheory.AutomorphicForms.GL2.GJFEBlock\npublic import GroundTheory.AutomorphicForms.GL2.GJLocalFECoeff\npublic import GroundTheory.AutomorphicForms.GL2.GJLocalFEGamma\nimport GroundTheory.AutomorphicForms.GL2.GJZetaCore\nimport GroundTheory.AutomorphicForms.SmoothRepContragredient\nimport GroundTheory.AutomorphicForms.SmoothRepSchur\nimport Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.LeviSmoothLocalization.LeviBlockInduction.GxBlock\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Polynomial GroundTheory GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal GroundTheory.Automorphic.Parabolic
open GroundTheory.Automorphic.GodementJacquet
open scoped NNReal Classical ValuativeRel

attribute [-instance] Formalism.DoubleCosetMeasures.instMeasGL

namespace UpperTheory.V.Z.Gam

theorem ldBlock_of (hL : LdLaurent) (hM : LdMean) (hT : LdTate) : LdBlock := by
  intro F _ _ _ _ _ _ m _ _ _ μ _ H _ _ _ _ _ _ _ W _ _ σ hσ hirr α hα0 hα hsupp ψ hψ hψ1 γ hFE
  have hShape := UpperTheory.V.Z.ImaginaryQuadraticEtaCharacter.gxBlock_of hL hM hT
    F m μ H W σ hσ hirr α hα0 hα hsupp ψ hψ hψ1 γ hFE
  obtain ⟨c, j, hc, hγ⟩ := hShape
  by_cases h : m = 1 ∧ ∀ g ∈ integralGL F m, σ (g, 1) = 1
  · refine ⟨1 - C α * X, c, j, by simp, ?_, hc, by simpa only [if_pos h] using hγ⟩
    rw [if_pos h, show (1 - C α * X : ℂ[X]) = C (-α) * X + C 1 by simp; ring]
    exact natDegree_linear (neg_ne_zero.2 hα0)
  · exact ⟨1, c, j, by simp, by simp [h], hc, by simpa only [if_neg h] using hγ⟩

end UpperTheory.V.Z.Gam
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdBlock =====

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdMulti =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdMulti", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdDefs\npublic import GroundTheory.AutomorphicForms.GL2.GJFELeviConv\nimport Development.AbelianVarietyTheory.Definitions.Divisors.LineOppositeParabolicUnitaryLeviSectionEq\nimport Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup\nimport Formalism.DoubleCosetMeasures.Statement\nimport GroundTheory.AutomorphicForms.GL2.ExistsEqPowMulOfValuationLe\npublic import GroundTheory.AutomorphicForms.GL2.GJFEBlock\npublic import GroundTheory.AutomorphicForms.GL2.GJFELeviMulti\nimport GroundTheory.AutomorphicForms.LocallyProfinite\nimport GroundTheory.AutomorphicForms.WhittakerGroups\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Measure GroundTheory GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal GroundTheory.Automorphic.Parabolic
open GroundTheory.Automorphic.GodementJacquet
open scoped NNReal ENNReal Classical ValuativeRel

attribute [-instance] Formalism.DoubleCosetMeasures.instMeasGL

set_option linter.unusedSectionVars false

namespace UpperTheory.V.Z.Gam

theorem ldShape_one (q : ℂ) : LdShape q 1 0 := ⟨1, 1, 0, by simp, by simp, one_ne_zero, by simp⟩

theorem ldShape_mul {q : ℂ} {γ₁ γ₂ : RatFunc ℂ} {k₁ k₂ : ℕ} (h₁ : LdShape q γ₁ k₁) (h₂ : LdShape q γ₂ k₂) :
    LdShape q (γ₁ * γ₂) (k₁ + k₂) := by
  obtain ⟨P₁, c₁, j₁, he₁, hd₁, hc₁, rfl⟩ := h₁
  obtain ⟨P₂, c₂, j₂, he₂, hd₂, hc₂, rfl⟩ := h₂
  have hP₁ : P₁ ≠ 0 := by
    rintro rfl
    simp at he₁
  have hP₂ : P₂ ≠ 0 := by
    rintro rfl
    simp at he₂
  refine ⟨P₁ * P₂, c₁ * c₂, j₁ + j₂, by simp [he₁, he₂], ?_, mul_ne_zero hc₁ hc₂, ?_⟩
  · rw [Polynomial.natDegree_mul hP₁ hP₂, hd₁, hd₂]
  · rw [div_mul_div_comm, Polynomial.mul_comp, map_mul, map_mul, map_mul,
      zpow_add₀ RatFunc.X_ne_zero]
    ring

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F]
  [∀ n : ℕ, MeasurableSpace (GL (Fin n) F)] [∀ n : ℕ, BorelSpace (GL (Fin n) F)]
  {W : Type} [AddCommGroup W] [Module ℂ W]


variable (F W) in
def LdMulti (ψ : AddChar F Circle) (r : ℕ) : Prop :=
  ∀ (ι : Type) [Fintype ι] [DecidableEq ι], Fintype.card ι = r →
  ∀ (d : ι → ℕ) [∀ i, NeZero (d i)] (μ : ∀ i, Measure (GL (Fin (d i)) F))
    [∀ i, (μ i).IsHaarMeasure]
    (H : Type) [Group H] [TopologicalSpace H] [IsTopologicalGroup H]
    [LocallyCompactSpace H] [T2Space H] [TotallyDisconnectedSpace H] [SecondCountableTopology H]
    (ρ : Representation ℂ ((∀ i, GL (Fin (d i)) F) × H) W), IsAdmissible ρ → ρ.IsIrreducible →
    ∀ α : ι → ℂ, (∀ i, α i ≠ 0) →
      (∀ i v, ρ (Pi.mulSingle i (centralUnif F (d i)), 1) v = α i • v) →
      (∀ v : W, ∀ ℓ ∈ smoothVectors (Representation.dual ρ),
        ∃ C : Set (∀ i, GL (Fin (d i)) F), IsCompact C ∧
          ∀ x, ℓ (ρ (x, 1) v) ≠ 0 → ∃ j : ι → ℤ, (fun i => centralUnif F (d i) ^ j i) * x ∈ C) →
    ∃ γ : RatFunc ℂ, LdShape ((GroundTheory.LocalField.residueCard F : ℕ) : ℂ) γ
        (∑ i, if d i = 1 ∧ ∀ g ∈ integralGL F (d i), ρ (Pi.mulSingle i g, 1) = 1 then 1 else 0) ∧
      ∀ Ψ : ∀ i, Matrix (Fin (d i)) (Fin (d i)) F → ℂ,
      (∀ i, IsSchwartzBruhat (Ψ i)) → ∀ w : W, ∀ ℓ ∈ smoothVectors (Representation.dual ρ),
        RatFE F γ (fun s => ∫ x, multiA ρ Ψ w ℓ s x ∂Measure.pi μ)
          (fun s => ∫ x, multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s x
            ∂Measure.pi μ)

theorem ldMulti_zero (ψ : AddChar F Circle) : LdMulti F W ψ 0 := by
  intro ι _ _ hcard d _ μ _ H _ _ _ _ _ _ _ ρ _ _ α _ _ _
  haveI : IsEmpty ι := Fintype.card_eq_zero_iff.1 hcard
  refine ⟨1, ?_, ?_⟩
  · simpa using ldShape_one ((GroundTheory.LocalField.residueCard F : ℕ) : ℂ)
  · intro Ψ _ w ℓ _
    have hx : ∀ x : (∀ i, GL (Fin (d i)) F), x = 1 := fun x => funext fun i => isEmptyElim i
    have hone : ℓ (ρ (1, 1) w) = ℓ w := by
      rw [Prod.mk_one_one, map_one]
      rfl
    have hA : ∀ s, (∫ x, multiA ρ Ψ w ℓ s x ∂Measure.pi μ) = ℓ w := by
      intro s
      have hf : multiA ρ Ψ w ℓ s = fun _ => ℓ w := by
        funext x
        rw [hx x]
        simpa [multiA] using hone
      rw [hf, integral_const, Measure.pi_of_empty (x := 1)]
      simp
    have hB : ∀ s, (∫ x, multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s x
        ∂Measure.pi μ) = ℓ w := by
      intro s
      have hf : multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s = fun _ => ℓ w := by
        funext x
        rw [hx x]
        simpa [multiB] using hone
      rw [hf, integral_const, Measure.pi_of_empty (x := 1)]
      simp
    refine ⟨RatFunc.C (ℓ w), 0, fun s _ => ?_, fun s _ => ?_⟩
    · beta_reduce
      rw [hA]
      simp
    · beta_reduce
      rw [hB]
      simp

theorem ldMulti_succ (hB : LdBlock) {ψ : AddChar F Circle} (hψ : Continuous ψ) (hψ1 : ψ ≠ 1) {r : ℕ}
    (ih : LdMulti F W ψ r) : LdMulti F W ψ (r + 1) := by
  intro ι _ _ hcard d _ μ _ H _ _ _ _ _ _ _ ρ hadm hirr α hα hcent hsupp
  obtain ⟨a⟩ : Nonempty ι := Fintype.card_pos_iff.1 (by omega)
  have hcard' : Fintype.card {i // i ≠ a} = r := by
    have h := Set.card_ne_eq a
    simp only [Set.coe_setOf] at h
    omega
  let σ : Representation ℂ (GL (Fin (d a)) F × (((i : {i // i ≠ a}) → GL (Fin (d i)) F) × H)) W :=
    ρ.comp (peelFst d H a).symm.toMonoidHom
  let ρ' : Representation ℂ (((i : {i // i ≠ a}) → GL (Fin (d i)) F) × (GL (Fin (d a)) F × H)) W :=
    ρ.comp (peelSnd d H a).symm.toMonoidHom
  have hσ : ∀ g y h, σ (g, (y, h)) = ρ (splitSymm d a g y, h) := by
    intro g y h
    show ρ ((peelFst d H a).symm (g, (y, h))) = _
    rw [peelFst_symm_apply]
  have hρ' : ∀ y g h, ρ' (y, (g, h)) = ρ (splitSymm d a g y, h) := by
    intro y g h
    show ρ ((peelSnd d H a).symm (y, (g, h))) = _
    rw [peelSnd_symm_apply]
  have hσadm : IsAdmissible σ := (isAdmissible_comp_iff (peelFst d H a).symm ρ).2 hadm
  have hσirr : σ.IsIrreducible := (isIrreducible_comp_iff (peelFst d H a).symm ρ).2 hirr
  have hσsm : ∀ ℓ : Module.Dual ℂ W, ℓ ∈ smoothVectors σ.dual ↔ ℓ ∈ smoothVectors ρ.dual :=
    fun ℓ => mem_smoothVectors_dual_comp_iff (peelFst d H a).symm ρ
  have hρ'adm : IsAdmissible ρ' := (isAdmissible_comp_iff (peelSnd d H a).symm ρ).2 hadm
  have hρ'irr : ρ'.IsIrreducible := (isIrreducible_comp_iff (peelSnd d H a).symm ρ).2 hirr
  have hρ'sm : ∀ ℓ : Module.Dual ℂ W, ℓ ∈ smoothVectors ρ'.dual ↔ ℓ ∈ smoothVectors ρ.dual :=
    fun ℓ => mem_smoothVectors_dual_comp_iff (peelSnd d H a).symm ρ
  clear_value σ ρ'
  have hσ1 : ∀ g, σ (g, 1) = ρ (Pi.mulSingle a g, 1) := by
    intro g
    rw [show ((g, 1) : GL (Fin (d a)) F × (((i : {i // i ≠ a}) → GL (Fin (d i)) F) × H)) = (g, (1, 1))
      from rfl, hσ, splitSymm_mulSingle_self]
  have hρ'1 : ∀ (j : {i // i ≠ a}) (g : GL (Fin (d j)) F),
      ρ' (Pi.mulSingle j g, 1) = ρ (Pi.mulSingle (j : ι) g, 1) := by
    intro j g
    rw [show ((Pi.mulSingle j g, 1) : ((i : {i // i ≠ a}) → GL (Fin (d i)) F) × (GL (Fin (d a)) F × H))
      = (Pi.mulSingle j g, (1, 1)) from rfl, hρ', splitSymm_one_mulSingle]
  have hσcent : ∀ v, σ (centralUnif F (d a), 1) v = α a • v := by
    intro v
    rw [hσ1]
    exact hcent a v
  have hρ'cent : ∀ (j : {i // i ≠ a}) v, ρ' (Pi.mulSingle j (centralUnif F (d j)), 1) v = α j • v := by
    intro j v
    rw [hρ'1]
    exact hcent j v
  have hσsupp : ∀ v : W, ∀ ℓ ∈ smoothVectors σ.dual, ∃ C : Set (GL (Fin (d a)) F), IsCompact C ∧
      ∀ g, ℓ (σ (g, 1) v) ≠ 0 → ∃ j : ℤ, centralUnif F (d a) ^ j * g ∈ C := by
    intro v ℓ hℓ
    obtain ⟨C, hC, hCx⟩ := hsupp v ℓ ((hσsm ℓ).1 hℓ)
    refine ⟨(fun x => x a) '' C, hC.image (continuous_apply a), fun g hg => ?_⟩
    rw [hσ1] at hg
    obtain ⟨j, hj⟩ := hCx _ hg
    exact ⟨j a, _, hj, by simp⟩
  have hρ'supp : ∀ v : W, ∀ ℓ ∈ smoothVectors ρ'.dual,
      ∃ C : Set ((i : {i // i ≠ a}) → GL (Fin (d i)) F), IsCompact C ∧
        ∀ y, ℓ (ρ' (y, 1) v) ≠ 0 → ∃ j : {i // i ≠ a} → ℤ,
          (fun i : {i // i ≠ a} => centralUnif F (d i) ^ j i) * y ∈ C := by
    intro v ℓ hℓ
    obtain ⟨C, hC, hCx⟩ := hsupp v ℓ ((hρ'sm ℓ).1 hℓ)
    refine ⟨(fun x (k : {i // i ≠ a}) => x (k : ι)) '' C,
      hC.image (continuous_pi fun k => continuous_apply (k : ι)), fun y hy => ?_⟩
    rw [show ((y, 1) : ((i : {i // i ≠ a}) → GL (Fin (d i)) F) × (GL (Fin (d a)) F × H))
      = (y, (1, 1)) from rfl, hρ'] at hy
    obtain ⟨j, hj⟩ := hCx _ hy
    exact ⟨fun k => j k, _, hj, funext fun k => centralPow_mul_splitSymm_apply j y k⟩
  haveI := hσirr
  obtain ⟨γa, s₁, hblk⟩ := exists_blockFE (μ a) hσadm hψ hψ1 hσcent hσsupp
  have hsha := hB F (d a) (μ a) _ W σ hσadm hσirr (α a) (hα a) hσcent hσsupp ψ hψ hψ1 γa
    (fun Φ hΦ v ℓ hℓ => (hblk Φ hΦ v ℓ hℓ).2.2)
  obtain ⟨γ', hsh', hFE'⟩ := ih {i // i ≠ a} hcard' (fun i => d i) (fun i => μ i)
    (GL (Fin (d a)) F × H) ρ' hρ'adm hρ'irr (fun i => α i) (fun i => hα i) hρ'cent hρ'supp
  refine ⟨γa * γ', ?_, ?_⟩
  · have h := ldShape_mul hsha hsh'
    rw [Fintype.sum_eq_add_sum_subtype_ne _ a]
    simp only [hσ1, hρ'1] at h
    exact h
  · intro Ψ hΨ w ℓ hℓ
    obtain ⟨s₂, hint⟩ := exists_integrable_multi ρ hadm.1 hα hcent hsupp μ
    obtain ⟨s₃, hint'⟩ := exists_integrable_multi ρ' hρ'adm.1 (α := fun i => α i) (fun i => hα i)
      hρ'cent hρ'supp (fun i => μ i)
    have hstab : (stabilizerOf σ w : Set (GL (Fin (d a)) F × (((i : {i // i ≠ a}) → GL (Fin (d i)) F) × H)))
        ∈ nhds ((1, 1) : GL (Fin (d a)) F × (((i : {i // i ≠ a}) → GL (Fin (d i)) F) × H)) :=
      (hσadm.1 w).mem_nhds (Subgroup.one_mem _)
    rw [mem_nhds_prod_iff] at hstab
    obtain ⟨u, hu, v, hv, huv⟩ := hstab
    obtain ⟨m0, hm0⟩ := (hΨ a).exists_congruence_invariant
    have hu' : u ∩ (congruenceSubgroup F (d a) m0 : Set (GL (Fin (d a)) F)) ∈ nhds (1 : GL (Fin (d a)) F) :=
      Filter.inter_mem hu ((isOpen_congruenceSubgroup F (d a) m0).mem_nhds (Subgroup.one_mem _))
    obtain ⟨K₁, hK₁c, hK₁u⟩ := exists_openSubgroup_isCompact_subset hu'
    obtain ⟨K₂, hK₂c, hK₂v⟩ := exists_openSubgroup_isCompact_subset hv
    let Ka : Subgroup (GL (Fin (d a)) F) := (K₁ : Subgroup (GL (Fin (d a)) F))
    let K' : Subgroup (((i : {i // i ≠ a}) → GL (Fin (d i)) F) × H) :=
      (K₂ : Subgroup (((i : {i // i ≠ a}) → GL (Fin (d i)) F) × H))
    have hKc : IsCompact ((Ka.prod K' : Subgroup _) : Set (GL (Fin (d a)) F × (((i : {i // i ≠ a}) → GL (Fin (d i)) F) × H))) := by
      rw [Subgroup.coe_prod]
      exact hK₁c.prod hK₂c
    have hKo : IsOpen ((Ka.prod K' : Subgroup _) : Set (GL (Fin (d a)) F × (((i : {i // i ≠ a}) → GL (Fin (d i)) F) × H))) := by
      rw [Subgroup.coe_prod]
      exact K₁.isOpen.prod K₂.isOpen
    haveI : FiniteDimensional ℂ (fixedVectors σ (Ka.prod K')) := hσadm.2 _ hKc hKo
    have hKa : Ka ≤ integralGL F (d a) := fun k hk => congruenceSubgroup_le F (d a) m0 (hK₁u hk).2
    have hΨinv : ∀ k ∈ Ka, ∀ X : Matrix (Fin (d a)) (Fin (d a)) F, Ψ a ((k : Matrix (Fin (d a)) (Fin (d a)) F) * X) = Ψ a X := fun k hk X => (hm0 k (hK₁u hk).2 X).1
    have hΦinv : ∀ k ∈ Ka, ∀ X : Matrix (Fin (d a)) (Fin (d a)) F, GJMatrix.localMatrixFourier ψ (Ψ a) (X * (k : Matrix (Fin (d a)) (Fin (d a)) F)) =
        GJMatrix.localMatrixFourier ψ (Ψ a) X := fun k hk X =>
      localMatrixFourier_mul_right_of_invariant (hKa hk)
        (fun x => (hm0 k⁻¹ (Subgroup.inv_mem _ (hK₁u hk).2) x).1) X
    have hwfix : w ∈ fixedVectors σ (Ka.prod K') := fun h hh =>
      huv ⟨(hK₁u (Subgroup.mem_prod.1 hh).1).1, hK₂v (Subgroup.mem_prod.1 hh).2⟩
    let b := Module.finBasis ℂ (fixedVectors σ (Ka.prod K'))
    let L : Fin (Module.finrank ℂ (fixedVectors σ (Ka.prod K'))) → Module.Dual ℂ W := fun i =>
      (((extendFixed hσadm.1 hKc hKo (b.coord i) : fixedVectors (contragredient σ) (Ka.prod K')) :
        smoothVectors σ.dual) : Module.Dual ℂ W)
    have hL : ∀ i, L i ∈ smoothVectors σ.dual := fun i =>
      ((extendFixed hσadm.1 hKc hKo (b.coord i) : fixedVectors (contragredient σ) (Ka.prod K')) :
        smoothVectors σ.dual).2
    let m : ((i : {i // i ≠ a}) → GL (Fin (d i)) F) → smoothVectors σ.dual := fun y =>
      contragredient σ ((1, (y, 1))⁻¹) ⟨ℓ, (hσsm ℓ).2 hℓ⟩
    have hm : ∀ y v, (m y : Module.Dual ℂ W) v = ℓ (ρ (splitSymm d a 1 y, 1) v) := by
      intro y v
      simp only [m]
      rw [contragredient_apply_apply, inv_inv, hσ]
    have hsplit : ∀ g y, ρ (splitSymm d a g y, 1) = ρ (splitSymm d a 1 y, 1) * σ (g, 1) := by
      intro g y
      rw [← hσ, ← hσ, ← map_mul]
      congr 1
      ext <;> simp
    have hρ'y : ∀ y v, ρ' (y, 1) v = ρ (splitSymm d a 1 y, 1) v := by
      intro y v
      rw [show ((y, 1) : ((i : {i // i ≠ a}) → GL (Fin (d i)) F) × (GL (Fin (d a)) F × H))
        = (y, (1, 1)) from rfl, hρ']
    let e := (Homeomorph.piSplitAt a (fun i => GL (Fin (d i)) F)).toMeasurableEquiv
    have hmp : MeasurePreserving e (Measure.pi μ) ((μ a).prod (Measure.pi fun j : {i // i ≠ a} => μ j)) :=
      measurePreserving_piSplitAt d a μ
    have he : ∀ g y, e.symm (g, y) = splitSymm d a g y := fun g y => rfl
    have hA : ∀ s : ℂ, max s₁ (max s₂ s₃) < s.re →
        (∫ x, multiA ρ Ψ w ℓ s x ∂Measure.pi μ) =
          ∑ i, blockA (μ a) σ (Ψ a) w (L i) s *
            ∫ y, multiA ρ' (fun j => Ψ j) (b i : W) ℓ s y ∂Measure.pi (fun j : {i // i ≠ a} => μ j) := by
      intro s hs
      have hs₁ : s₁ < s.re := lt_of_le_of_lt (le_max_left _ _) hs
      have hs₂ : s₂ < s.re := lt_of_le_of_lt ((le_max_left _ _).trans (le_max_right _ _)) hs
      have hs₃ : s₃ < s.re := lt_of_le_of_lt ((le_max_right _ _).trans (le_max_right _ _)) hs
      have hinner : ∀ y, (∫ g, multiA ρ Ψ w ℓ s (splitSymm d a g y) ∂μ a) =
          ∑ i, blockA (μ a) σ (Ψ a) w (L i) s * multiA ρ' (fun j => Ψ j) (b i : W) ℓ s y := by
        intro y
        have hpt : ∀ g, multiA ρ Ψ w ℓ s (splitSymm d a g y) =
            (∏ j : {i // i ≠ a}, Ψ j ↑(y j) * detPow (y j) s) *
              (Ψ a ↑g * detPow g s * (m y : Module.Dual ℂ W) (σ (g, 1) w)) := by
          intro g
          simp only [multiA]
          rw [prod_splitSymm (fun i (x : GL (Fin (d i)) F) => Ψ i ↑x * detPow x s), hsplit, Module.End.mul_apply, hm]
          ring
        simp_rw [hpt]
        rw [integral_const_mul]
        have hsum := blockA_eq_sum hσadm.1 hKc hKo hKa hΨinv hwfix
          (fun μ' hμ' => (hblk (Ψ a) (hΨ a) w μ' hμ').1 s hs₁) (m y)
        simp only [blockA] at hsum ⊢
        rw [hsum, Finset.mul_sum]
        refine Finset.sum_congr rfl fun i _ => ?_
        simp only [multiA]
        rw [hρ'y, ← hm]
        ring
      have hintA := (hint Ψ hΨ w ℓ hℓ).1 s hs₂
      calc (∫ x, multiA ρ Ψ w ℓ s x ∂Measure.pi μ)
          = ∫ z, multiA ρ Ψ w ℓ s (e.symm z) ∂(μ a).prod (Measure.pi fun j : {i // i ≠ a} => μ j) := by
            rw [← hmp.integral_comp']
            simp
        _ = ∫ y, ∫ g, multiA ρ Ψ w ℓ s (splitSymm d a g y) ∂μ a ∂Measure.pi (fun j : {i // i ≠ a} => μ j) := by
            rw [integral_prod_symm]
            · rfl
            · apply (hmp.integrable_comp_emb e.measurableEmbedding
                (g := fun z => multiA ρ Ψ w ℓ s (e.symm z))).1
              simpa [Function.comp_def] using hintA
        _ = ∫ y, ∑ i, blockA (μ a) σ (Ψ a) w (L i) s * multiA ρ' (fun j => Ψ j) (b i : W) ℓ s y
              ∂Measure.pi (fun j : {i // i ≠ a} => μ j) := by
            simp_rw [hinner]
        _ = _ := by
            rw [integral_finsetSum]
            · simp_rw [integral_const_mul]
            · intro i _
              exact ((hint' (fun j => Ψ j) (fun j => hΨ j) (b i : W) ℓ ((hρ'sm ℓ).2 hℓ)).1 s hs₃).const_mul _
    have hB' : ∀ s : ℂ, s.re < -max s₁ (max s₂ s₃) →
        (∫ x, multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s x ∂Measure.pi μ) =
          ∑ i, blockB (μ a) σ (GJMatrix.localMatrixFourier ψ (Ψ a)) w (L i) s *
            ∫ y, multiB ρ' (fun j => GJMatrix.localMatrixFourier ψ (Ψ j)) (b i : W) ℓ s y
              ∂Measure.pi (fun j : {i // i ≠ a} => μ j) := by
      intro s hs
      have hs₁ : s.re < -s₁ := lt_of_lt_of_le hs (neg_le_neg (le_max_left _ _))
      have hs₂ : s.re < -s₂ := lt_of_lt_of_le hs (neg_le_neg ((le_max_left _ _).trans (le_max_right _ _)))
      have hs₃ : s.re < -s₃ := lt_of_lt_of_le hs (neg_le_neg ((le_max_right _ _).trans (le_max_right _ _)))
      have hinner : ∀ y, (∫ g, multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s
          (splitSymm d a g y) ∂μ a) =
          ∑ i, blockB (μ a) σ (GJMatrix.localMatrixFourier ψ (Ψ a)) w (L i) s *
            multiB ρ' (fun j => GJMatrix.localMatrixFourier ψ (Ψ j)) (b i : W) ℓ s y := by
        intro y
        have hpt : ∀ g, multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s (splitSymm d a g y) =
            (∏ j : {i // i ≠ a}, GJMatrix.localMatrixFourier ψ (Ψ j) ↑(y j) * detPow (y j) (↑(d j) - s)) *
              (GJMatrix.localMatrixFourier ψ (Ψ a) ↑g * detPow g (↑(d a) - s) *
                (m y⁻¹ : Module.Dual ℂ W) (σ (g⁻¹, 1) w)) := by
          intro g
          simp only [multiB]
          rw [prod_splitSymm (fun i (x : GL (Fin (d i)) F) =>
              GJMatrix.localMatrixFourier ψ (Ψ i) ↑x * detPow x (↑(d i) - s)),
            splitSymm_inv, hsplit, Module.End.mul_apply, hm]
          ring
        simp_rw [hpt]
        rw [integral_const_mul]
        have hsum := blockB_eq_sum hσadm.1 hKc hKo hKa hΦinv hwfix
          (fun μ' hμ' => (hblk (Ψ a) (hΨ a) w μ' hμ').2.1 s hs₁) (m y⁻¹)
        simp only [blockB] at hsum ⊢
        rw [hsum, Finset.mul_sum]
        refine Finset.sum_congr rfl fun i _ => ?_
        simp only [multiB]
        rw [hρ'y, ← hm]
        ring
      have hintB := (hint (fun i => GJMatrix.localMatrixFourier ψ (Ψ i))
        (fun i => (hΨ i).localMatrixFourier hψ hψ1) w ℓ hℓ).2 s hs₂
      calc (∫ x, multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s x ∂Measure.pi μ)
          = ∫ z, multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s (e.symm z)
              ∂(μ a).prod (Measure.pi fun j : {i // i ≠ a} => μ j) := by
            rw [← hmp.integral_comp']
            simp
        _ = ∫ y, ∫ g, multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s (splitSymm d a g y)
              ∂μ a ∂Measure.pi (fun j : {i // i ≠ a} => μ j) := by
            rw [integral_prod_symm]
            · rfl
            · apply (hmp.integrable_comp_emb e.measurableEmbedding
                (g := fun z => multiB ρ (fun i => GJMatrix.localMatrixFourier ψ (Ψ i)) w ℓ s (e.symm z))).1
              simpa [Function.comp_def] using hintB
        _ = ∫ y, ∑ i, blockB (μ a) σ (GJMatrix.localMatrixFourier ψ (Ψ a)) w (L i) s *
              multiB ρ' (fun j => GJMatrix.localMatrixFourier ψ (Ψ j)) (b i : W) ℓ s y
              ∂Measure.pi (fun j : {i // i ≠ a} => μ j) := by
            simp_rw [hinner]
        _ = _ := by
            rw [integral_finsetSum]
            · simp_rw [integral_const_mul]
            · intro i _
              exact ((hint' (fun j => GJMatrix.localMatrixFourier ψ (Ψ j))
                (fun j => (hΨ j).localMatrixFourier hψ hψ1) (b i : W) ℓ ((hρ'sm ℓ).2 hℓ)).2 s hs₃).const_mul _
    have hfe : RatFE F (γa * γ')
        (fun z => ∑ i ∈ Finset.univ, blockA (μ a) σ (Ψ a) w (L i) z *
          ∫ y, multiA ρ' (fun j => Ψ j) (b i : W) ℓ z y ∂Measure.pi (fun j : {i // i ≠ a} => μ j))
        (fun z => ∑ i ∈ Finset.univ, blockB (μ a) σ (GJMatrix.localMatrixFourier ψ (Ψ a)) w (L i) z *
          ∫ y, multiB ρ' (fun j => GJMatrix.localMatrixFourier ψ (Ψ j)) (b i : W) ℓ z y
            ∂Measure.pi (fun j : {i // i ≠ a} => μ j)) :=
      RatFE.sum Finset.univ fun i _ => RatFE.mul (hblk (Ψ a) (hΨ a) w (L i) (hL i)).2.2
        (hFE' (fun j => Ψ j) (fun j => hΨ j) (b i : W) ℓ ((hρ'sm ℓ).2 hℓ))
    exact hfe.congr ⟨max s₁ (max s₂ s₃), hA⟩ ⟨-max s₁ (max s₂ s₃), hB'⟩

theorem ldMulti_all (hB : LdBlock) {ψ : AddChar F Circle} (hψ : Continuous ψ) (hψ1 : ψ ≠ 1) :
    ∀ r, LdMulti F W ψ r
  | 0 => ldMulti_zero ψ
  | r + 1 => ldMulti_succ hB hψ hψ1 (ldMulti_all hB hψ hψ1 r)

end UpperTheory.V.Z.Gam
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdMulti =====

-- ===== clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LocalEmbeddingNorms.LeviDiv =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LocalEmbeddingNorms.LeviDiv", "h": "module\n\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.HodgeTateFromSandwich\nimport Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.BuildingsResidueChars.LocalZetaFunctionalUniqueness\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.BuildingsResidueChars.LocalZetaIntegralLaurentExpansion\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.BuildingsResidueChars.LocalZetaIntegralShellMean\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.BuildingsResidueChars.LocalZetaIntegralTateComparison\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdBlock\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LaurentBlockInduction.LdMulti\nimport Formalism.DoubleCosetMeasures.Statement\npublic import GroundTheory.AutomorphicForms.GL2.GJFELevi\nimport GroundTheory.AutomorphicForms.GL2.GJFELeviPeel\nimport GroundTheory.AutomorphicForms.WhittakerGroups\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.ExtremallyDisconnected\nimport Mathlib.Topology.UniformSpace.Uniformizable\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Measure GroundTheory GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal GroundTheory.Automorphic.Parabolic
open GroundTheory.Automorphic.GodementJacquet
open scoped NNReal ENNReal Classical ValuativeRel

attribute [-instance] Formalism.DoubleCosetMeasures.instMeasGL

namespace UpperTheory.V.Z.Gam

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  [MeasurableSpace F] [BorelSpace F] {n : ℕ} {β : Fin n → ℕ}
  {W : Type} [AddCommGroup W] [Module ℂ W] {σ : Representation ℂ (levi F n β) W}

private theorem exists_shape (hB : LdBlock) (hσ : IsAdmissible σ) [σ.IsIrreducible] (hc : IsCuspidal σ)
    (κ : levi F n β →* ℝ≥0) (hκ : Continuous κ) (μM : Measure (levi F n β)) [μM.IsHaarMeasure]
    {ψ : AddChar F Circle} (hψ : Continuous ψ) (hψ1 : ψ ≠ 1) :
    ∃ γ : RatFunc ℂ, LdShape ((GroundTheory.LocalField.residueCard F : ℕ) : ℂ) γ (cntF σ) ∧ LeviFE F σ κ μM ψ γ := by
  classical
  have hsm : IsSmooth σ := hσ.1
  haveI bGL : ∀ m, BorelSpace (GL (Fin m) F) := fun m => borelSpace_GL_units m
  haveI nz : ∀ a : ↑(Set.range β), NeZero (blockSize β a) := fun a => ⟨(blockSize_pos β a).ne'⟩
  obtain ⟨e, he⟩ : ∃ e, e = leviEquivPi F β := ⟨_, rfl⟩
  obtain ⟨τ, hτ⟩ : ∃ τ, τ = twist (nnrealCharC κ) σ := ⟨_, rfl⟩
  obtain ⟨E, hE⟩ : ∃ E, E = (prodPUnitEquiv.{_, 0} ((a : ↑(Set.range β)) → GL (Fin (blockSize β a)) F)).trans e.symm :=
    ⟨_, rfl⟩
  obtain ⟨ρ, hρ⟩ : ∃ ρ : Representation ℂ (((a : ↑(Set.range β)) → GL (Fin (blockSize β a)) F) × PUnit.{1}) W,
      ρ = τ.comp E.toMonoidHom := ⟨_, rfl⟩
  have hEx : ∀ x, E (x, (1 : PUnit.{1})) = e.symm x := fun x => by subst hE; rfl
  have hτm : ∀ m v, τ m v = nnrealCharC κ m • σ m v := fun m v => by subst hτ; rfl
  have hρx : ∀ x v, ρ (x, (1 : PUnit.{1})) v = nnrealCharC κ (e.symm x) • σ (e.symm x) v := fun x v => by
    subst hρ; rw [← hτm, ← hEx]; rfl
  have hτA : IsAdmissible τ := hτ ▸ isAdmissible_twist κ hκ σ hσ
  haveI hτI : Representation.IsIrreducible τ := hτ ▸ isIrreducible_twist κ σ
  have hρA : IsAdmissible ρ := hρ ▸ (isAdmissible_comp_iff E τ).2 hτA
  haveI hρI : Representation.IsIrreducible ρ := hρ ▸ (isIrreducible_comp_iff E τ).2 hτI
  have hℓ : ∀ ℓ, ℓ ∈ smoothVectors (Representation.dual ρ) ↔ ℓ ∈ smoothVectors σ.dual := fun ℓ => by
    subst hρ hτ
    rw [mem_smoothVectors_dual_comp_iff, mem_smoothVectors_dual_twist_iff κ hκ]
  haveI : Nontrivial W := nontrivial_of_isIrreducible σ
  obtain ⟨ω, hω⟩ := exists_blockChar (σ := τ) hτA.1
  have hω0 : ∀ b, ω b ≠ 0 := by
    intro b h0
    obtain ⟨v, hv⟩ := exists_ne (0 : W)
    apply hv
    have h1 : τ (blockUnif F b)⁻¹ (τ (blockUnif F b) v) = v := by
      rw [← Module.End.mul_apply, ← map_mul, inv_mul_cancel, map_one, Module.End.one_apply]
    rw [← h1, hω, h0, zero_smul, map_zero]
  have hcent : ∀ (i : ↑(Set.range β)) (v : W),
      ρ (Pi.mulSingle i (centralUnif F (blockSize β i)), (1 : PUnit.{1})) v = ω i • v := by
    intro i v
    rw [← hω, ← leviEquivPi_symm_mulSingle, ← he, ← hEx]
    subst hρ; rfl
  have hcpt : ∀ (v : W), ∀ ℓ ∈ smoothVectors (Representation.dual ρ), ∃ C, IsCompact C ∧
      ∀ (x : (a : ↑(Set.range β)) → GL (Fin (blockSize β a)) F),
        ℓ (ρ (x, (1 : PUnit.{1})) v) ≠ 0 →
          ∃ j : ↑(Set.range β) → ℤ, (fun i => centralUnif F (blockSize β i) ^ j i) * x ∈ C := by
    intro v ℓ hl
    obtain ⟨C0, hC0, hC0m⟩ := exists_compact_of_coeff hsm hc v ((hℓ ℓ).1 hl) (fun _ => 0)
      (fun a => (blockSize β a : ℤ) - 1)
    refine ⟨e '' C0, hC0.image e.continuous, fun x hx => ?_⟩
    refine ⟨fun a => -(ordDet (x a) / (blockSize β a : ℤ)), ?_⟩
    obtain ⟨y, hy⟩ : ∃ y, y = (fun i => centralUnif F (blockSize β i) ^ (-(ordDet (x i) / (blockSize β i : ℤ)))) * x :=
      ⟨_, rfl⟩
    rw [← hy]
    refine ⟨e.symm y, hC0m _ ?_ ?_, e.apply_symm_apply y⟩
    · have h1 : ρ (y, (1 : PUnit.{1})) v =
          (∏ i, ω i ^ (-(ordDet (x i) / (blockSize β i : ℤ)))) • ρ (x, (1 : PUnit.{1})) v := by
        have hp : (y, (1 : PUnit.{1})) = ((fun i => centralUnif F (blockSize β i) ^ (-(ordDet (x i) / (blockSize β i : ℤ)))),
            (1 : PUnit.{1})) * (x, (1 : PUnit.{1})) := by rw [hy]; rfl
        rw [hp, map_mul, Module.End.mul_apply, apply_centralPow ρ hω0 hcent]
      intro h0
      apply hx
      have h2 : ℓ (ρ (y, (1 : PUnit.{1})) v) = 0 := by rw [hρx, map_smul, h0, smul_zero]
      rw [h1, map_smul, smul_eq_mul] at h2
      exact (mul_eq_zero.1 h2).resolve_left (Finset.prod_ne_zero_iff.2 fun i _ => zpow_ne_zero _ (hω0 i))
    · intro b
      rw [← ordDet_leviEquivPi, ← he, e.apply_symm_apply, hy]
      simp only [Pi.mul_apply, ordDet_centralUnif_zpow_mul]
      have hd : (0:ℤ) < blockSize β b := by exact_mod_cast blockSize_pos β b
      have h3 := Int.emod_nonneg (ordDet (x b)) hd.ne'
      have h4 := Int.emod_lt_of_pos (ordDet (x b)) hd
      have h5 := Int.mul_ediv_add_emod (ordDet (x b)) (blockSize β b)
      constructor <;> linarith
  obtain ⟨μ', hμ'⟩ : ∃ μ' : (a : ↑(Set.range β)) → Measure (GL (Fin (blockSize β a)) F),
      μ' = fun _ => Measure.haar := ⟨_, rfl⟩
  haveI hμ'H : ∀ a, (μ' a).IsHaarMeasure := fun a => by subst hμ'; infer_instance
  obtain ⟨γ, hγs, hγfe⟩ := ldMulti_all (F := F) (W := W) hB hψ hψ1 (Fintype.card ↑(Set.range β))
    ↑(Set.range β) rfl (fun a => blockSize β a) μ' PUnit.{1} ρ hρA hρI ω hω0 hcent hcpt
  obtain ⟨s₁, hs₁⟩ := exists_integrable_multi ρ hρA.1 hω0 hcent hcpt μ'
  refine ⟨γ, ?_, ?_⟩
  · convert hγs using 1
    subst he
    unfold cntF
    rw [Finset.sum_boole, Nat.cast_id]
    congr 1
    apply Finset.filter_congr
    intro i _
    apply and_congr_right
    intro _
    apply forall₂_congr
    intro g hg
    have hk : κ ((leviEquivPi F β).symm (Pi.mulSingle i g)) = 1 := by
      refine eq_one_of_mem_compact κ hκ (K := (integralGL F (blockSize β i)).map
        (((leviEquivPi F β).symm.toMonoidHom).comp (MonoidHom.mulSingle _ i))) ?_ (Subgroup.mem_map_of_mem _ hg)
      rw [Subgroup.coe_map]
      exact (isCompact_integralGL F _).image
        (f := fun x => (leviEquivPi F β).symm (Pi.mulSingle i x))
        ((leviEquivPi F β).symm.continuous.comp (continuous_mulSingle (A := fun a : ↑(Set.range β) => GL (Fin (blockSize β a)) F) i))
    have hx : ρ (Pi.mulSingle i g, (1 : PUnit.{1})) = σ ((leviEquivPi F β).symm (Pi.mulSingle i g)) := by
      refine LinearMap.ext fun v => ?_
      rw [hρx, nnrealCharC_apply, hk]
      simp
    rw [hx]
  · intro φ hφ w ℓ hl
    have hlρ := (hℓ ℓ).2 hl
    obtain ⟨Ψ, hΨ⟩ : ∃ Ψ : (a : ↑(Set.range β)) → Matrix (Fin (blockSize β a)) (Fin (blockSize β a)) F → ℂ,
        Ψ = fun a => blockTensor β φ a := ⟨_, rfl⟩
    have hΨs : ∀ a, IsSchwartzBruhat (Ψ a) := by subst hΨ; exact isSchwartzBruhat_blockTensor hφ
    have hΨh : ∀ a, IsSchwartzBruhat (GJMatrix.localMatrixFourier ψ (Ψ a)) :=
      fun a => (hΨs a).localMatrixFourier hψ hψ1
    have hA : ∀ s x, leviIntegrand σ κ (leviTensor β φ) w ℓ s (e.symm x) = multiA ρ Ψ w ℓ s x := by
      intro s x
      subst he hΨ
      simp only [leviIntegrand, multiA, leviTensor_leviEquivPi_symm, detPow_leviEquivPi_symm, hρx, map_smul,
        smul_eq_mul, nnrealCharC_apply, Finset.prod_mul_distrib]
      ring
    have hB2 : ∀ s x, leviIntegrandB σ κ (leviTensorHat β ψ φ) w ℓ s (e.symm x) =
        multiB ρ (fun a => GJMatrix.localMatrixFourier ψ (Ψ a)) w ℓ s x := by
      intro s x
      subst he hΨ
      have hd : ∀ a, detPow (x a) ((blockSize β a : ℂ) - s) = ((detModulusPow (x a) : ℝ) : ℂ) * detPow (x a) (-s) :=
        fun a => by rw [sub_eq_add_neg, detPow_add, detPow_natCast]
      simp only [leviIntegrandB, multiB, leviTensorHat_leviEquivPi_symm, detPow_leviEquivPi_symm,
        leviModulus_leviEquivPi_symm, hρx, map_inv, map_smul, smul_eq_mul, nnrealCharC_apply, hd,
        Finset.prod_mul_distrib]
      push_cast
      ring
    obtain ⟨em, hem⟩ : ∃ em : levi F n β ≃ᵐ ((a : ↑(Set.range β)) → GL (Fin (blockSize β a)) F),
        em = e.toHomeomorph.toMeasurableEquiv := ⟨_, rfl⟩
    have hemx : ∀ m, em m = e m := fun m => by subst hem; rfl
    haveI : (μM.map em).IsHaarMeasure := by
      subst hem
      exact ContinuousMulEquiv.isHaarMeasure_map μM e
    obtain ⟨c, hc⟩ : ∃ c : ℝ≥0, c = (μM.map em).haarScalarFactor (Measure.pi μ') := ⟨_, rfl⟩
    have hmap : μM.map em = (c : ℝ≥0∞) • Measure.pi μ' := by
      rw [hc]; exact isMulLeftInvariant_eq_smul _ _
    have hcomp : ∀ g : levi F n β → ℂ, (fun x => g (e.symm x)) ∘ em = g := fun g => by
      funext m; simp only [Function.comp, hemx, ContinuousMulEquiv.symm_apply_apply]
    have hint : ∀ g : levi F n β → ℂ,
        Integrable (fun x => g (e.symm x)) (Measure.pi μ') → Integrable g μM := by
      intro g hg
      have := hg.smul_measure (c := (c : ℝ≥0∞)) ENNReal.coe_ne_top
      rw [← hmap, em.measurableEmbedding.integrable_map_iff, hcomp] at this
      exact this
    have hI : ∀ g : levi F n β → ℂ, ∫ m, g m ∂μM = (c : ℂ) * ∫ x, g (e.symm x) ∂(Measure.pi μ') := by
      intro g
      have h1 := integral_map_equiv (μ := μM) em (fun x => g (e.symm x))
      rw [hmap, integral_smul_measure] at h1
      simp only [hemx, ContinuousMulEquiv.symm_apply_apply] at h1
      rw [← h1]
      simp [Complex.real_smul]
    refine ⟨⟨s₁, fun s hs => hint _ ?_⟩, ⟨-s₁, fun s hs => hint _ ?_⟩, ?_⟩
    · simp only [hA]
      exact (hs₁ Ψ hΨs w ℓ hlρ).1 s hs
    · simp only [hB2]
      exact (hs₁ _ hΨh w ℓ hlρ).2 s hs
    · refine ((hγfe Ψ hΨs w ℓ hlρ).const_mul (c : ℂ)).congr ⟨0, fun s _ => ?_⟩ ⟨0, fun s _ => ?_⟩
      · rw [hI]; simp only [hA]
      · rw [hI]; simp only [hB2]

end UpperTheory.V.Z.Gam

theorem UpperTheory.V.Z.Gam.leviDiv :
    UpperTheory.V.Z.Gam.LeviDiv := by
  intro F _ _ _ _ _ _ n β W _ _ σ hσ hirr hc κ hκ μ _ ψ hψ hψ1 γ hγ
  have hB : LdBlock := ldBlock_of UpperTheory.local_zeta_integral_laurent_expansion UpperTheory.local_zeta_integral_shell_mean UpperTheory.local_zeta_integral_tate_comparison
  obtain ⟨γ₀, hshape, hfe⟩ := UpperTheory.V.Z.Gam.exists_shape hB hσ hc κ hκ μ hψ hψ1
  obtain rfl := UpperTheory.local_zeta_functional_uniqueness F n β W σ hσ hirr κ hκ μ ψ γ γ₀ hγ hfe
  exact hshape
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.GammaLaurentFactors.LocalEmbeddingNorms.LeviDiv =====
