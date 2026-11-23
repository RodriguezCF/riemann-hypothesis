module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsOneComb
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisOFinsetSum
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocalSchrodingerModelUniqTransportExists
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ValQOfValQr
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MemHomLatticeCompletionIffSupportedMaps
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.HasDerivAtZeroAndIsTheta
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocalInvariantIntegralsSymmetricHaarSubgroupsStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceDoubleStepLocalIteratedIntegralProofStatement
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.PiTensorProduct
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
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth
import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceLocalGroupClosedEmbeddingIntegralStatement

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombAwayFromPlaceKeepsVacuum, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombAwayFromPlaceKeepsVacuumStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlaceIdemMemIdAt, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OtherPlacesConvolutionFiniteAwayOrthogonal, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OtherPlacesConvolutionFiniteAwayOrthogonalStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IteratedInnerIntegralAtFirstOfSplitPlaces, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IteratedInnerIntegralAtFirstOfSplitPlacesStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombAwayFromPlaceKeepsVacuum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombAwayFromPlaceKeepsVacuum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsOneComb\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisOFinsetSum\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocalSchrodingerModelUniqTransportExists\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ValQOfValQr\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.RootEx GlobalTheory.StepData GlobalTheory.SeeSaw GlobalTheory.LocMod GlobalTheory.QPl ValuativeRel
open GlobalTheory.PosOne (toOne Covers TriPos)
open GlobalTheory.IndefiniteRowSideFullHecke.FourierJacobiAverage (app HasTensorVal fl opEFJ IsQuotIntFJ RFJ)
open GlobalTheory.IndefiniteRowSideFullHecke.FramePositiveSum (IsCO)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.QVal GlobalTheory.FinPl

noncomputable section

namespace GlobalTheory.VacAway

variable {D : D7}

def combL (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (c : WO S T →₀ ℂ) : (WO S T → ℂ) →ₗ[ℂ] (WO S T → ℂ) where
  toFun := comb ψ S T c
  map_add' f g := by
    funext w
    simp only [comb, heisO, Finset.sum_apply, Pi.smul_apply, Pi.add_apply, smul_eq_mul, mul_add, Finset.sum_add_distrib]
  map_smul' a f := by
    funext w
    simp only [comb, heisO, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, RingHom.id_apply, Finset.mul_sum]
    exact Finset.sum_congr rfl fun u _ => by ring

theorem comb_single_one (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (y : WO S T) (f : WO S T → ℂ) :
    comb ψ S T (Finsupp.single y 1) f = heisO ψ S T y f := by
  unfold comb
  rw [Finsupp.support_single_ne_zero _ one_ne_zero, Finset.sum_singleton, Finsupp.single_eq_same, one_smul]

theorem vac_comb : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (σ : ℕ) (S : Dbl2 ψ σ) (Q₀ : QStep S) (c₁ : WO S.B.V S.J.W →₀ ℂ) (c₂ : WO S.J.W S.B'.V →₀ ℂ), IsFinComb c₁ → IsFinComb c₂ → Q₀.Away c₁ → Q₀.Away c₂ → ∀ f₁ f₂, IsThetaFunO ψ _ _ f₁ → IsThetaFunO ψ _ _ f₂ → Q₀.Vac f₁ f₂ → Q₀.Vac (comb ψ _ _ c₁ f₁) (comb ψ _ _ c₂ f₂) := by
  intro D ψ hψ σ S Q₀ c₁ c₂ hc₁ hc₂ ha₁ ha₂ f₁ f₂ _ _ hv
  obtain ⟨hee, hec, -⟩ := Q₀.q.split
  have hce : cA D Q₀.q.e * Q₀.q.e = 0 := by rw [mul_comm, hec]
  have hcc : cA D Q₀.q.e * cA D Q₀.q.e = cA D Q₀.q.e := by rw [← map_mul, hee]
  have hreal : cA D (Q₀.q.e + cA D Q₀.q.e) = Q₀.q.e + cA D Q₀.q.e := by
    rw [map_add (f := _), Formalism.L2.Theta.cA_cA, add_comm]
  have hidem : (Q₀.q.e + cA D Q₀.q.e) * (Q₀.q.e + cA D Q₀.q.e) = Q₀.q.e + cA D Q₀.q.e := by
    rw [add_mul, mul_add, mul_add, hee, hec, hce, hcc, add_zero, zero_add]
  have horth : (Q₀.q.e + cA D Q₀.q.e) * (1 - (Q₀.q.e + cA D Q₀.q.e)) = 0 := by
    rw [mul_sub, mul_one, hidem, sub_self]
  have comm : ∀ {A B : HSp D} (c : WO A B →₀ ℂ), Q₀.Away c → ∀ (f : WO A B → ℂ) (y : WO A B),
      IsHalf (Q₀.q.e + cA D Q₀.q.e) y → comb ψ A B c (heisO ψ A B y f) = heisO ψ A B y (comb ψ A B c f) := by
    intro A B c ha f y hy
    have h := (GlobalTheory.HeisComb.main D ψ A B).2.1 (Finsupp.single y 1) c (fun x hx u hu => by
      have hxy : x = y := Finset.mem_singleton.1 (Finsupp.support_single_subset hx)
      subst hxy
      exact GlobalTheory.HeisComb.symplO_half A B _ _ x u hreal horth hy (ha u hu)) f
    rw [comb_single_one, comb_single_one] at h
    exact h.symm
  obtain ⟨⟨T₁, O₁, hT₁, hO₁, rfl⟩, ⟨T₂, O₂, hT₂, hO₂, rfl⟩⟩ := hv
  refine ⟨⟨combL ψ _ _ c₁ ∘ₗ T₁, O₁, ?_, hO₁, rfl⟩, ⟨combL ψ _ _ c₂ ∘ₗ T₂, O₂, ?_, hO₂, rfl⟩⟩
  · exact (GlobalTheory.LocModU.localModel_uniq_transport_exist D Q₀.k (ofSplit Q₀.q) _ _ _ _ Q₀.F.G₀ Q₀.F.G₁ ψ hψ).2.1 T₁ hT₁
      (combL ψ _ _ c₁) (fun f hf => (GlobalTheory.HeisComb.main D ψ _ _).2.2.1 c₁ f hf hc₁ hψ)
      (fun f _ y hy => comm c₁ ha₁ f y hy)
  · exact (GlobalTheory.LocModU.localModel_uniq_transport_exist D Q₀.k (ofSplit Q₀.q) _ _ _ _ Q₀.F.G₁ Q₀.F.G₂ ψ hψ).2.1 T₂ hT₂
      (combL ψ _ _ c₂) (fun f hf => (GlobalTheory.HeisComb.main D ψ _ _).2.2.1 c₂ f hf hc₂ hψ)
      (fun f _ y hy => comm c₂ ha₂ f y hy)

end GlobalTheory.VacAway

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombAwayFromPlaceKeepsVacuum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombAwayFromPlaceKeepsVacuumStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombAwayFromPlaceKeepsVacuumStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsOneComb\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombAwayFromPlaceKeepsVacuum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ValQOfValQr\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.RootEx GlobalTheory.StepData GlobalTheory.SeeSaw GlobalTheory.LocMod GlobalTheory.QPl ValuativeRel
open GlobalTheory.PosOne (toOne Covers TriPos)
open GlobalTheory.IndefiniteRowSideFullHecke.FourierJacobiAverage (app HasTensorVal fl opEFJ IsQuotIntFJ RFJ)
open GlobalTheory.IndefiniteRowSideFullHecke.FramePositiveSum (IsCO)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.QVal GlobalTheory.FinPl

theorem _root_.GlobalTheory.T.heisenbergComb_awayFromPlace_keeps_vacuum : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (σ : ℕ) (S : Dbl2 ψ σ) (Q₀ : QStep S) (c₁ : WO S.B.V S.J.W →₀ ℂ) (c₂ : WO S.J.W S.B'.V →₀ ℂ), IsFinComb c₁ → IsFinComb c₂ → Q₀.Away c₁ → Q₀.Away c₂ → ∀ f₁ f₂, IsThetaFunO ψ _ _ f₁ → IsThetaFunO ψ _ _ f₂ → Q₀.Vac f₁ f₂ → Q₀.Vac (comb ψ _ _ c₁ f₁) (comb ψ _ _ c₂ f₂) := by
  first | exact @GlobalTheory.VacAway.vac_comb | exact GlobalTheory.VacAway.vac_comb | (intros; apply GlobalTheory.VacAway.vac_comb <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombAwayFromPlaceKeepsVacuumStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlaceIdemMemIdAt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlaceIdemMemIdAt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsSumFrame\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MemHomLatticeCompletionIffSupportedMaps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory Matrix ValuativeRel
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.SeeSaw GlobalTheory.FinPl
open IsDedekindDomain NumberField
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.PlaceIdemFacts

variable {D : D7}

theorem cA_cA (z : AE D) : cA D (cA D z) = z := by
  induction z using TensorProduct.induction_on with
  | zero => rw [RingHom.map_zero, RingHom.map_zero]
  | add x y hx hy => rw [RingHom.map_add (f := _), RingHom.map_add (f := _), hx, hy]
  | tmul a x =>
    change a ⊗ₜ[D.host.F] star (star x) = _
    rw [star_star]

theorem algebraMap_pairA (α : Af D.host.F) :
    algebraMap (AF D.host.F) (AE D) (pairA D.host.F 0 α) = pairA D.host.F 0 α ⊗ₜ[D.host.F] (1 : D.host.E) := rfl

theorem placeIdem_mem_idAt {v : Pl D} {ε : AF D.host.F} (hε : IsPlaceIdem D v ε) {P : Pl D → Prop} (hP : P v) :
    algebraMap (AF D.host.F) (AE D) ε ∈ idAt D P := by
  obtain ⟨α, rfl, -, h0⟩ := hε
  rw [algebraMap_pairA]
  exact GlobalTheory.FinPl.LatMem.tmul_mem_idAt (fun w hw => h0 w fun h => hw (h ▸ hP)) 1

theorem infPart_placeIdem {v : Pl D} {ε : AF D.host.F} (hε : IsPlaceIdem D v ε) :
    infPart D (algebraMap (AF D.host.F) (AE D) ε) = 0 := by
  obtain ⟨α, rfl, -, -⟩ := hε
  exact TensorProduct.zero_tmul _ _

theorem placeIdem_mul {v v' : Pl D} {ε ε' : AF D.host.F} (hε : IsPlaceIdem D v ε) (hε' : IsPlaceIdem D v' ε')
    (h : v ≠ v') : ε * ε' = 0 := by
  obtain ⟨α, rfl, -, h0⟩ := hε
  obtain ⟨α', rfl, -, h0'⟩ := hε'
  have hαα : α * α' = 0 := by
    apply RestrictedProduct.ext
    intro w
    change evalV D.host.F w (α * α') = evalV D.host.F w 0
    rw [map_mul, map_zero]
    by_cases hw : w = v
    · subst hw
      rw [h0' w h, mul_zero]
    · rw [h0 w hw, zero_mul]
  show ((0 : Ainf D.host.F), α) * ((0 : Ainf D.host.F), α') = 0
  rw [Prod.mk_mul_mk, mul_zero, hαα]
  rfl

theorem idem_facts : ∀ (D : D7) (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
    (q : SplitPt D k), cA D (q.e + cA D q.e) = q.e + cA D q.e ∧
      (∀ (P : Pl D → Prop), P q.v → ∀ (m n : ℕ) (w : Mx D m n), IsHalf (q.e + cA D q.e) w →
        MxAt P w ∧ w.map (infPart D) = 0) ∧
      ∀ (k' : Type) [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k'] (q' : SplitPt D k'),
        q.v ≠ q'.v → (q.e + cA D q.e) * (q'.e + cA D q'.e) = 0 := by
  intro D k _ _ _ _ q
  obtain ⟨ε, hε, heq⟩ := q.above
  refine ⟨by rw [map_add (f := _), cA_cA, add_comm], fun P hP m n w hw => ⟨fun i j => ?_, ?_⟩,
    fun k' _ _ _ _ q' hv => ?_⟩
  · rw [← hw i j, heq]
    exact Ideal.mul_mem_right _ _ (placeIdem_mem_idAt hε hP)
  · ext i j
    rw [Matrix.map_apply, Matrix.zero_apply, ← hw i j, map_mul, heq, infPart_placeIdem hε, zero_mul]
  · obtain ⟨ε', hε', heq'⟩ := q'.above
    rw [heq, heq', ← map_mul, placeIdem_mul hε hε' hv, map_zero]

end GlobalTheory.PlaceIdemFacts

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlaceIdemMemIdAt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OtherPlacesConvolutionFiniteAwayOrthogonal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OtherPlacesConvolutionFiniteAwayOrthogonal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsOneComb\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisOFinsetSum\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PlaceIdemMemIdAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ValQOfValQr\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.RootEx GlobalTheory.StepData GlobalTheory.SeeSaw GlobalTheory.LocMod GlobalTheory.QPl ValuativeRel
open GlobalTheory.PosOne (toOne Covers TriPos)
open GlobalTheory.IndefiniteRowSideFullHecke.FourierJacobiAverage (app HasTensorVal fl opEFJ IsQuotIntFJ RFJ)
open GlobalTheory.IndefiniteRowSideFullHecke.FramePositiveSum (IsCO)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.QVal GlobalTheory.FinPl

namespace GlobalTheory.QVal.InnerSupp

variable {D : D7}

theorem placeIdem_self {v : Pl D} {ε : AF D.host.F} (hε : IsPlaceIdem D v ε) : ε * ε = ε := by
  obtain ⟨α, rfl, h1, h0⟩ := hε
  have hαα : α * α = α := by
    apply RestrictedProduct.ext
    intro w
    change evalV D.host.F w (α * α) = evalV D.host.F w α
    rw [map_mul]
    by_cases hw : w = v
    · subst hw; rw [h1, mul_one]
    · rw [h0 w hw, zero_mul]
  show ((0 : Ainf D.host.F), α) * ((0 : Ainf D.host.F), α) = ((0 : Ainf D.host.F), α)
  rw [Prod.mk_mul_mk, mul_zero, hαα]

theorem idem_sq {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (q : SplitPt D k) :
    (q.e + cA D q.e) * (q.e + cA D q.e) = q.e + cA D q.e := by
  obtain ⟨ε, hε, heq⟩ := q.above
  rw [heq, ← map_mul, placeIdem_self hε]

theorem support_aconv {G : Type} [AddMonoid G] (P : G → Prop) (h0 : P 0) (hadd : ∀ a b, P a → P b → P (a + b)) :
    ∀ l : List (G →₀ ℂ), (∀ c ∈ l, ∀ u ∈ c.support, P u) → ∀ u ∈ (aconv l).support, P u := by
  classical
  intro l
  induction l with
  | nil =>
    intro _ u hu
    have h := Finsupp.support_single_subset (show u ∈ (Finsupp.single (0 : G) (1 : ℂ)).support from hu)
    rw [Finset.mem_singleton] at h
    subst h
    exact h0
  | cons e l ih =>
    intro hl u hu
    have hu' : u ∈ (e.sum fun g a => (aconv l).sum fun h b => Finsupp.single (g + h) (a * b)).support := hu
    have h1 := Finsupp.support_sum hu'
    rw [Finset.mem_biUnion] at h1
    obtain ⟨g, hg, h2⟩ := h1
    have h3 := Finsupp.support_sum h2
    rw [Finset.mem_biUnion] at h3
    obtain ⟨h, hh, h4⟩ := h3
    have h5 := Finsupp.support_single_subset h4
    rw [Finset.mem_singleton] at h5
    subst h5
    exact hadd g h (hl e (List.mem_cons.2 (Or.inl rfl)) g hg)
      (ih (fun c hc => hl c (List.mem_cons.2 (Or.inr hc))) h hh)

theorem side {A T : HSp D} (E₀ : AE D) (hc : cA D E₀ = E₀) (hsq : E₀ * E₀ = E₀) (c₀ : WO A T →₀ ℂ)
    (l : List (WO A T →₀ ℂ)) (h₀ : ∀ x ∈ c₀.support, IsHalf E₀ x)
    (hl : ∀ c ∈ l, ∀ u ∈ c.support, (∀ a b, E₀ * u a b = 0) ∧ u.map (infPart D) = 0) :
    IsFinComb (aconv l) ∧ (∀ u ∈ (aconv l).support, IsHalf (1 - E₀) u) ∧
      ∀ x ∈ c₀.support, ∀ y ∈ (aconv l).support, symplO A T x y = 0 := by
  have key := support_aconv (fun u : WO A T => (∀ a b, E₀ * u a b = 0) ∧ u.map (infPart D) = 0)
    ⟨fun a b => by rw [Matrix.zero_apply, mul_zero], by ext a b; simp⟩
    (fun u u' hu hu' => ⟨fun a b => by rw [Matrix.add_apply, mul_add, hu.1 a b, hu'.1 a b, add_zero], by
      ext a b
      have e1 := congrFun (congrFun hu.2 a) b
      have e2 := congrFun (congrFun hu'.2 a) b
      simp only [Matrix.map_apply, Matrix.zero_apply, Matrix.add_apply] at e1 e2 ⊢
      rw [map_add, e1, e2, add_zero]⟩) l hl
  have half : ∀ u ∈ (aconv l).support, IsHalf (1 - E₀) u := fun u hu a b => by
    rw [sub_mul, one_mul, (key u hu).1 a b, sub_zero]
  refine ⟨fun u hu => (key u hu).2, half, fun x hx y hy => ?_⟩
  exact GlobalTheory.HeisComb.symplO_half A T E₀ (1 - E₀) x y hc (by rw [mul_sub, mul_one, hsq, sub_self]) (h₀ x hx) (half y hy)

end GlobalTheory.QVal.InnerSupp


open GlobalTheory.QVal.InnerSupp in
theorem GlobalTheory.QVal.inner_supp : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (σ : ℕ) (S : Dbl2 ψ σ) (r : ℕ) (Q : Fin (r + 1) → QStep S), Function.Injective (fun i => (Q i).q.v) → (IsFinComb (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₁)) ∧ (Q 0).Away (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₁)) ∧ ∀ x ∈ (Q 0).D₁.support, ∀ y ∈ (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₁)).support, symplO _ _ x y = 0) ∧ (IsFinComb (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₂)) ∧ (Q 0).Away (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₂)) ∧ ∀ x ∈ (Q 0).D₂.support, ∀ y ∈ (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₂)).support, symplO _ _ x y = 0) := by
  intro D ψ σ S r Q hinj
  have hv : ∀ i : Fin r, (Q 0).q.v ≠ (Q i.succ).q.v := fun i h => Fin.succ_ne_zero i (hinj h).symm
  obtain ⟨hc, -, horth⟩ := GlobalTheory.PlaceIdemFacts.idem_facts D (Q 0).k (Q 0).q
  have hsq := idem_sq (Q 0).q
  have kill : ∀ (i : Fin r) {m n : ℕ} (u : Mx D m n), IsHalf ((Q i.succ).q.e + cA D (Q i.succ).q.e) u →
      (∀ a b, ((Q 0).q.e + cA D (Q 0).q.e) * u a b = 0) ∧ u.map (infPart D) = 0 := by
    intro i m n u hu
    obtain ⟨-, hinf, -⟩ := GlobalTheory.PlaceIdemFacts.idem_facts D (Q i.succ).k (Q i.succ).q
    refine ⟨fun a b => ?_, (hinf (fun _ => True) trivial m n u hu).2⟩
    rw [← hu a b, ← mul_assoc, horth (Q i.succ).k (Q i.succ).q (hv i), zero_mul]
  refine ⟨side _ hc hsq (Q 0).D₁ _ (fun x hx => (Q 0).dat₁.1 x hx) ?_, side _ hc hsq (Q 0).D₂ _ (fun x hx => (Q 0).dat₂.1 x hx) ?_⟩
  · intro c hc' u hu
    simp only [List.mem_ofFn] at hc'
    obtain ⟨i, rfl⟩ := hc'
    exact kill i u ((Q i.succ).dat₁.1 u hu)
  · intro c hc' u hu
    simp only [List.mem_ofFn] at hc'
    obtain ⟨i, rfl⟩ := hc'
    exact kill i u ((Q i.succ).dat₂.1 u hu)

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OtherPlacesConvolutionFiniteAwayOrthogonal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OtherPlacesConvolutionFiniteAwayOrthogonalStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OtherPlacesConvolutionFiniteAwayOrthogonalStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsOneComb\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OtherPlacesConvolutionFiniteAwayOrthogonal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ValQOfValQr\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.RootEx GlobalTheory.StepData GlobalTheory.SeeSaw GlobalTheory.LocMod GlobalTheory.QPl ValuativeRel
open GlobalTheory.PosOne (toOne Covers TriPos)
open GlobalTheory.IndefiniteRowSideFullHecke.FourierJacobiAverage (app HasTensorVal fl opEFJ IsQuotIntFJ RFJ)
open GlobalTheory.IndefiniteRowSideFullHecke.FramePositiveSum (IsCO)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.QVal GlobalTheory.FinPl

theorem _root_.GlobalTheory.T.otherPlacesConvolution_finite_away_orthogonal : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (σ : ℕ) (S : Dbl2 ψ σ) (r : ℕ) (Q : Fin (r + 1) → QStep S), Function.Injective (fun i => (Q i).q.v) → (IsFinComb (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₁)) ∧ (Q 0).Away (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₁)) ∧ ∀ x ∈ (Q 0).D₁.support, ∀ y ∈ (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₁)).support, symplO _ _ x y = 0) ∧ (IsFinComb (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₂)) ∧ (Q 0).Away (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₂)) ∧ ∀ x ∈ (Q 0).D₂.support, ∀ y ∈ (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₂)).support, symplO _ _ x y = 0) := by
  first | exact @GlobalTheory.QVal.inner_supp | exact GlobalTheory.QVal.inner_supp | (intros; apply GlobalTheory.QVal.inner_supp <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OtherPlacesConvolutionFiniteAwayOrthogonalStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IteratedInnerIntegralAtFirstOfSplitPlaces =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IteratedInnerIntegralAtFirstOfSplitPlaces", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ValQOfValQr\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.HasDerivAtZeroAndIsTheta\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisOFinsetSum\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HeisenbergCombAwayFromPlaceKeepsVacuumStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LocalInvariantIntegralsSymmetricHaarSubgroupsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.OtherPlacesConvolutionFiniteAwayOrthogonalStatement\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceDoubleStepLocalIteratedIntegralProofStatement\nimport Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitPlaceLocalGroupClosedEmbeddingIntegralStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.RootEx GlobalTheory.StepData GlobalTheory.SeeSaw GlobalTheory.LocMod GlobalTheory.QPl ValuativeRel
open GlobalTheory.PosOne (toOne Covers TriPos)
open GlobalTheory.IndefiniteRowSideFullHecke.FourierJacobiAverage (app HasTensorVal fl opEFJ IsQuotIntFJ RFJ)
open GlobalTheory.IndefiniteRowSideFullHecke.FramePositiveSum (IsCO)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.QVal GlobalTheory.FinPl

noncomputable section

namespace GlobalTheory.QValInner

variable {D : D7}

theorem pcomb_eq_sum {G : Type} (e : G →₀ ℂ) (F : G → ℂ) : GlobalTheory.PosOne.comb e F = ∑ a ∈ e.support, e a * F a := rfl

theorem pcomb_congr {G : Type} (e : G →₀ ℂ) {F F' : G → ℂ} (h : ∀ a ∈ e.support, F a = F' a) :
    GlobalTheory.PosOne.comb e F = GlobalTheory.PosOne.comb e F' :=
  Finset.sum_congr rfl fun a ha => by show e a * F a = e a * F' a; rw [h a ha]

theorem pcomb_mapDomain {G H : Type} (e : G →₀ ℂ) (φ : G → H) (F : H → ℂ) :
    GlobalTheory.PosOne.comb (e.mapDomain φ) F = GlobalTheory.PosOne.comb e (fun a => F (φ a)) := by
  classical
  unfold GlobalTheory.PosOne.comb
  exact Finsupp.sum_mapDomain_index (fun _ => zero_mul _) (fun _ _ _ => add_mul _ _ _)

theorem pcomb_fsum {G ι : Type} (f : ι →₀ ℂ) (k : ι → ℂ → (G →₀ ℂ)) (F : G → ℂ) :
    GlobalTheory.PosOne.comb (f.sum k) F = f.sum fun a b => GlobalTheory.PosOne.comb (k a b) F :=
  Finsupp.sum_sum_index (h := fun g a => a * F g) (fun _ => zero_mul _) (fun _ _ _ => add_mul _ _ _)

theorem pcomb_single {G : Type} (x : G) (y : ℂ) (F : G → ℂ) : GlobalTheory.PosOne.comb (Finsupp.single x y) F = y * F x :=
  Finsupp.sum_single_index (h := fun g a => a * F g) (zero_mul _)

theorem pcomb_conv_cons {G : Type} [Monoid G] (e : G →₀ ℂ) (l : List (G →₀ ℂ)) (F : G → ℂ) :
    GlobalTheory.PosOne.comb (conv (e :: l)) F =
      GlobalTheory.PosOne.comb (conv l) (fun b => GlobalTheory.PosOne.comb e (fun a => F (a * b))) := by
  classical
  show GlobalTheory.PosOne.comb ((e.sum fun g a => (conv l).sum fun h b => Finsupp.single (g * h) (a * b))) F = _
  rw [pcomb_fsum]
  have e1 : ∀ g a, GlobalTheory.PosOne.comb ((conv l).sum fun h b => Finsupp.single (g * h) (a * b)) F =
      (conv l).sum fun h b => a * b * F (g * h) := fun g a => by
    rw [pcomb_fsum]; exact Finsupp.sum_congr fun h _ => pcomb_single _ _ _
  simp only [e1]
  show (e.sum fun g a => (conv l).sum fun h b => a * b * F (g * h)) = (conv l).sum fun b c => c * (e.sum fun a d => d * F (a * b))
  rw [Finsupp.sum_comm]
  refine Finsupp.sum_congr fun b _ => ?_
  simp only [Finsupp.mul_sum]
  refine Finsupp.sum_congr fun a _ => ?_
  ring

theorem conv_support_mem {G : Type} [Monoid G] (M : Submonoid G) (l : List (G →₀ ℂ))
    (h : ∀ e ∈ l, ∀ g ∈ e.support, g ∈ M) : ∀ g ∈ (conv l).support, g ∈ M := by
  classical
  induction l with
  | nil =>
    intro g hg
    have : g = 1 := by simpa [conv] using Finsupp.support_single_subset hg
    exact this ▸ M.one_mem
  | cons e l ih =>
    intro g hg
    have ih' := ih fun e' he' => h e' (List.mem_cons_of_mem _ he')
    change g ∈ (e.sum fun g a => (conv l).sum fun h b => Finsupp.single (g * h) (a * b)).support at hg
    obtain ⟨x, hx, hg⟩ := Finset.mem_biUnion.1 (Finsupp.support_sum hg)
    obtain ⟨y, hy, hg⟩ := Finset.mem_biUnion.1 (Finsupp.support_sum hg)
    rw [Finset.mem_singleton.1 (Finsupp.support_single_subset hg)]
    exact M.mul_mem (h e List.mem_cons_self x hx) (ih' y hy)

theorem comb_eq_fsum (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (c : WO S T →₀ ℂ) (f : WO S T → ℂ) :
    comb ψ S T c f = c.sum fun u a => a • heisO ψ S T u f := rfl

theorem comb_aconv_cons (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (c : WO S T →₀ ℂ) (l : List (WO S T →₀ ℂ))
    (h : ∀ x ∈ c.support, ∀ y ∈ (aconv l).support, symplO S T x y = 0) (f : WO S T → ℂ) :
    comb ψ S T (aconv (c :: l)) f = comb ψ S T c (comb ψ S T (aconv l) f) := by
  classical
  rw [GlobalTheory.HeisComb.comb_comb]
  show comb ψ S T ((c.sum fun g a => (aconv l).sum fun h b => Finsupp.single (g + h) (a * b))) f = _
  rw [comb_eq_fsum, Finsupp.sum_sum_index (h := fun u a => a • heisO ψ S T u f) (fun _ => zero_smul ℂ _) (fun _ _ _ => add_smul _ _ _)]
  refine Finset.sum_congr rfl fun x hx => ?_
  beta_reduce
  rw [Finsupp.sum_sum_index (h := fun u a => a • heisO ψ S T u f) (fun _ => zero_smul ℂ _) (fun _ _ _ => add_smul _ _ _)]
  refine Finset.sum_congr rfl fun y hy => ?_
  beta_reduce
  rw [Finsupp.sum_single_index (h := fun u a => a • heisO ψ S T u f) (zero_smul ℂ _), GlobalTheory.WeilVacMove.heisO_heisO]
  have h0 : symplOH S T x y = 0 := by unfold symplOH; rw [h x hx y hy, mul_zero]
  rw [h0, AddChar.map_zero_eq_one, one_smul]

end GlobalTheory.QValInner

namespace GlobalTheory.QValInner
open GlobalTheory.Grow
variable {D : D7}

theorem congGrp_le (V : HSp D) {I J : Ideal (AE D)} (hIJ : I ≤ J) : congGrp V I ≤ congGrp V J := by
  intro x hx
  rw [congGrp, MonoidHom.mem_ker, MonoidHom.comp_apply] at hx ⊢
  have e : Matrix.GeneralLinearGroup.map (Ideal.Quotient.mk J) (matHom V x) =
      Matrix.GeneralLinearGroup.map (Ideal.Quotient.factor hIJ)
        (Matrix.GeneralLinearGroup.map (Ideal.Quotient.mk I) (matHom V x)) := by
    ext i j
    simp
  rw [e, hx, map_one]

theorem grpOff_le_at' (V : HSp D) {P : Pl D → Prop} {v : Pl D} (hv : P v) : grpOff V P ≤ grpOff V (· = v) := by
  apply congGrp_le
  exact le_iInf fun w => iInf_le_of_le ⟨w.1, by rw [w.2]; exact hv⟩ le_rfl

theorem grpAt_le_grpOff' (V : HSp D) {P P' : Pl D → Prop} (h : ∀ p, P p → ¬ P' p) : grpAt V P ≤ grpOff V P' := by
  apply congGrp_le
  intro a ha
  refine (Submodule.mem_iInf _).2 fun w => ?_
  exact (Submodule.mem_iInf _).1 (Submodule.mem_inf.1 ha).2 ⟨w.1, fun hp => h w.1 hp w.2⟩

theorem quotient_integral_fsum {G : Type} [Group G] [MeasurableSpace G] {R : Subgroup G} {ρ : Measure R} {μ : Measure G}
    {ι : Type} (s : Finset ι) (g : ι → G → ℂ) (z : ι → ℂ) (hs : ∀ i ∈ s, IsQuotIntL1 ρ μ (g i) (z i)) :
    IsQuotIntL1 ρ μ (fun h => ∑ i ∈ s, g i h) (∑ i ∈ s, z i) := by
  classical
  revert hs
  refine Finset.induction_on s ?_ ?_
  · intro _
    have e : (fun h => ∑ i ∈ (∅ : Finset ι), g i h) = 0 := by funext h; simp
    rw [e, Finset.sum_empty]
    exact IsQuotIntL1.zero
  · intro a s ha ih hs
    have := (hs a (Finset.mem_insert_self a s)).add (ih fun i hi => hs i (Finset.mem_insert_of_mem hi))
    rw [Finset.sum_insert ha]
    convert this using 1
    funext h
    simp [Finset.sum_insert ha]

end GlobalTheory.QValInner

namespace GlobalTheory.QValInner

theorem rest_grp : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (σ : ℕ) (S : Dbl2 ψ σ) (r : ℕ) (Q : Fin (r + 1) → QStep S),
    Function.Injective (fun i => (Q i).q.v) →
    ∀ a ∈ (conv (List.ofFn fun i : Fin r => (Q i.succ).e₀.mapDomain (Q i.succ).gl₀)).support, a ∈ grpOff S.B.V (· = (Q 0).q.v) := by
  classical
  intro D ψ σ S r Q hinj
  refine conv_support_mem (grpOff S.B.V (· = (Q 0).q.v)).toSubmonoid _ ?_
  intro e he g hg
  obtain ⟨i, rfl⟩ := List.mem_ofFn.1 he
  obtain ⟨a, -, rfl⟩ := Finset.mem_image.1 (Finsupp.mapDomain_support hg)
  have hr := (GlobalTheory.T.splitPlace_local_group_closedEmbedding_integral D (Q i.succ).k (Q i.succ).q S.B.V _ (Q i.succ).F.G₀ (Q i.succ).gl₀ (Q i.succ).loc₀).2.1
  have ha : (Q i.succ).gl₀ a ∈ grpAt S.B.V (· = (Q i.succ).q.v) := hr ▸ ⟨a, rfl⟩
  refine grpAt_le_grpOff' _ ?_ ha
  rintro p rfl h
  exact Fin.succ_ne_zero i (hinj h)

end GlobalTheory.QValInner

namespace GlobalTheory.QValInner

theorem innerVal_iter2 : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (σ : ℕ) (S : Dbl2 ψ σ) (r : ℕ) (Q : Fin (r + 1) → QStep S), Function.Injective (fun i => (Q i).q.v) → ∀ m₁ s₁ m₂ s₂, LocNorm (Q 0) m₁ s₁ m₂ s₂ → ∀ c₁ c₂ f₁ f₂ φ f g h₁ h₂, Hyps Q c₁ c₂ f₁ f₂ φ f g h₁ h₂ → ∀ x ∈ grpAt S.J.W (places fun i => Q i.succ), ∀ y ∈ grpAt S.B'.V (places fun i => Q i.succ), Iter2 s₁ m₁ s₂ m₂ (fun x₀ y₀ => integrand Q c₁ c₂ f₁ f₂ φ f g h₁ h₂ (x * (Q 0).gl₁ x₀) (y * (Q 0).gl₂ y₀)) (innerVal Q c₁ c₂ f₁ f₂ φ f g h₁ h₂ x y) := by
  classical
  intro D ψ hψ σ S r Q hinj m₁ s₁ m₂ s₂ hL c₁ c₂ f₁ f₂ φ f g h₁ h₂ hH x hx y hy
  obtain ⟨hc, t1, t2, hv, hφ, hf, ht, hg, hh₁, hh₂⟩ := hH
  obtain ⟨a1, a2, a3, a4, a5, a6, a7, a8⟩ := hL
  have hc2 : (Q 0).c = 2 * σ := by have := (Q 0).F.bes'.1; omega
  obtain ⟨⟨fc₁, aw₁, or₁⟩, ⟨fc₂, aw₂, or₂⟩⟩ := GlobalTheory.T.otherPlacesConvolution_finite_away_orthogonal D ψ σ S r Q hinj
  have hdisj : ∀ p, (places fun i : Fin r => Q i.succ) p → ¬ (p = (Q 0).q.v) := by
    rintro p ⟨i, rfl⟩ h
    exact Fin.succ_ne_zero i (hinj h)
  have hP0 : (places Q) ((Q 0).q.v) := ⟨0, rfl⟩
  have hx0 : x ∈ grpOff S.J.W (· = (Q 0).q.v) := grpAt_le_grpOff' _ hdisj hx
  have hy0 : y ∈ grpOff S.B'.V (· = (Q 0).q.v) := grpAt_le_grpOff' _ hdisj hy
  have hg0 : g ∈ grpOff S.B.V (· = (Q 0).q.v) := grpOff_le_at' _ hP0 hg
  have hh₁0 : h₁ ∈ grpOff S.J.W (· = (Q 0).q.v) := grpOff_le_at' _ hP0 hh₁
  have hh₂0 : h₂ ∈ grpOff S.B'.V (· = (Q 0).q.v) := grpOff_le_at' _ hP0 hh₂
  have hE := rest_grp D ψ σ S r Q hinj
  have hcomm := (GlobalTheory.T.splitPlace_local_group_closedEmbedding_integral D (Q 0).k (Q 0).q S.B.V _ (Q 0).F.G₀ (Q 0).gl₀ (Q 0).loc₀).2.2.2.1
  set E := conv (List.ofFn fun i : Fin r => (Q i.succ).e₀.mapDomain (Q i.succ).gl₀) with hEdef
  set f₁' := comb ψ _ _ (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₁)) f₁ with hf₁'
  set f₂' := comb ψ _ _ (aconv (List.ofFn fun i : Fin r => (Q i.succ).D₂)) f₂ with hf₂'
  have hvac : (Q 0).Vac f₁' f₂' := GlobalTheory.T.heisenbergComb_awayFromPlace_keeps_vacuum D ψ hψ σ S (Q 0) _ _ fc₁ fc₂ aw₁ aw₂ f₁ f₂ t1 t2 (hv 0)

  let Gf : GA D S.B.V → GL ((Q 0).n₁ ⊕ Fin ((Q 0).c + 1 + 1)) (Q 0).k → GL ((Q 0).n₂ ⊕ Fin ((Q 0).c + 1)) (Q 0).k → ℂ :=
    fun a' x₀ y₀ => GlobalTheory.PosOne.comb (Q 0).e₀ fun a => S.val c₁ c₂ (comb ψ _ _ (Q 0).D₁ f₁') (comb ψ _ _ (Q 0).D₂ f₂') φ f
      (g * a' * (Q 0).gl₀ a) (h₁ * x * (Q 0).gl₁ x₀) (h₂ * y * (Q 0).gl₂ y₀)
  let Z : GA D S.B.V → ℂ := fun a' => (Q 0).volJ * ∑ γ : (Q 0).A₁, ∑ β : (Q 0).A₂, (Q 0).w₁ γ * (Q 0).w₂ β *
    S.val (aconv [c₁, (Q 0).d₁ γ]) (aconv [c₂, (Q 0).d₂ γ β]) f₁' f₂' φ (trc (((Q 0).e₂ β).mapDomain (Q 0).gl₂) f)
      (g * a') (h₁ * x) (h₂ * y)
  have cv := GlobalTheory.T.localInvariantIntegrals_symmetric_haarSubgroups (Q 0).k (Q 0).ν (Q 0).unitVol
  have cv2 := ((cv (Q 0).n₂ ((Q 0).c + 1) (σ + 1) (Q 0).m₂ m₂ (Q 0).haar₂ a5 (Q 0).vol₂).1 (by omega) s₂ a7 a8).2
  have cv1 := ((cv (Q 0).n₁ ((Q 0).c + 1 + 1) (σ + 1) (Q 0).m₁ m₁ (Q 0).haar₁ a1 (Q 0).vol₁).2 (by omega) (by omega) s₁ a3 a4).2
  have hV : ∀ a', ∃ u : GL ((Q 0).n₁ ⊕ Fin ((Q 0).c + 1 + 1)) (Q 0).k → ℂ, a' ∈ E.support →
      (∀ x₀, IsQuotIntL1 s₂ m₂ (Gf a' x₀) (u x₀)) ∧ IsQuotIntL1 s₁ m₁ u (Z a') := by
    intro a'
    by_cases ha : a' ∈ E.support
    · obtain ⟨u, hu1, hu2⟩ := GlobalTheory.T.splitPlaceDoubleStepLocalIteratedIntegral_proof D ψ hψ σ S (Q 0) m₁ m₂ a1 a5 a2 a6 c₁ c₂ (hc 0).1 (hc 0).2 f₁' f₂' hvac φ f hφ hf
        (ht 0) (g * a') (mul_mem hg0 (hE a' ha)) (h₁ * x) (mul_mem hh₁0 hx0) (h₂ * y) (mul_mem hh₂0 hy0)
      exact ⟨u, fun _ => ⟨fun x₀ => cv2 _ _ (hu1 x₀), cv1 _ _ hu2⟩⟩
    · exact ⟨0, fun h => absurd h ha⟩
  choose u hu using hV

  have hK : ∀ x₀ y₀, integrand Q c₁ c₂ f₁ f₂ φ f g h₁ h₂ (x * (Q 0).gl₁ x₀) (y * (Q 0).gl₂ y₀) =
      ∑ a' ∈ E.support, E a' * Gf a' x₀ y₀ := by
    intro x₀ y₀
    simp only [Gf]
    unfold integrand
    simp only [List.ofFn_succ]
    rw [pcomb_conv_cons, comb_aconv_cons ψ _ _ _ _ or₁, comb_aconv_cons ψ _ _ _ _ or₂, pcomb_eq_sum]
    refine Finset.sum_congr rfl fun b hb => ?_
    congr 1
    rw [pcomb_mapDomain]
    refine pcomb_congr _ fun a _ => ?_
    rw [hcomm a b (hE b hb), hf₁', hf₂']
    simp only [mul_assoc]
  have hI : innerVal Q c₁ c₂ f₁ f₂ φ f g h₁ h₂ x y = ∑ a' ∈ E.support, E a' * Z a' := by
    simp only [Z]
    unfold innerVal integrand
    simp only [pcomb_eq_sum, Finset.mul_sum]
    symm
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun γ _ => ?_
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun β _ => ?_
    refine Finset.sum_congr rfl fun a _ => ?_
    ring
  refine ⟨fun x₀ => ∑ a' ∈ E.support, E a' * u a' x₀, ?_, fun x₀ => ?_⟩
  · rw [hI]
    exact quotient_integral_fsum E.support (fun a' x₀ => E a' * u a' x₀) (fun a' => E a' * Z a')
      fun a' ha => ((hu a' ha).2.smul (E a'))
  · simp only [hK]
    exact quotient_integral_fsum E.support (fun a' y₀ => E a' * Gf a' x₀ y₀) (fun a' => E a' * u a' x₀)
      fun a' ha => (((hu a' ha).1 x₀).smul (E a'))

end GlobalTheory.QValInner

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IteratedInnerIntegralAtFirstOfSplitPlaces =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IteratedInnerIntegralAtFirstOfSplitPlacesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IteratedInnerIntegralAtFirstOfSplitPlacesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ValQOfValQr\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IteratedInnerIntegralAtFirstOfSplitPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory IsDedekindDomain NumberField Matrix
open GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Grow GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.RootEx GlobalTheory.StepData GlobalTheory.SeeSaw GlobalTheory.LocMod GlobalTheory.QPl ValuativeRel
open GlobalTheory.PosOne (toOne Covers TriPos)
open GlobalTheory.IndefiniteRowSideFullHecke.FourierJacobiAverage (app HasTensorVal fl opEFJ IsQuotIntFJ RFJ)
open GlobalTheory.IndefiniteRowSideFullHecke.FramePositiveSum (IsCO)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.QVal GlobalTheory.FinPl

theorem _root_.GlobalTheory.T.iteratedInnerIntegral_at_first_of_splitPlaces : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (σ : ℕ) (S : Dbl2 ψ σ) (r : ℕ) (Q : Fin (r + 1) → QStep S), Function.Injective (fun i => (Q i).q.v) → ∀ m₁ s₁ m₂ s₂, LocNorm (Q 0) m₁ s₁ m₂ s₂ → ∀ c₁ c₂ f₁ f₂ φ f g h₁ h₂, Hyps Q c₁ c₂ f₁ f₂ φ f g h₁ h₂ → ∀ x ∈ grpAt S.J.W (places fun i => Q i.succ), ∀ y ∈ grpAt S.B'.V (places fun i => Q i.succ), Iter2 s₁ m₁ s₂ m₂ (fun x₀ y₀ => integrand Q c₁ c₂ f₁ f₂ φ f g h₁ h₂ (x * (Q 0).gl₁ x₀) (y * (Q 0).gl₂ y₀)) (innerVal Q c₁ c₂ f₁ f₂ φ f g h₁ h₂ x y) := by
  first | exact @GlobalTheory.QValInner.innerVal_iter2 | exact GlobalTheory.QValInner.innerVal_iter2 | (intros; apply GlobalTheory.QValInner.innerVal_iter2 <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IteratedInnerIntegralAtFirstOfSplitPlacesStatement =====
