module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup
public import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnramifiedQuadraticDatumAtInertPlace
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianModelOfNormNeZero
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAevalEqOfSeparable
public import Mathlib.LinearAlgebra.Charpoly.ToMatrix
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfTraceMulOfSeparableGenerated
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAevalEqOfCharpolySeparableInvolution
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KappaSignMultiplicative
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLocalRingOfIdem
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertOrbitalIntegralUnitEqLatticeCountStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeCountAndGramDetSignNormClassStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnitaryGroupEveryResidueOfLie
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JacquetRallisUnitMatchAllRanksStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitLemmaLieAlgebraUnitaryGroupOfJacquetRallisStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralProductGroup
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteTwistedClassesCharpoly
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalTwistContinuousInvolutionIntegralProperties
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RegularTwistedOrbitLocalFinitenessStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralTwistedConjInvariant
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.SymIdx
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceStableTwistedOrbitalUnitEqLatticeSumStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.TotallySplit
import Mathlib.RingTheory.Coalgebra.CoassocSimps
import Mathlib.RingTheory.SimpleRing.Principal
import Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.TypeStar
import Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnramifiedQuadraticDatumAtInertPlaceStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianModelOfNormNeZeroStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsModelOfUnitary, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsModelOfUnitaryStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormMulOfHermitianModelUnitaryConj, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormMulOfHermitianModelUnitaryConjStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeLocalUnitaryTwist, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeLocalUnitaryTwistStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelCharpolyEqAndUnitary, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelCharpolyEqAndUnitaryStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelsConjUnitaryOfNormClass, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelsConjUnitaryOfNormClassStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSum, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnitaryGroupEveryResidueOfLieStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnramifiedProductUnitaryGroups, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnramifiedProductUnitaryGroupsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralProductGroupStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharpolyNrmLConj, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriTrivialCase.IwahoriTrivialLemmas.UnitProductIndicatorTwist, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.MultiplicityOneBase.ArchimedeanBaseChangeFirst

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnramifiedQuadraticDatumAtInertPlaceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnramifiedQuadraticDatumAtInertPlaceStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnramifiedQuadraticDatumAtInertPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC GlobalTheory.BCT
open scoped Classical TensorProduct

theorem _root_.GlobalTheory.T.exists_unramifiedQuadraticDatum_at_inertPlace : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ w : Pl E, ¬ IsSplitAt w → ∃ (K : GlobalTheory.UnitLemma.UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) ∧ (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) ∧ (∀ x, GlobalTheory.UnitLemma.val K.O x = ordL (e x)) ∧ qV E w = K.q ^ 2 := by
  first | exact @GlobalTheory.InertUQ.exists_uq | exact GlobalTheory.InertUQ.exists_uq | (intros; apply GlobalTheory.InertUQ.exists_uq <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnramifiedQuadraticDatumAtInertPlaceStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianModelOfNormNeZeroStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianModelOfNormNeZeroStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianModelOfNormNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial Matrix

theorem _root_.GlobalTheory.T.exists_hermitianModel_of_norm_ne_zero : ∀ (K : GlobalTheory.UnitLemma.UQ) (B : GlobalTheory.UnitLemma.InvAlg K) (n : ℕ) (x : B.Aˣ), Module.finrank K.E B.A = n → B.σ (x : B.A) = x → B.N x ≠ 0 → ∃ (γ : Matrix (Fin n) (Fin n) K.E) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), GlobalTheory.InertUnitOrb.IsModel B γ x ψ := by
  first | exact @GlobalTheory.InertUnitOrb.ModelOfN.exists_model | exact GlobalTheory.InertUnitOrb.ModelOfN.exists_model | (intros; apply GlobalTheory.InertUnitOrb.ModelOfN.exists_model <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianModelOfNormNeZeroStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsModelOfUnitary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsModelOfUnitary", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAevalEqOfSeparable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Charpoly.ToMatrix\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial Matrix

namespace GlobalTheory.InertUnitOrb

theorem stdH_mulVec_of_unitary (K : UQ) (n : ℕ) (γ : Matrix (Fin n) (Fin n) K.E)
    (hγ : (γ.map K.c)ᵀ * γ = 1) (y z : Fin n → K.E) :
    stdH K n (γ *ᵥ y) (γ *ᵥ z) = stdH K n y z := by
  have h1 : ∀ u v : Fin n → K.E, stdH K n u v = u ⬝ᵥ (fun k => K.c (v k)) := fun u v => rfl
  have h2 : (fun k => K.c ((γ *ᵥ z) k)) = (γ.map K.c) *ᵥ (fun k => K.c (z k)) := by
    funext k

    simp [Matrix.mulVec, dotProduct, map_sum]
  rw [h1, h1, h2, dotProduct_mulVec, ← mulVec_transpose, mulVec_mulVec, hγ, one_mulVec]

theorem exists_isModel_of_unitary : ∀ (K : GlobalTheory.UnitLemma.UQ) (B : GlobalTheory.UnitLemma.InvAlg K) (n : ℕ) (γ : Matrix (Fin n) (Fin n) K.E), (γ.map K.c)ᵀ * γ = 1 → B.g * B.σ B.g = 1 → B.P.Separable → γ.charpoly = B.P → ∃ (x : B.Aˣ) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), GlobalTheory.InertUnitOrb.IsModel B γ x ψ := by
  intro K B n γ hγ hg hsep hchar
  obtain ⟨x, e, h1, h2, h3⟩ := PairClass.exists_herm_model K (Fin n → K.E) (stdH K n)
    (fun x y z => by simp [stdH, add_mul, Finset.sum_add_distrib])
    (fun c x z => by simp [stdH, Finset.mul_sum, mul_assoc])
    (fun x y => by

      simp only [stdH, map_sum, map_mul, K.c_c]
      exact Finset.sum_congr rfl fun k _ => mul_comm _ _)
    (fun y hy => by
      funext k
      have := hy (Pi.single k 1)
      rw [stdH, Finset.sum_eq_single k] at this
      · simpa using this
      · intro j _ hj
        simp [Pi.single_eq_of_ne hj]
      · simp)
    B (Matrix.toLin' γ) hsep (by rw [Matrix.charpoly_toLin', hchar])
    (Or.inl ⟨hg, fun y z => by
      rw [Matrix.toLin'_apply, Matrix.toLin'_apply, stdH_mulVec_of_unitary K n γ hγ]⟩)
  exact ⟨x, e, h1, fun y => by rw [h2, Matrix.toLin'_apply], h3⟩

end GlobalTheory.InertUnitOrb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsModelOfUnitary =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsModelOfUnitaryStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsModelOfUnitaryStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsModelOfUnitary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial Matrix

theorem _root_.GlobalTheory.T.exists_isModel_of_unitary_charpoly_eq : ∀ (K : GlobalTheory.UnitLemma.UQ) (B : GlobalTheory.UnitLemma.InvAlg K) (n : ℕ) (γ : Matrix (Fin n) (Fin n) K.E), (γ.map K.c)ᵀ * γ = 1 → B.g * B.σ B.g = 1 → B.P.Separable → γ.charpoly = B.P → ∃ (x : B.Aˣ) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), GlobalTheory.InertUnitOrb.IsModel B γ x ψ := by
  first | exact @GlobalTheory.InertUnitOrb.exists_isModel_of_unitary | exact GlobalTheory.InertUnitOrb.exists_isModel_of_unitary | (intros; apply GlobalTheory.InertUnitOrb.exists_isModel_of_unitary <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsModelOfUnitaryStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormMulOfHermitianModelUnitaryConj =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormMulOfHermitianModelUnitaryConj", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqZeroOfTraceMulOfSeparableGenerated\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAevalEqOfCharpolySeparableInvolution\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial Matrix

noncomputable section

namespace GlobalTheory.InertUnitOrb

theorem stdH_mulVec_eq_of_unitary {K : UQ} {n : ℕ} (u : Matrix (Fin n) (Fin n) K.E)
    (hu : (u.map K.c)ᵀ * u = 1) (a b : Fin n → K.E) :
    stdH K n (u *ᵥ a) (u *ᵥ b) = stdH K n a b := by
  have hu' : uᵀ * u.map K.c = 1 := by
    have := congrArg Matrix.transpose hu
    rwa [transpose_mul, transpose_transpose, transpose_one] at this
  have hS : ∀ y z : Fin n → K.E, stdH K n y z = y ⬝ᵥ (fun k => K.c (z k)) := fun _ _ => rfl
  have hc : (fun k => K.c ((u *ᵥ b) k)) = u.map K.c *ᵥ (fun k => K.c (b k)) := by
    funext k
    exact RingHom.map_mulVec (K.c : K.E →+* K.E) u b k
  rw [hS, hS, hc, dotProduct_mulVec, ← vecMul_transpose, vecMul_vecMul, hu', vecMul_one]

theorem class_eq_of_conj :
    ∀ (K : GlobalTheory.UnitLemma.UQ) (B : GlobalTheory.UnitLemma.InvAlg K) (n : ℕ) (γ γ' u : Matrix (Fin n) (Fin n) K.E)
      (x x' : B.Aˣ) (ψ ψ' : B.A ≃ₗ[K.E] (Fin n → K.E)), GlobalTheory.InertUnitOrb.IsModel B γ x ψ →
      GlobalTheory.InertUnitOrb.IsModel B γ' x' ψ' → (u.map K.c)ᵀ * u = 1 → γ * u = u * γ' → B.P.Separable →
      ∃ v : B.Aˣ, (x' : B.A) = x * (v * B.σ v) := by
  intro K B n γ γ' u x x' ψ ψ' ⟨_, hg, hh⟩ ⟨_, hg', hh'⟩ hu hγ hsep
  have hgen := GlobalTheory.UnitLemma.InvAlg.exists_aeval_eq_of_separable K B hsep
  let φ : B.A →ₗ[K.E] B.A := ψ.symm.toLinearMap ∘ₗ Matrix.toLin' u ∘ₗ ψ'.toLinearMap
  have hφ_apply : ∀ y, φ y = ψ.symm (u *ᵥ ψ' y) := fun y => by
    simp [φ, Matrix.toLin'_apply]
  have hψg : ∀ w, ψ.symm (γ *ᵥ w) = B.g * ψ.symm w := fun w => by
    apply ψ.injective
    rw [hg, LinearEquiv.apply_symm_apply, LinearEquiv.apply_symm_apply]
  have hφg : ∀ y, φ (B.g * y) = B.g * φ y := fun y => by
    rw [hφ_apply, hφ_apply, hg', mulVec_mulVec, ← hγ, ← mulVec_mulVec, hψg]
  have hpow : ∀ (k : ℕ) y, φ (B.g ^ k * y) = B.g ^ k * φ y := by
    intro k
    induction k with
    | zero => intro y; simp
    | succ k ih => intro y; rw [pow_succ', mul_assoc, hφg, ih, ← mul_assoc]
  have hφp : ∀ (f : K.E[X]) y, φ (aeval B.g f * y) = aeval B.g f * φ y := by
    intro f
    induction f using Polynomial.induction_on' with
    | add p q hp hq => intro y; rw [map_add (f := _), add_mul, add_mul, map_add (f := _), hp, hq]
    | monomial k e =>
      intro y
      rw [aeval_monomial, mul_assoc, ← Algebra.smul_def, map_smul, hpow, Algebra.smul_def, mul_assoc]
  have hφ : ∀ y, φ y = y * φ 1 := fun y => by
    obtain ⟨f, rfl⟩ := hgen y
    simpa using hφp f 1

  have hu2 : u * (u.map K.c)ᵀ = 1 := mul_eq_one_comm.mp hu
  have hy0 : φ (ψ'.symm ((u.map K.c)ᵀ *ᵥ ψ 1)) = 1 := by
    rw [hφ_apply, LinearEquiv.apply_symm_apply, mulVec_mulVec, hu2, one_mulVec,
      LinearEquiv.symm_apply_apply]
  have hunit : IsUnit (φ 1) := by
    have h1 : ψ'.symm ((u.map K.c)ᵀ *ᵥ ψ 1) * φ 1 = 1 := by rw [← hφ, hy0]
    exact ⟨⟨φ 1, ψ'.symm ((u.map K.c)ᵀ *ᵥ ψ 1), by rw [mul_comm]; exact h1, h1⟩, rfl⟩
  refine ⟨hunit.unit, ?_⟩
  rw [IsUnit.unit_spec]

  have hiso : ∀ y z, B.herm x' y z = B.herm x (y * φ 1) (z * φ 1) := fun y z => by
    rw [← hh', ← stdH_mulVec_eq_of_unitary u hu, ← hh, ← hφ, ← hφ, hφ_apply, hφ_apply,
      LinearEquiv.apply_symm_apply, LinearEquiv.apply_symm_apply]
  have key : ∀ y, Algebra.trace K.E B.A (((x' : B.A) - x * (φ 1 * B.σ (φ 1))) * y) = 0 := fun y => by
    have h1 := hiso y 1
    simp only [InvAlg.herm, map_one, mul_one, one_mul] at h1
    rw [sub_mul, map_sub, h1, sub_eq_zero]
    congr 1
    ring
  exact sub_eq_zero.mp (GlobalTheory.UnitLemma.TraceNondeg.eq_zero_of_trace_mul_eq_zero K B hsep hgen _ key)

end GlobalTheory.InertUnitOrb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormMulOfHermitianModelUnitaryConj =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormMulOfHermitianModelUnitaryConjStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormMulOfHermitianModelUnitaryConjStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormMulOfHermitianModelUnitaryConj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial Matrix

theorem _root_.GlobalTheory.T.exists_norm_mul_of_hermitianModel_unitary_conj : ∀ (K : GlobalTheory.UnitLemma.UQ) (B : GlobalTheory.UnitLemma.InvAlg K) (n : ℕ) (γ γ' u : Matrix (Fin n) (Fin n) K.E) (x x' : B.Aˣ) (ψ ψ' : B.A ≃ₗ[K.E] (Fin n → K.E)), GlobalTheory.InertUnitOrb.IsModel B γ x ψ → GlobalTheory.InertUnitOrb.IsModel B γ' x' ψ' → (u.map K.c)ᵀ * u = 1 → γ * u = u * γ' → B.P.Separable → ∃ v : B.Aˣ, (x' : B.A) = x * (v * B.σ v) := by
  first | exact @GlobalTheory.InertUnitOrb.class_eq_of_conj | exact GlobalTheory.InertUnitOrb.class_eq_of_conj | (intros; apply GlobalTheory.InertUnitOrb.class_eq_of_conj <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormMulOfHermitianModelUnitaryConjStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeLocalUnitaryTwist =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeLocalUnitaryTwist", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KappaSignMultiplicative\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLocalRingOfIdem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.InertSign

open GlobalTheory.UnitLemma GlobalTheory.InertUnitOrb

variable {K : UQ}

theorem model_pow {B : InvAlg K} {n : ℕ} {γ : Matrix (Fin n) (Fin n) K.E} {x : B.Aˣ}
    {ψ : B.A ≃ₗ[K.E] (Fin n → K.E)} (h : IsModel B γ x ψ) (k : ℕ) (y : B.A) :
    ψ (B.g ^ k * y) = (γ ^ k) *ᵥ ψ y := by
  induction k generalizing y with
  | zero => simp
  | succ k ih => rw [pow_succ', mul_assoc, h.2.1, ih, pow_succ', ← mulVec_mulVec]

theorem model_aeval {B : InvAlg K} {n : ℕ} {γ : Matrix (Fin n) (Fin n) K.E} {x : B.Aˣ}
    {ψ : B.A ≃ₗ[K.E] (Fin n → K.E)} (h : IsModel B γ x ψ) (p : K.E[X]) (y : B.A) :
    ψ (aeval B.g p * y) = aeval γ p *ᵥ ψ y := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), add_mul, map_add (f := _), hp, hq, add_mulVec]
  | monomial k a =>
    rw [aeval_monomial, aeval_monomial, mul_assoc, ← Algebra.smul_def, map_smul, model_pow h,
      ← Algebra.smul_def, Matrix.smul_mulVec]

theorem aeval_g_P (B : InvAlg K) : aeval B.g B.P = 0 := by
  have h : Algebra.lmul K.E B.A (aeval B.g B.P) = 0 := by
    rw [← aeval_algHom_apply]; exact LinearMap.aeval_self_charpoly _
  simpa using LinearMap.congr_fun h 1

theorem aeval_prod (B₁ B₂ : InvAlg K) (p : K.E[X]) :
    aeval (B₁.prod B₂).g p = ((aeval B₁.g p, aeval B₂.g p) : B₁.A × B₂.A) := by
  change aeval ((B₁.g, B₂.g) : B₁.A × B₂.A) p = _
  ext
  · exact (aeval_algHom_apply (AlgHom.fst K.E B₁.A B₂.A) ((B₁.g, B₂.g) : B₁.A × B₂.A) p).symm
  · exact (aeval_algHom_apply (AlgHom.snd K.E B₁.A B₂.A) ((B₁.g, B₂.g) : B₁.A × B₂.A) p).symm

theorem ker_model (B₁ B₂ : InvAlg K) (hs : (B₁.P * B₂.P).Separable) {n : ℕ}
    {γ : Matrix (Fin n) (Fin n) K.E} {x : (B₁.prod B₂).Aˣ} {ψ : (B₁.prod B₂).A ≃ₗ[K.E] (Fin n → K.E)}
    (h : IsModel (B₁.prod B₂) γ x ψ) (y : Fin n → K.E) :
    aeval γ B₁.P *ᵥ y = 0 ↔ ∃ a : B₁.A, y = ψ ((a, 0) : B₁.A × B₂.A) := by
  obtain ⟨z, rfl⟩ := ψ.surjective y
  rw [← model_aeval h, LinearEquiv.map_eq_zero_iff, aeval_prod, aeval_g_P]
  obtain ⟨a, c, hac⟩ := Polynomial.Separable.isCoprime hs
  have hu : IsUnit (aeval B₂.g B₁.P) := by
    have := congrArg (aeval B₂.g) hac
    rw [map_add (f := _), map_mul, map_mul, aeval_g_P B₂, mul_zero, add_zero, map_one] at this
    exact isUnit_iff_exists_inv'.2 ⟨_, this⟩
  constructor
  · intro hz
    have h2 : aeval B₂.g B₁.P * z.2 = 0 := congrArg Prod.snd hz
    refine ⟨z.1, ?_⟩
    congr 1
    exact Prod.ext rfl (hu.mul_right_eq_zero.1 h2)
  · rintro ⟨a0, ha⟩
    rw [ψ.injective ha]
    exact Prod.ext (zero_mul _) (mul_zero _)

theorem herm_fst (B₁ B₂ : InvAlg K) (x : (B₁.prod B₂).A) (a b : B₁.A) :
    (B₁.prod B₂).herm x ((a, 0) : B₁.A × B₂.A) ((b, 0) : B₁.A × B₂.A) = B₁.herm x.1 a b := by
  unfold InvAlg.herm
  change Algebra.trace K.E (B₁.A × B₂.A) ((x.1 * a * B₁.σ b, x.2 * 0 * B₂.σ 0)) = _
  rw [Algebra.trace_prod_apply]
  simp

theorem aeval_map_matrix {R S : Type} [CommRing R] [CommRing S] (f : R →+* S) {n : ℕ}
    (M : Matrix (Fin n) (Fin n) R) (p : R[X]) : aeval (M.map f) (p.map f) = (aeval M p).map f := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq => rw [Polynomial.map_add (f := _), map_add (f := _), map_add (f := _), hp, hq, Matrix.map_add _ (map_add f)]
  | monomial k a =>
    rw [Polynomial.map_monomial, aeval_monomial, aeval_monomial]
    change _ = f.mapMatrix _
    rw [map_mul, map_pow]
    congr 1
    rw [Matrix.algebraMap_eq_diagonal, Matrix.algebraMap_eq_diagonal]
    ext i j
    simp [Matrix.diagonal_apply]
    split_ifs <;> simp

theorem ker_transport {F L : Type} [Field F] [Field L] (e : F ≃+* L) {n : ℕ} (A : Matrix (Fin n) (Fin n) L)
    (y : Fin n → F) : (A.map e.symm) *ᵥ y = 0 ↔ A *ᵥ (fun k => e (y k)) = 0 := by
  have key : ∀ i, e ((A.map e.symm *ᵥ y) i) = (A *ᵥ fun k => e (y k)) i := by
    intro i
    have := RingHom.map_mulVec e.toRingHom (A.map e.symm) y i
    simp only [RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom, Matrix.map_map] at this
    rw [this]
    congr 2
    ext a b
    simp
  constructor
  · intro h
    funext i
    rw [← key, h]
    simp
  · intro h
    funext i
    apply e.injective
    rw [key, h]
    simp

theorem main : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : GlobalTheory.UnitLemma.UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, GlobalTheory.UnitLemma.val K.O x = ordL (e x)) → ∀ (n : ℕ) (Q₁ : (w.adicCompletion E)[X]) (B₁ B₂ : GlobalTheory.UnitLemma.InvAlg K), (B₁.P * B₂.P).Separable → B₁.P = Q₁.map e.symm.toRingHom → ∀ (γ : GLw n w) (x : (B₁.prod B₂).Aˣ) (ψ : (B₁.prod B₂).A ≃ₗ[K.E] (Fin n → K.E)), GlobalTheory.InertUnitOrb.IsModel (B₁.prod B₂) (γ.val.map e.symm) x ψ → kapSign n w Q₁ γ = ((K.eta (B₁.gramDet (x : (B₁.prod B₂).A).1) : ℚ) : ℂ) := by
  intro E _ _ _ _ w hw K e he hval n Q₁ B₁ B₂ hs hP γ x ψ hm
  simp only [kapSign, if_neg hw]
  have hA : aeval (γ.val.map e.symm) B₁.P = (aeval γ.val Q₁).map e.symm := by
    rw [hP]; exact aeval_map_matrix e.symm.toRingHom _ _
  have hmemW : ∀ y : Fin n → K.E, y ∈ LinearMap.ker (Matrix.toLin' (aeval (γ.val.map e.symm) B₁.P)) ↔
      aeval γ.val Q₁ *ᵥ (fun k => e (y k)) = 0 := by
    intro y
    rw [LinearMap.mem_ker, Matrix.toLin'_apply, hA]
    exact ker_transport e _ y
  set V₁ := LinearMap.ker (Matrix.toLin' (aeval γ.val Q₁)) with hV₁
  set b := Module.finBasis (w.adicCompletion E) V₁ with hb
  set W := LinearMap.ker (Matrix.toLin' (aeval (γ.val.map e.symm) B₁.P)) with hW
  let v : Fin (Module.finrank (w.adicCompletion E) V₁) → Fin n → K.E := fun i k => e.symm ((b i : Fin n → _) k)
  have hv_li : LinearIndependent K.E v := by
    refine Fintype.linearIndependent_iff.2 (fun g hg i => ?_)
    have h1 : ∑ j, e (g j) • (b j : Fin n → w.adicCompletion E) = 0 := by
      funext k
      have := congrArg e (congrFun hg k)

      simpa [v, Finset.sum_apply, map_sum, map_mul] using this
    have := Fintype.linearIndependent_iff.1 (GlobalTheory.KapSignMul.li_coe b) _ h1 i
    simpa using this
  have hv_span : Submodule.span K.E (Set.range v) = W := by
    refine le_antisymm (Submodule.span_le.2 ?_) (fun y hy => ?_)
    · rintro _ ⟨i, rfl⟩
      rw [SetLike.mem_coe, hmemW]
      have := LinearMap.mem_ker.1 (b i).2
      rw [Matrix.toLin'_apply] at this
      have h2 : (fun k => e (v i k)) = (b i : Fin n → w.adicCompletion E) := by funext k; simp [v]
      rw [h2]; exact this
    · rw [hmemW] at hy
      have hyV : (fun k => e (y k)) ∈ V₁ := by rw [hV₁, LinearMap.mem_ker, Matrix.toLin'_apply]; exact hy
      have hsr := congrArg (fun z : V₁ => (z : Fin n → w.adicCompletion E)) (b.sum_repr ⟨_, hyV⟩)
      rw [Submodule.mem_span_range_iff_exists_fun]
      refine ⟨fun i => e.symm (b.repr ⟨_, hyV⟩ i), ?_⟩
      funext k
      have h3 : ∑ i, b.repr ⟨_, hyV⟩ i * (b i : Fin n → w.adicCompletion E) k = e (y k) := by
        have := congrFun hsr k
        simp only [Submodule.coe_sum, Submodule.coe_smul, Finset.sum_apply, Pi.smul_apply, smul_eq_mul] at this
        exact this
      apply e.injective

      simpa [v, Finset.sum_apply, map_sum, map_mul] using h3
  let f := Module.finBasis K.E B₁.A
  let φ : B₁.A →ₗ[K.E] (Fin n → K.E) := ψ.toLinearMap ∘ₗ LinearMap.inl K.E B₁.A B₂.A
  have hφi : Function.Injective φ := fun a a' h => congrArg Prod.fst (ψ.injective h)
  let u : Fin (Module.finrank K.E B₁.A) → Fin n → K.E := fun i => φ (f i)
  have hu_li : LinearIndependent K.E u := f.linearIndependent.map' φ (LinearMap.ker_eq_bot.2 hφi)
  have hu_span : Submodule.span K.E (Set.range u) = W := by
    have hr : Set.range u = φ '' Set.range f := by rw [← Set.range_comp]; rfl
    rw [hr, Submodule.span_image, f.span_eq, Submodule.map_top]
    ext y
    rw [LinearMap.mem_range, hW, LinearMap.mem_ker, Matrix.toLin'_apply, ker_model B₁ B₂ hs hm]
    constructor
    · rintro ⟨a, rfl⟩; exact ⟨a, rfl⟩
    · rintro ⟨a, rfl⟩; exact ⟨a, rfl⟩
  obtain ⟨d, hd, hdet⟩ := GlobalTheory.KapSignMul.gram_change (K.c : K.E →+* K.E) W u v hu_li hu_span hv_li hv_span
  have hM : (Matrix.of fun i j => ∑ k, cj w ((b i : Fin n → w.adicCompletion E) k) * (b j : Fin n → w.adicCompletion E) k) =
      (Matrix.of fun i j => ∑ k, (K.c : K.E →+* K.E) (v i k) * v j k).map e := by
    ext i j

    simp [v, map_sum, he]
  have hG : (Matrix.of fun i j => ∑ k, (K.c : K.E →+* K.E) (u i k) * u j k) =
      (Matrix.of fun i j => B₁.herm (x : (B₁.prod B₂).A).1 (f i) (f j))ᵀ := by
    ext i j
    simp only [Matrix.of_apply, Matrix.transpose_apply]
    rw [← herm_fst]
    refine Eq.trans ?_ (hm.2.2 _ _)
    unfold GlobalTheory.InertUnitOrb.stdH
    refine Finset.sum_congr rfl fun k _ => ?_
    simp only [RingEquiv.coe_toRingHom]
    exact mul_comm _ _
  rw [hM, show ((Matrix.of fun i j => ∑ k, (K.c : K.E →+* K.E) (v i k) * v j k).map e).det =
    e (Matrix.of fun i j => ∑ k, (K.c : K.E →+* K.E) (v i k) * v j k).det from
    (RingHom.map_det e.toRingHom _).symm, ← hval, hdet, hG, Matrix.det_transpose]
  have heta : K.eta ((K.c : K.E →+* K.E) d * d * (Matrix.of fun i j => B₁.herm (x : (B₁.prod B₂).A).1 (f i) (f j)).det) =
      K.eta (B₁.gramDet (x : (B₁.prod B₂).A).1) := by
    rw [show (K.c : K.E →+* K.E) d * d * (Matrix.of fun i j => B₁.herm (x : (B₁.prod B₂).A).1 (f i) (f j)).det =
      d * (Matrix.of fun i j => B₁.herm (x : (B₁.prod B₂).A).1 (f i) (f j)).det * K.c d by
      simp only [RingEquiv.coe_toRingHom]; ring]
    rw [GlobalTheory.UnitLemma.Orbit.eta_norm_mul _ _ hd]
    rfl
  rw [← heta]
  unfold UQ.eta
  push_cast
  rfl

end GlobalTheory.InertSign
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeLocalUnitaryTwist =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeLocalUnitaryTwistStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeLocalUnitaryTwistStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeLocalUnitaryTwist\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem _root_.GlobalTheory.T.hermitian_lattice_local_unitary_twist : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : GlobalTheory.UnitLemma.UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, GlobalTheory.UnitLemma.val K.O x = ordL (e x)) → ∀ (n : ℕ) (Q₁ : (w.adicCompletion E)[X]) (B₁ B₂ : GlobalTheory.UnitLemma.InvAlg K), (B₁.P * B₂.P).Separable → B₁.P = Q₁.map e.symm.toRingHom → ∀ (γ : GLw n w) (x : (B₁.prod B₂).Aˣ) (ψ : (B₁.prod B₂).A ≃ₗ[K.E] (Fin n → K.E)), GlobalTheory.InertUnitOrb.IsModel (B₁.prod B₂) (γ.val.map e.symm) x ψ → kapSign n w Q₁ γ = ((K.eta (B₁.gramDet (x : (B₁.prod B₂).A).1) : ℚ) : ℂ) := by
  first | exact @GlobalTheory.InertSign.main | exact GlobalTheory.InertSign.main | (intros; apply GlobalTheory.InertSign.main <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeLocalUnitaryTwistStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelCharpolyEqAndUnitary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelCharpolyEqAndUnitary", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Charpoly.ToMatrix\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial Matrix

noncomputable section

namespace GlobalTheory.ModelCharpoly
open GlobalTheory.InertUnitOrb

theorem charpoly_eq (K : GlobalTheory.UnitLemma.UQ) (B : GlobalTheory.UnitLemma.InvAlg K) (n : ℕ) (γ : Matrix (Fin n) (Fin n) K.E)
    (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)) (h : ∀ y, ψ (B.g * y) = γ *ᵥ ψ y) : γ.charpoly = B.P := by
  let b : Module.Basis (Fin n) K.E B.A := (Pi.basisFun K.E (Fin n)).map ψ.symm
  have hm : LinearMap.toMatrix b b (LinearMap.mulLeft K.E B.g) = γ := by
    ext i j
    simp [b, LinearMap.toMatrix_apply, h]
  rw [InvAlg.P, ← LinearMap.charpoly_toMatrix (LinearMap.mulLeft K.E B.g) b, hm]

theorem unitary (K : GlobalTheory.UnitLemma.UQ) (B : GlobalTheory.UnitLemma.InvAlg K) (n : ℕ) (γ : Matrix (Fin n) (Fin n) K.E)
    (x : B.Aˣ) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)) (h : ∀ y, ψ (B.g * y) = γ *ᵥ ψ y)
    (hh : ∀ y z, stdH K n (ψ y) (ψ z) = B.herm x y z) (hg : B.g * B.σ B.g = 1) :
    (γ.map K.c)ᵀ * γ = 1 := by
  have key : ∀ a b : Fin n → K.E, stdH K n (γ *ᵥ a) (γ *ᵥ b) = stdH K n a b := by
    intro a b
    obtain ⟨y, rfl⟩ := ψ.surjective a
    obtain ⟨z, rfl⟩ := ψ.surjective b
    rw [← h, ← h, hh, hh, InvAlg.herm, InvAlg.herm]
    congr 1
    rw [map_mul B.σ]
    calc (x : B.A) * (B.g * y) * (B.σ B.g * B.σ z) = (x : B.A) * y * B.σ z * (B.g * B.σ B.g) := by ring
      _ = _ := by rw [hg, mul_one]
  ext i j
  have := key (Pi.single j 1) (Pi.single i 1)
  simp [stdH, Matrix.mulVec_single, Pi.single_apply, Matrix.mul_apply, Matrix.one_apply, mul_comm] at this
  simp [Matrix.mul_apply, Matrix.one_apply]
  simpa [mul_comm, eq_comm] using this

theorem model_charpoly_unitary : ∀ (K : GlobalTheory.UnitLemma.UQ) (B : GlobalTheory.UnitLemma.InvAlg K) (n : ℕ)
    (γ : Matrix (Fin n) (Fin n) K.E) (x : B.Aˣ) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)),
    GlobalTheory.InertUnitOrb.IsModel B γ x ψ → γ.charpoly = B.P ∧ (B.g * B.σ B.g = 1 → (γ.map K.c)ᵀ * γ = 1) := by
  intro K B n γ x ψ hM
  exact ⟨charpoly_eq K B n γ ψ hM.2.1, unitary K B n γ x ψ hM.2.1 hM.2.2⟩

end GlobalTheory.ModelCharpoly

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelCharpolyEqAndUnitary =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelCharpolyEqAndUnitaryStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelCharpolyEqAndUnitaryStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelCharpolyEqAndUnitary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial Matrix

theorem _root_.GlobalTheory.T.hermitianModel_charpoly_eq_and_unitary : ∀ (K : GlobalTheory.UnitLemma.UQ) (B : GlobalTheory.UnitLemma.InvAlg K) (n : ℕ) (γ : Matrix (Fin n) (Fin n) K.E) (x : B.Aˣ) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), GlobalTheory.InertUnitOrb.IsModel B γ x ψ → γ.charpoly = B.P ∧ (B.g * B.σ B.g = 1 → (γ.map K.c)ᵀ * γ = 1) := by
  first | exact @GlobalTheory.ModelCharpoly.model_charpoly_unitary | exact GlobalTheory.ModelCharpoly.model_charpoly_unitary | (intros; apply GlobalTheory.ModelCharpoly.model_charpoly_unitary <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelCharpolyEqAndUnitaryStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelsConjUnitaryOfNormClass =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelsConjUnitaryOfNormClass", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial Matrix

namespace GlobalTheory.InertUnitOrb

theorem conj_of_norm_class (K : GlobalTheory.UnitLemma.UQ) (B : GlobalTheory.UnitLemma.InvAlg K) (n : ℕ)
    (γ γ' : Matrix (Fin n) (Fin n) K.E) (x x' v : B.Aˣ) (ψ ψ' : B.A ≃ₗ[K.E] (Fin n → K.E))
    (h : GlobalTheory.InertUnitOrb.IsModel B γ x ψ) (h' : GlobalTheory.InertUnitOrb.IsModel B γ' x' ψ')
    (hx : (x' : B.A) = x * (v * B.σ v)) :
    ∃ u : Matrix (Fin n) (Fin n) K.E, (u.map K.c)ᵀ * u = 1 ∧ γ * u = u * γ' := by
  obtain ⟨-, hg, hh⟩ := h
  obtain ⟨-, hg', hh'⟩ := h'
  set f : (Fin n → K.E) →ₗ[K.E] (Fin n → K.E) :=
    ψ.toLinearMap ∘ₗ LinearMap.mulLeft K.E (v : B.A) ∘ₗ ψ'.symm.toLinearMap with hf
  have key : ∀ a b, stdH K n (f a) (f b) = stdH K n a b := by
    intro a b
    obtain ⟨y, rfl⟩ := ψ'.surjective a
    obtain ⟨z, rfl⟩ := ψ'.surjective b
    simp only [hf, LinearMap.comp_apply, LinearEquiv.coe_coe, LinearEquiv.symm_apply_apply,
      LinearMap.mulLeft_apply]
    rw [hh, hh', hx]
    unfold InvAlg.herm
    congr 1
    rw [map_mul]
    ring
  refine ⟨LinearMap.toMatrix' f, ?_, ?_⟩
  · ext i j
    have k := key (Pi.single j 1) (Pi.single i 1)
    simp only [stdH] at k
    simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, LinearMap.toMatrix'_apply,
      Matrix.one_apply]
    rw [show (∑ x, K.c (f (Pi.single i 1) x) * f (Pi.single j 1) x)
        = ∑ x, f (Pi.single j 1) x * K.c (f (Pi.single i 1) x) from
        Finset.sum_congr rfl fun _ _ => mul_comm _ _, k]
    simp [Pi.single_apply, eq_comm]
  · apply Matrix.toLin'.injective
    rw [Matrix.toLin'_mul, Matrix.toLin'_mul, Matrix.toLin'_toMatrix']
    refine LinearMap.ext fun a => ?_
    obtain ⟨y, rfl⟩ := ψ'.surjective a
    simp only [hf, LinearMap.comp_apply, LinearEquiv.coe_coe, LinearEquiv.symm_apply_apply,
      LinearMap.mulLeft_apply, Matrix.toLin'_apply]
    rw [← hg, ← hg', LinearEquiv.symm_apply_apply, ← mul_assoc, ← mul_assoc, mul_comm B.g]

end GlobalTheory.InertUnitOrb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelsConjUnitaryOfNormClass =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelsConjUnitaryOfNormClassStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelsConjUnitaryOfNormClassStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumImpo\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelsConjUnitaryOfNormClass\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial Matrix

theorem _root_.GlobalTheory.T.hermitianModels_conj_unitary_of_norm_class : ∀ (K : GlobalTheory.UnitLemma.UQ) (B : GlobalTheory.UnitLemma.InvAlg K) (n : ℕ) (γ γ' : Matrix (Fin n) (Fin n) K.E) (x x' v : B.Aˣ) (ψ ψ' : B.A ≃ₗ[K.E] (Fin n → K.E)), GlobalTheory.InertUnitOrb.IsModel B γ x ψ → GlobalTheory.InertUnitOrb.IsModel B γ' x' ψ' → (x' : B.A) = x * (v * B.σ v) → ∃ u : Matrix (Fin n) (Fin n) K.E, (u.map K.c)ᵀ * u = 1 ∧ γ * u = u * γ' := by
  first | exact @GlobalTheory.InertUnitOrb.conj_of_norm_class | exact GlobalTheory.InertUnitOrb.conj_of_norm_class | (intros; apply GlobalTheory.InertUnitOrb.conj_of_norm_class <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelsConjUnitaryOfNormClassStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHermitianModelOfNormNeZeroStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsModelOfUnitaryStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormMulOfHermitianModelUnitaryConjStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianLatticeLocalUnitaryTwistStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelCharpolyEqAndUnitaryStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HermitianModelsConjUnitaryOfNormClassStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertOrbitalIntegralUnitEqLatticeCountStatement\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLocalRingOfIdem\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeCountAndGramDetSignNormClassStatement\nimport Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.InertUnitOrb
open GlobalTheory.UnitLemma

theorem finsum_match {α β : Type*} (F : α → ℂ) (G : β → ℚ) (Φ : α → β) (P : α → Prop)
    (hF0 : ∀ a, ¬ P a → F a = 0) (hF : ∀ a, P a → F a = G (Φ a))
    (hinj : ∀ a a', P a → P a' → Φ a = Φ a' → a = a') (hsurj : ∀ b, G b ≠ 0 → ∃ a, P a ∧ Φ a = b) :
    ∑ᶠ a, F a = ((∑ᶠ b, G b : ℚ) : ℂ) := by
  have hcast : ((∑ᶠ b, G b : ℚ) : ℂ) = ∑ᶠ b, (G b : ℂ) := by
    by_cases hfin : (Function.support G).Finite
    · simpa using (Rat.castHom ℂ).toAddMonoidHom.map_finsum hfin
    · rw [finsum_of_infinite_support hfin, finsum_of_infinite_support]
      · simp
      · have : Function.support (fun b => (G b : ℂ)) = Function.support G := by
          ext b; simp
        rwa [this]
  have hP : ∀ a, F a ≠ 0 → P a := fun a ha => by by_contra h; exact ha (hF0 a h)
  rw [hcast, ← finsum_mem_support F, ← finsum_mem_support (fun b => (G b : ℂ))]
  apply finsum_mem_eq_of_bijOn Φ
  · refine ⟨?_, ?_, ?_⟩
    · intro a ha
      simp only [Function.mem_support] at ha ⊢
      rwa [hF a (hP a ha)] at ha
    · intro a ha a' ha' h
      exact hinj a a' (hP a ha) (hP a' ha') h
    · intro b hb
      simp only [Function.mem_support, ne_eq, Rat.cast_eq_zero] at hb
      obtain ⟨a, ha, rfl⟩ := hsurj b hb
      refine ⟨a, ?_, rfl⟩
      simp only [Function.mem_support, hF a ha]
      exact_mod_cast hb
  · intro a ha
    exact hF a (hP a ha)

end GlobalTheory.InertUnitOrb

namespace GlobalTheory.InertUnitOrb
open GlobalTheory.UnitLemma

theorem ul_mem_iff {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ} {w : Pl E} (hw : ¬ IsSplitAt w)
    (g : GLw n w) : g ∈ UL n w ↔ (g.val.map (cj w))ᵀ * g.val = 1 := by
  unfold UL
  rw [if_neg hw]
  change cT (cj w) g.val * 1 * g.val = 1 ↔ _
  rw [Matrix.mul_one]
  rfl

theorem kapOrb_unit_eq_kapSum : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : GlobalTheory.UnitLemma.UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → (∀ x, GlobalTheory.UnitLemma.val K.O x = ordL (e x)) → qV E w = K.q ^ 2 → ∀ (n : ℕ) (Q₁ Q₂ : (w.adicCompletion E)[X]), Q₁.Monic → Q₂.Monic → Q₁.natDegree + Q₂.natDegree = n → (Q₁ * Q₂).Separable → IsCsr w Q₁ → IsCsr w Q₂ → ∀ B₁ B₂ : GlobalTheory.UnitLemma.InvAlg K, B₁.g * B₁.σ B₁.g = 1 → B₂.g * B₂.σ B₂.g = 1 → B₁.P = Q₁.map e.symm.toRingHom → B₂.P = Q₂.map e.symm.toRingHom → kapOrb n w Q₁ Q₂ ((KL n w : Set (UL n w)).indicator 1) = (B₁.kapSum B₂ : ℂ) := by
  intro E _ _ _ hU w hw K e he hint hval hq n Q₁ Q₂ hm₁ hm₂ hdeg hsep hc₁ hc₂ B₁ B₂ hu₁ hu₂ hP₁ hP₂
  have hBP : (B₁.prod B₂).P = (Q₁ * Q₂).map e.symm.toRingHom := by
    rw [GlobalTheory.UnitLemma.Orbit.prod_P, hP₁, hP₂, Polynomial.map_mul]
  have hBsep : (B₁.prod B₂).P.Separable := by rw [hBP]; exact hsep.map
  have hBsep' : (B₁.P * B₂.P).Separable := by rw [← GlobalTheory.UnitLemma.Orbit.prod_P]; exact hBsep
  have hBu : (B₁.prod B₂).g * (B₁.prod B₂).σ (B₁.prod B₂).g = 1 := Prod.ext hu₁ hu₂
  have hdim : Module.finrank K.E (B₁.prod B₂).A = n := by
    rw [← LinearMap.charpoly_natDegree (LinearMap.mulLeft K.E (B₁.prod B₂).g)]
    change (B₁.prod B₂).P.natDegree = n
    rw [hBP, natDegree_map_eq_of_injective e.symm.injective, hm₁.natDegree_mul hm₂, hdeg]
  set B := B₁.prod B₂ with hB
  have hcK : ∀ y, K.c (e.symm y) = e.symm (cj w y) := fun y => by
    apply e.injective
    rw [he, RingEquiv.apply_symm_apply, RingEquiv.apply_symm_apply]
  let tr : GLw n w → Matrix (Fin n) (Fin n) K.E := fun γ => γ.val.map e.symm
  have trmul : ∀ a b : GLw n w, tr (a * b) = tr a * tr b := fun a b => by
    ext i j; simp [tr, Matrix.mul_apply, map_sum]
  have trinj : ∀ a b : GLw n w, tr a = tr b → a = b := fun a b h =>
    Units.ext (Matrix.map_injective e.symm.injective h)
  have trU : ∀ γ : UL n w, ((tr γ.1).map K.c)ᵀ * tr γ.1 = 1 := fun γ => by
    have h := (ul_mem_iff hw γ.1).1 γ.2
    have h2 : ((tr γ.1).map K.c)ᵀ = ((γ.1.val.map (cj w))ᵀ).map e.symm := by
      ext i j; simp [tr, hcK]
    rw [h2]
    calc _ = (((γ.1.val.map (cj w))ᵀ * γ.1.val).map e.symm) := by
            ext i j; simp [tr, Matrix.mul_apply, map_sum]
      _ = 1 := by rw [h]; exact Matrix.map_one _ (map_zero _) (map_one _)
  have trcp : ∀ γ : GLw n w, (tr γ).charpoly = γ.val.charpoly.map e.symm.toRingHom := fun γ =>
    Matrix.charpoly_map γ.val e.symm.toRingHom
  have pull : ∀ u : Matrix (Fin n) (Fin n) K.E, (u.map K.c)ᵀ * u = 1 → ∃ g : UL n w, tr g.1 = u := by
    intro u hu
    have h1 : ((u.map e).map (cj w))ᵀ * u.map e = 1 := by
      have h2 : ((u.map e).map (cj w))ᵀ = ((u.map K.c)ᵀ).map e := by
        ext i j; simp [he]
      have h3 := congrArg (fun M => M.map e) hu
      simp only [Matrix.map_one _ (map_zero e) (map_one e)] at h3
      rw [h2, ← h3]
      ext i j; simp [Matrix.mul_apply, map_sum]
    let g : GLw n w := ⟨u.map e, ((u.map e).map (cj w))ᵀ, mul_eq_one_comm.1 h1, h1⟩
    refine ⟨⟨g, (ul_mem_iff hw g).2 h1⟩, ?_⟩
    ext i j; simp [tr, g]
  have hmod : ∀ γ : UL n w, γ.1.val.charpoly = Q₁ * Q₂ →
      ∃ (x : B.Aˣ) (ψ : B.A ≃ₗ[K.E] (Fin n → K.E)), IsModel B (tr γ.1) x ψ :=
    fun γ h => GlobalTheory.T.exists_isModel_of_unitary_charpoly_eq K B n (tr γ.1) (trU γ) hBu hBsep (by rw [trcp, h, hBP])
  have clEq : Equivalence (fun x y : {x : B.Aˣ // B.σ (x : B.A) = x} =>
      ∃ u : B.Aˣ, (y.1 : B.A) = x.1 * (u * B.σ (u : B.A))) := by
    refine ⟨fun x => ⟨1, by simp⟩, ?_, ?_⟩
    · rintro x y ⟨u, hu⟩
      refine ⟨u⁻¹, ?_⟩
      have h1 : ((u⁻¹ : B.Aˣ) : B.A) * (u : B.A) = 1 := Units.inv_mul u
      have h2 : B.σ ((u⁻¹ : B.Aˣ) : B.A) * B.σ (u : B.A) = 1 := by rw [← map_mul, h1, map_one]
      rw [hu]
      linear_combination (-(x.1 : B.A)) * B.σ ((u⁻¹ : B.Aˣ) : B.A) * B.σ (u : B.A) * h1 + (-(x.1 : B.A)) * h2
    · rintro x y z ⟨u, hu⟩ ⟨v, hv⟩
      refine ⟨u * v, ?_⟩
      rw [hv, hu, Units.val_mul, map_mul]; ring
  have twEq : Equivalence (fun x y : UL n w => ∃ g, y = g⁻¹ * x * (MonoidHom.id (UL n w)) g) := by
    refine ⟨fun x => ⟨1, by simp⟩, ?_, ?_⟩
    · rintro x y ⟨g, rfl⟩
      exact ⟨g⁻¹, by simp [mul_assoc]⟩
    · rintro x y z ⟨g, rfl⟩ ⟨h, rfl⟩
      exact ⟨g * h, by simp [mul_assoc]⟩
  let Fv : {x : B.Aˣ // B.σ (x : B.A) = x} → ℚ := fun x => K.eta (B₁.gramDet (x.1 : B.A).1) * B.N (x.1 : B.A)
  have Fv_resp : ∀ a b : {x : B.Aˣ // B.σ (x : B.A) = x},
      (∃ u : B.Aˣ, (b.1 : B.A) = a.1 * (u * B.σ (u : B.A))) → Fv a = Fv b := by
    rintro a b ⟨u, hu⟩
    have e1 := (GlobalTheory.T.latticeCount_and_gramDetSign_norm_class K B (a.1 : B.A) u).1
    have e2 := (GlobalTheory.T.latticeCount_and_gramDetSign_norm_class K B₁ (a.1 : B.A).1 (Units.map (MonoidHom.fst B₁.A B₂.A) u)).2
    simp only [Fv, hu]
    exact (congrArg₂ (· * ·) e2 e1).symm
  have Fv_out : ∀ a, Fv (Quot.out (Quot.mk _ a : B.Cl)) = Fv a := fun a =>
    Fv_resp _ _ (clEq.eqvGen_iff.1 (Quot.eqvGen_exact (Quot.out_eq (Quot.mk _ a : B.Cl))))
  let P : TwCl (MonoidHom.id (UL n w)) → Prop := fun c => c.rep.1.val.charpoly = Q₁ * Q₂
  let Φ : TwCl (MonoidHom.id (UL n w)) → B.Cl := fun c =>
    if h : P c then Quot.mk _ ⟨(hmod c.rep h).choose, (hmod c.rep h).choose_spec.choose_spec.1⟩
    else Quot.mk _ ⟨1, by simp⟩
  unfold kapOrb clSum InvAlg.kapSum
  refine finsum_match _ _ Φ P ?_ ?_ ?_ ?_
  · intro c hc
    exact if_neg hc
  · intro c hc
    have hc' : c.rep ∈ {γ : UL n w | γ.1.val.charpoly = Q₁ * Q₂} := hc
    rw [if_pos hc']
    obtain ⟨ψ, hψ⟩ := (hmod c.rep hc).choose_spec
    have hΦ : Φ c = Quot.mk _ ⟨(hmod c.rep hc).choose, hψ.1⟩ := dif_pos hc
    rw [hΦ]
    change _ = ((Fv (Quot.out (Quot.mk _ _ : B.Cl)) : ℚ) : ℂ)
    rw [Fv_out]
    beta_reduce
    rw [GlobalTheory.T.hermitian_lattice_local_unitary_twist E hU w hw K e he hval n Q₁ B₁ B₂ hBsep' hP₁ c.rep.1 _ ψ hψ,
      GlobalTheory.T.inert_orbitalIntegral_unit_eq_lattice_count E hU w hw K e he hint n B hBsep c.rep _ ψ hψ]
    simp only [Fv]
    push_cast
    rfl
  · intro c c' hc hc' h
    obtain ⟨ψ, hψ⟩ := (hmod c.rep hc).choose_spec
    obtain ⟨ψ', hψ'⟩ := (hmod c'.rep hc').choose_spec
    have hΦ : Φ c = Quot.mk _ ⟨(hmod c.rep hc).choose, hψ.1⟩ := dif_pos hc
    have hΦ' : Φ c' = Quot.mk _ ⟨(hmod c'.rep hc').choose, hψ'.1⟩ := dif_pos hc'
    rw [hΦ, hΦ'] at h
    obtain ⟨v, hv⟩ := clEq.eqvGen_iff.1 (Quot.eqvGen_exact h)
    obtain ⟨u, hu, hγu⟩ := GlobalTheory.T.hermitianModels_conj_unitary_of_norm_class K B n _ _ _ _ v ψ ψ' hψ hψ' hv
    obtain ⟨g, rfl⟩ := pull u hu
    have hcomm : c.rep * g = g * c'.rep := by
      apply Subtype.ext
      apply trinj
      rw [Subgroup.coe_mul, Subgroup.coe_mul, trmul, trmul]
      exact hγu
    rw [← Quot.out_eq c, ← Quot.out_eq c']
    refine Quot.sound ⟨g, ?_⟩
    change c'.rep = g⁻¹ * c.rep * g
    rw [mul_assoc, hcomm, ← mul_assoc, inv_mul_cancel, one_mul]
  · intro k hk
    set a := Quot.out k with ha
    have hk' : Fv a ≠ 0 := hk
    have hN : B.N (a.1 : B.A) ≠ 0 := (mul_ne_zero_iff.1 hk').2
    obtain ⟨γm, ψ, hψ⟩ := GlobalTheory.T.exists_hermitianModel_of_norm_ne_zero K B n a.1 hdim a.2 hN
    obtain ⟨hcpm, hunm⟩ := GlobalTheory.T.hermitianModel_charpoly_eq_and_unitary K B n γm a.1 ψ hψ
    obtain ⟨γ, hγ⟩ := pull γm (hunm hBu)
    have hcpγ : γ.1.val.charpoly = Q₁ * Q₂ := by
      apply Polynomial.map_injective e.symm.toRingHom e.symm.injective
      rw [← trcp, hγ, hcpm, hBP]
    let c : TwCl (MonoidHom.id (UL n w)) := Quot.mk _ γ
    obtain ⟨g, hg⟩ := twEq.eqvGen_iff.1
      (Quot.eqvGen_exact (Quot.out_eq c : Quot.mk _ (Quot.out c) = Quot.mk _ γ))
    simp only [MonoidHom.id_apply] at hg
    have hcr : c.rep = g * γ * g⁻¹ := by
      change Quot.out c = g * γ * g⁻¹
      rw [hg]; group
    have hPc : P c := by
      change c.rep.1.val.charpoly = Q₁ * Q₂
      rw [hcr]
      simp only [Subgroup.coe_mul, Subgroup.coe_inv, Units.val_mul, Matrix.coe_units_inv]
      rw [← hcpγ]
      exact Matrix.charpoly_units_conj (g.1) γ.1.val
    refine ⟨c, hPc, ?_⟩
    obtain ⟨ψc, hψc⟩ := (hmod c.rep hPc).choose_spec
    have hΦ : Φ c = Quot.mk _ ⟨(hmod c.rep hPc).choose, hψc.1⟩ := dif_pos hPc
    rw [hΦ]
    have hgu : γ * g⁻¹ = g⁻¹ * c.rep := by rw [hcr]; group
    obtain ⟨v, hv⟩ := GlobalTheory.T.exists_norm_mul_of_hermitianModel_unitary_conj K B n γm (tr c.rep.1) (tr (g⁻¹).1) a.1 _ ψ ψc hψ hψc (trU g⁻¹)
      (by rw [← hγ, ← trmul, ← trmul, ← Subgroup.coe_mul, ← Subgroup.coe_mul, hgu]) hBsep
    rw [← Quot.out_eq k]
    exact (Quot.sound ⟨v, hv⟩).symm

end GlobalTheory.InertUnitOrb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem _root_.GlobalTheory.T.inertPlace_kappaOrbital_unit_eq_signedLatticeSum : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (K : GlobalTheory.UnitLemma.UQ) (e : K.E ≃+* w.adicCompletion E), (∀ x, e (K.c x) = cj w (e x)) → (∀ x, x ∈ (algebraMap K.O K.E).range ↔ Valued.v (e x) ≤ 1) → (∀ x, GlobalTheory.UnitLemma.val K.O x = ordL (e x)) → qV E w = K.q ^ 2 → ∀ (n : ℕ) (Q₁ Q₂ : (w.adicCompletion E)[X]), Q₁.Monic → Q₂.Monic → Q₁.natDegree + Q₂.natDegree = n → (Q₁ * Q₂).Separable → IsCsr w Q₁ → IsCsr w Q₂ → ∀ B₁ B₂ : GlobalTheory.UnitLemma.InvAlg K, B₁.g * B₁.σ B₁.g = 1 → B₂.g * B₂.σ B₂.g = 1 → B₁.P = Q₁.map e.symm.toRingHom → B₂.P = Q₂.map e.symm.toRingHom → kapOrb n w Q₁ Q₂ ((KL n w : Set (UL n w)).indicator 1) = (B₁.kapSum B₂ : ℂ) := by
  first | exact @GlobalTheory.InertUnitOrb.kapOrb_unit_eq_kapSum | exact GlobalTheory.InertUnitOrb.kapOrb_unit_eq_kapSum | (intros; apply GlobalTheory.InertUnitOrb.kapOrb_unit_eq_kapSum <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnitaryGroupEveryResidueOfLieStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnitaryGroupEveryResidueOfLieStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnitaryGroupEveryResidueOfLie\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial

theorem _root_.GlobalTheory.T.unitLemma_unitary_group_every_residue_of_lie : UnitLemmaLie → ∀ (K : UQ) (B₁ B₂ : InvAlg K), B₁.g * B₁.σ B₁.g = 1 → B₂.g * B₂.σ B₂.g = 1 → (B₁.P * B₂.P).Separable → InvAlg.Identity B₁ B₂ := by
  first | exact @GlobalTheory.UnitLemma.OrbitAll.identity_of_lie | exact GlobalTheory.UnitLemma.OrbitAll.identity_of_lie | (intros; apply GlobalTheory.UnitLemma.OrbitAll.identity_of_lie <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnitaryGroupEveryResidueOfLieStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnramifiedProductUnitaryGroups =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnramifiedProductUnitaryGroups", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnitaryGroupEveryResidueOfLieStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JacquetRallisUnitMatchAllRanksStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitLemmaLieAlgebraUnitaryGroupOfJacquetRallisStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial

namespace GlobalTheory.UnitLemma

theorem unitLemma_identity_unconditional :
    ∀ (K : UQ) (B₁ B₂ : InvAlg K), B₁.g * B₁.σ B₁.g = 1 → B₂.g * B₂.σ B₂.g = 1 →
      (B₁.P * B₂.P).Separable → InvAlg.Identity B₁ B₂ :=
  GlobalTheory.T.unitLemma_unitary_group_every_residue_of_lie (GlobalTheory.T.unitLemma_lieAlgebra_unitaryGroup_of_jacquetRallis GlobalTheory.T.jacquetRallisUnitMatch_all_ranks).1

end GlobalTheory.UnitLemma
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnramifiedProductUnitaryGroups =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnramifiedProductUnitaryGroupsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnramifiedProductUnitaryGroupsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnitLemmaGroup\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnramifiedProductUnitaryGroups\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.UnitLemma Polynomial

theorem _root_.GlobalTheory.T.unitLemma_unramified_product_unitary_groups : ∀ (K : UQ) (B₁ B₂ : InvAlg K), B₁.g * B₁.σ B₁.g = 1 → B₂.g * B₂.σ B₂.g = 1 → (B₁.P * B₂.P).Separable → InvAlg.Identity B₁ B₂ := by
  first | exact @GlobalTheory.UnitLemma.unitLemma_identity_unconditional | exact GlobalTheory.UnitLemma.unitLemma_identity_unconditional | (intros; apply GlobalTheory.UnitLemma.unitLemma_identity_unconditional <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnramifiedProductUnitaryGroupsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralProductGroupStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralProductGroupStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralProductGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC GlobalTheory.BCT
open scoped Classical TensorProduct

theorem _root_.GlobalTheory.T.twistedOrbitalIntegral_productGroup : ∀ (G G' : Type) [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [T2Space G] [Group G'] [TopologicalSpace G'] [IsTopologicalGroup G'] [T2Space G'] (θ : G →* G) (θ' : G' →* G') (K : Subgroup G) (K' : Subgroup G') (δ : G) (δ' : G') (f : G → ℂ) (f' : G' → ℂ), (∀ x : G, (rStab fun k : K => f ((x * k)⁻¹ * δ * θ (x * k))).index ≠ 0) → (∀ x : G', (rStab fun k : K' => f' ((x * k)⁻¹ * δ' * θ' (x * k))).index ≠ 0) → {q : DoubleCoset.Quotient (twCent θ δ : Set G) (K : Set G) | ∃ k ∈ K, f ((Quotient.out q * k)⁻¹ * δ * θ (Quotient.out q * k)) ≠ 0}.Finite → {q : DoubleCoset.Quotient (twCent θ' δ' : Set G') (K' : Set G') | ∃ k ∈ K', f' ((Quotient.out q * k)⁻¹ * δ' * θ' (Quotient.out q * k)) ≠ 0}.Finite → twOrb (θ.prodMap θ') (K.prod K') (δ, δ') (fun y => f y.1 * f' y.2) = twOrb θ K δ f * twOrb θ' K' δ' f' := by
  first | exact @GlobalTheory.BCT.OrbProd.twOrb_prod | exact GlobalTheory.BCT.OrbProd.twOrb_prod | (intros; apply GlobalTheory.BCT.OrbProd.twOrb_prod <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralProductGroupStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharpolyNrmLConj =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharpolyNrmLConj", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Definitions.Divisors.T2SpaceGeneralLinearGroup\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteTwistedClassesCharpoly\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalTwistContinuousInvolutionIntegralProperties\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RegularTwistedOrbitLocalFinitenessStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralProductGroupStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedOrbitalIntegralTwistedConjInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.BCT.UnitProd

private theorem equivalence_twisted_conj {G : Type} [Group G] (θ : G →* G) :
    Equivalence (fun x y : G => ∃ g, y = g⁻¹ * x * θ g) := by
  constructor
  · intro x
    exact ⟨1, by simp⟩
  · rintro x y ⟨g, rfl⟩
    exact ⟨g⁻¹, by rw [map_inv]; group⟩
  · rintro x y z ⟨g, rfl⟩ ⟨h, rfl⟩
    exact ⟨g * h, by rw [map_mul]; group⟩

theorem rep_mk {G : Type} [Group G] (θ : G →* G) (x : G) :
    ∃ g, TwCl.rep (θ := θ) (Quot.mk _ x) = g⁻¹ * x * θ g := by
  unfold TwCl.rep
  have h := Quot.eqvGen_exact (Quot.out_eq (Quot.mk (fun x y : G => ∃ g, y = g⁻¹ * x * θ g) x))
  rw [Equivalence.eqvGen_iff (equivalence_twisted_conj θ)] at h
  exact (equivalence_twisted_conj θ).symm h

theorem mk_rep {G : Type} [Group G] {θ : G →* G} (c : TwCl θ) : (Quot.mk _ c.rep : TwCl θ) = c := by
  unfold TwCl.rep
  exact Quot.out_eq c

noncomputable def clsEquiv {G G' : Type} [Group G] [Group G'] (θ : G →* G) (θ' : G' →* G') :
    TwCl θ × TwCl θ' ≃ TwCl (θ.prodMap θ') where
  toFun p := Quot.mk _ (p.1.rep, p.2.rep)
  invFun c := (Quot.mk _ c.rep.1, Quot.mk _ c.rep.2)
  left_inv p := by
    obtain ⟨g, hg⟩ := rep_mk (θ.prodMap θ') (p.1.rep, p.2.rep)
    refine Prod.ext ?_ ?_
    · refine Eq.trans (Quot.sound ⟨g.1, ?_⟩).symm (mk_rep p.1)
      exact congrArg Prod.fst hg
    · refine Eq.trans (Quot.sound ⟨g.2, ?_⟩).symm (mk_rep p.2)
      exact congrArg Prod.snd hg
  right_inv c := by
    obtain ⟨g, hg⟩ := rep_mk θ c.rep.1
    obtain ⟨g', hg'⟩ := rep_mk θ' c.rep.2
    refine Eq.trans (Quot.sound ⟨(g, g'), ?_⟩).symm (mk_rep c)
    refine Prod.ext ?_ ?_
    · simp [hg]
    · simp [hg']

theorem ind_conj {G : Type} [Group G] (θ : G →* G) (K : Subgroup G) (hK : ∀ k ∈ K, θ k ∈ K) (δ x k : G) (hk : k ∈ K) :
    (x * k)⁻¹ * δ * θ (x * k) ∈ K ↔ x⁻¹ * δ * θ x ∈ K := by

  have e : (x * k)⁻¹ * δ * θ (x * k) = k⁻¹ * (x⁻¹ * δ * θ x) * θ k := by
    rw [map_mul]; group
  rw [e, K.mul_mem_cancel_right (hK k hk), K.mul_mem_cancel_left (K.inv_mem hk)]

theorem index_ne {G : Type} [Group G] (θ : G →* G) (K : Subgroup G) (hK : ∀ k ∈ K, θ k ∈ K) (δ x : G) :
    (rStab fun k : K => (K : Set G).indicator (1 : G → ℂ) ((x * k)⁻¹ * δ * θ (x * k))).index ≠ 0 := by

  have htop : rStab (fun k : K => (K : Set G).indicator (1 : G → ℂ) ((x * k)⁻¹ * δ * θ (x * k))) = ⊤ := by
    ext k
    simp only [Subgroup.mem_top, iff_true]
    rw [GlobalTheory.TwOrbConj.mem_rStab]
    intro y
    simp only [Subgroup.coe_mul, ← mul_assoc]
    rw [Set.indicator_apply, Set.indicator_apply]
    simp only [SetLike.mem_coe, ind_conj θ K hK δ (x * y) k k.2, Pi.one_apply]
  rw [htop, Subgroup.index_top]
  exact one_ne_zero

theorem clSum_prod {G G' : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [T2Space G] [Group G']
    [TopologicalSpace G'] [IsTopologicalGroup G'] [T2Space G'] (θ : G →* G) (θ' : G' →* G') (K : Subgroup G)
    (K' : Subgroup G') (S : Set G) (S' : Set G') (hK : ∀ k ∈ K, θ k ∈ K) (hK' : ∀ k ∈ K', θ' k ∈ K')
    (hS : ∀ g y, g⁻¹ * y * θ g ∈ S ↔ y ∈ S) (hS' : ∀ g y, g⁻¹ * y * θ' g ∈ S' ↔ y ∈ S')
    (hf : {c : TwCl θ | c.rep ∈ S}.Finite) (hf' : {c : TwCl θ' | c.rep ∈ S'}.Finite)
    (hd : ∀ y ∈ S, {q : DoubleCoset.Quotient (twCent θ y : Set G) (K : Set G) |
      (Quotient.out q)⁻¹ * y * θ (Quotient.out q) ∈ K}.Finite)
    (hd' : ∀ y ∈ S', {q : DoubleCoset.Quotient (twCent θ' y : Set G') (K' : Set G') |
      (Quotient.out q)⁻¹ * y * θ' (Quotient.out q) ∈ K'}.Finite) :
    clSum (θ.prodMap θ') (K.prod K') {y | y.1 ∈ S ∧ y.2 ∈ S'} 1 (((K.prod K' : Subgroup _) : Set _).indicator 1) =
      clSum θ K S 1 ((K : Set G).indicator 1) * clSum θ' K' S' 1 ((K' : Set G').indicator 1) := by
  unfold clSum
  simp only [Pi.one_apply, one_mul]

  have hKK : ∀ k ∈ K.prod K', (θ.prodMap θ') k ∈ K.prod K' := fun k hk =>
    Subgroup.mem_prod.mpr ⟨hK _ (Subgroup.mem_prod.mp hk).1, hK' _ (Subgroup.mem_prod.mp hk).2⟩
  have hind : (((K.prod K' : Subgroup _) : Set (G × G')).indicator (1 : G × G' → ℂ)) =
      fun y => (K : Set G).indicator 1 y.1 * (K' : Set G').indicator 1 y.2 := by
    funext y
    by_cases h1 : y.1 ∈ K <;> by_cases h2 : y.2 ∈ K' <;>
      simp [Subgroup.mem_prod, h1, h2]
  have hfin : ∀ {H : Type} [Group H] (φ : H →* H) (L : Subgroup H) (hL : ∀ k ∈ L, φ k ∈ L) (T : Set H)
      (hT : ∀ y ∈ T, {q : DoubleCoset.Quotient (twCent φ y : Set H) (L : Set H) |
        (Quotient.out q)⁻¹ * y * φ (Quotient.out q) ∈ L}.Finite) (y : H), y ∈ T →
      {q : DoubleCoset.Quotient (twCent φ y : Set H) (L : Set H) |
        ∃ k ∈ L, (L : Set H).indicator (1 : H → ℂ) ((Quotient.out q * k)⁻¹ * y * φ (Quotient.out q * k)) ≠ 0}.Finite := by
    intro H _ φ L hL T hT y hy
    refine (hT y hy).subset ?_
    rintro q ⟨k, hk, hne⟩
    by_contra hq
    apply hne
    rw [Set.indicator_apply, if_neg]
    rw [SetLike.mem_coe, ind_conj φ L hL _ _ k hk]
    exact hq
  have hprod : ∀ p : TwCl θ × TwCl θ',
      (if (clsEquiv θ θ' p).rep ∈ {y : G × G' | y.1 ∈ S ∧ y.2 ∈ S'} then
        twOrb (θ.prodMap θ') (K.prod K') (clsEquiv θ θ' p).rep (((K.prod K' : Subgroup _) : Set _).indicator 1)
        else 0) =
      (if p.1.rep ∈ S then twOrb θ K p.1.rep ((K : Set G).indicator 1) else 0) *
      (if p.2.rep ∈ S' then twOrb θ' K' p.2.rep ((K' : Set G').indicator 1) else 0) := by
    intro p
    obtain ⟨g, hg⟩ := rep_mk (θ.prodMap θ') (p.1.rep, p.2.rep)
    have e : (clsEquiv θ θ' p).rep = g⁻¹ * (p.1.rep, p.2.rep) * (θ.prodMap θ') g := hg
    have hmem : g⁻¹ * (p.1.rep, p.2.rep) * (θ.prodMap θ') g ∈ {y : G × G' | y.1 ∈ S ∧ y.2 ∈ S'} ↔
        p.1.rep ∈ S ∧ p.2.rep ∈ S' := by
      show g.1⁻¹ * p.1.rep * θ g.1 ∈ S ∧ g.2⁻¹ * p.2.rep * θ' g.2 ∈ S' ↔ _
      rw [hS, hS']
    rw [e, GlobalTheory.TwOrbConj.twOrb_twConj (G × G') (θ.prodMap θ') (K.prod K') (p.1.rep, p.2.rep) g _
      (fun x => index_ne (θ.prodMap θ') (K.prod K') hKK _ x)]
    by_cases h1 : p.1.rep ∈ S <;> by_cases h2 : p.2.rep ∈ S'
    · simp only [hmem, h1, h2, and_self, if_true]
      rw [hind]
      exact GlobalTheory.T.twistedOrbitalIntegral_productGroup G G' θ θ' K K' _ _ _ _ (fun x => index_ne θ K hK _ x) (fun x => index_ne θ' K' hK' _ x)
        (hfin θ K hK S hd _ h1) (hfin θ' K' hK' S' hd' _ h2)
    · rw [if_neg fun h => h2 (hmem.mp h).2, if_neg h2, mul_zero]
    · rw [if_neg fun h => h1 (hmem.mp h).1, if_neg h1, zero_mul]
    · rw [if_neg fun h => h1 (hmem.mp h).1, if_neg h1, zero_mul]
  have hs1 : (Function.support fun c : TwCl θ =>
      if c.rep ∈ S then twOrb θ K c.rep ((K : Set G).indicator 1) else 0).Finite := by
    refine hf.subset fun c hc => ?_
    by_contra h
    apply hc
    change ¬ c.rep ∈ S at h
    simp [h]
  have hs2 : (Function.support fun c : TwCl θ' =>
      if c.rep ∈ S' then twOrb θ' K' c.rep ((K' : Set G').indicator 1) else 0).Finite := by
    refine hf'.subset fun c hc => ?_
    by_contra h
    apply hc
    change ¬ c.rep ∈ S' at h
    simp [h]
  rw [← finsum_comp_equiv (clsEquiv θ θ')]
  refine (finsum_congr hprod).trans ?_
  rw [finsum_curry _ ((hs1.prod hs2).subset fun p hp => ⟨left_ne_zero_of_mul hp, right_ne_zero_of_mul hp⟩),
    finsum_mul]
  refine finsum_congr fun c => ?_
  rw [mul_finsum]

theorem charpoly_nrmL_conj {E : Type} [Field E] [NumberField E] [IsCMField E] (hE : Unr E) (n : ℕ) (w : Pl E)
    (g y : GLw n w) : (nrmL n w (g⁻¹ * y * thL n w g)).val.charpoly = (nrmL n w y).val.charpoly := by
  rw [GlobalTheory.BCT.ThBasic.nrmL_twist hE, Units.val_mul, Units.val_mul, Matrix.coe_units_inv]
  exact Matrix.charpoly_units_conj' _ _

theorem stTw2_unit : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (a b : ℕ) (w : Pl E), ¬ IsSplitAt w → ∀ Q₁ Q₂ : (w.adicCompletion E)[X], Q₁.Separable → Q₂.Separable → stTw2 a b w Q₁ Q₂ ((((GlobalTheory.LFun.KGL w (n := a)).prod (GlobalTheory.LFun.KGL w (n := b)) : Subgroup _) : Set _).indicator 1) = stTw a w Q₁ ((GlobalTheory.LFun.KGL w (n := a) : Set (GLw a w)).indicator 1) * stTw b w Q₂ ((GlobalTheory.LFun.KGL w (n := b) : Set (GLw b w)).indicator 1) := by
  intro E _ _ _ hE a b w hw Q₁ Q₂ h₁ h₂
  unfold stTw2 stTw
  have hL : ∀ m : ℕ, IsLevel (thL m w) (GlobalTheory.LFun.KGL w (n := m)) (GlobalTheory.LFun.KGL w (n := m)) := by
    intro m
    unfold IsLevel
    exact ⟨(GlobalTheory.BCT.ThBasic.twist_basic E hE m w).2.2.2.2.1, le_rfl,
      fun k hk => GlobalTheory.BCT.ThBasic.thL_mem_KGL hE m w k hk⟩
  have hS : ∀ (m : ℕ) (Q : (w.adicCompletion E)[X]) (g y : GLw m w),
      g⁻¹ * y * thL m w g ∈ {y : GLw m w | (nrmL m w y).val.charpoly = Q} ↔
        y ∈ {y : GLw m w | (nrmL m w y).val.charpoly = Q} := by
    intro m Q g y
    show _ = Q ↔ _ = Q
    rw [charpoly_nrmL_conj hE]
  have hd : ∀ (m : ℕ) (Q : (w.adicCompletion E)[X]), Q.Separable →
      ∀ y ∈ {y : GLw m w | (nrmL m w y).val.charpoly = Q},
        {q : DoubleCoset.Quotient (twCent (thL m w) y : Set (GLw m w)) (GlobalTheory.LFun.KGL w (n := m) : Set (GLw m w)) |
          (Quotient.out q)⁻¹ * y * thL m w (Quotient.out q) ∈ GlobalTheory.LFun.KGL w (n := m)}.Finite := by
    intro m Q hQ y hy
    have hy' : (nrmL m w y).val.charpoly = Q := hy
    exact (GlobalTheory.T.regularTwistedOrbit_local_finiteness E hE m w y (hy' ▸ hQ) _ (hL m)).2 _ (GlobalTheory.BCT.ThBasic.twist_basic E hE m w).2.2.2.2.2.1
  exact clSum_prod (thL a w) (thL b w) _ _ _ _ (GlobalTheory.BCT.ThBasic.thL_mem_KGL hE a w)
    (GlobalTheory.BCT.ThBasic.thL_mem_KGL hE b w) (hS a Q₁) (hS b Q₂) (GlobalTheory.BCT.ClsFin.classes_finite E hE a w Q₁ h₁).1
    (GlobalTheory.BCT.ClsFin.classes_finite E hE b w Q₂ h₂).1 (hd a Q₁ h₁) (hd b Q₂ h₂)

end GlobalTheory.BCT.UnitProd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharpolyNrmLConj =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriTrivialCase.IwahoriTrivialLemmas.UnitProductIndicatorTwist =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriTrivialCase.IwahoriTrivialLemmas.UnitProductIndicatorTwist", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CharpolyNrmLConj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem PositivityTheory.BcbA.Ties.unit_product_indicator_twist : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (a b : ℕ) (w : Pl E), ¬ IsSplitAt w → ∀ Q₁ Q₂ : (w.adicCompletion E)[X], Q₁.Separable → Q₂.Separable → stTw2 a b w Q₁ Q₂ ((((GlobalTheory.LFun.KGL w (n := a)).prod (GlobalTheory.LFun.KGL w (n := b)) : Subgroup _) : Set _).indicator 1) = stTw a w Q₁ ((GlobalTheory.LFun.KGL w (n := a) : Set (GLw a w)).indicator 1) * stTw b w Q₂ ((GlobalTheory.LFun.KGL w (n := b) : Set (GLw b w)).indicator 1) :=
  GlobalTheory.BCT.UnitProd.stTw2_unit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriTrivialCase.IwahoriTrivialLemmas.UnitProductIndicatorTwist =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.MultiplicityOneBase.ArchimedeanBaseChangeFirst =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.MultiplicityOneBase.ArchimedeanBaseChangeFirst", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.SymIdx\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUnramifiedQuadraticDatumAtInertPlaceStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceKappaOrbitalUnitEqSignedLatticeSumStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPlaceStableTwistedOrbitalUnitEqLatticeSumStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitLemmaUnramifiedProductUnitaryGroupsStatement\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriTrivialCase.IwahoriTrivialLemmas.UnitProductIndicatorTwist\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial Filter GlobalTheory.CuspRep GlobalTheory.PRep Formalism.UG Formalism.BasicNotions GlobalTheory.UnitaryBC Formalism.L2.Host GlobalTheory.BCT
open scoped Classical TensorProduct

theorem PositivityTheory.Rg.Bc.ArchbcB.B.archimedean_base_change_first : PositivityTheory.Rg.Bc.ArchbcB.B.M1 := by
  intro E _ _ _ hE w hw n a b hab Q₁ Q₂ hm₁ hm₂ hd₁ hd₂ hsep hc₁ hc₂
  obtain ⟨K, e, he1, he2, he3, he4⟩ := GlobalTheory.T.exists_unramifiedQuadraticDatum_at_inertPlace E hE w hw
  have hs₁ : Q₁.Separable := hsep.of_mul_left
  have hs₂ : Q₂.Separable := hsep.of_mul_right
  obtain ⟨B₁, hg₁, hP₁, hst₁⟩ := GlobalTheory.T.inertPlace_stableTwistedOrbital_unit_eq_latticeSum E hE w hw K e he1 he2 he3 he4 a Q₁ hm₁ hd₁ hs₁ hc₁
  obtain ⟨B₂, hg₂, hP₂, hst₂⟩ := GlobalTheory.T.inertPlace_stableTwistedOrbital_unit_eq_latticeSum E hE w hw K e he1 he2 he3 he4 b Q₂ hm₂ hd₂ hs₂ hc₂
  have hk := GlobalTheory.T.inertPlace_kappaOrbital_unit_eq_signedLatticeSum E hE w hw K e he1 he2 he3 he4 n Q₁ Q₂ hm₁ hm₂ (by omega) hsep hc₁ hc₂ B₁ B₂ hg₁ hg₂ hP₁ hP₂
  have hsepP : (B₁.P * B₂.P).Separable := by
    rw [hP₁, hP₂, ← Polynomial.map_mul]
    exact hsep.map
  have hid := GlobalTheory.T.unitLemma_unramified_product_unitary_groups K B₁ B₂ hg₁ hg₂ hsepP
  unfold GlobalTheory.UnitLemma.InvAlg.Identity at hid
  have hv : GlobalTheory.UnitLemma.val K.O (resultant B₁.P B₂.P) = ordL (resultant Q₁ Q₂) := by
    rw [he3, hP₁, hP₂]
    have h1 : (Q₁.map e.symm.toRingHom).natDegree = Q₁.natDegree :=
      Polynomial.natDegree_map_eq_of_injective e.symm.injective _
    have h2 : (Q₂.map e.symm.toRingHom).natDegree = Q₂.natDegree :=
      Polynomial.natDegree_map_eq_of_injective e.symm.injective _
    rw [h1, h2, Polynomial.resultant_map_map]
    simp
  rw [PositivityTheory.BcbA.Ties.unit_product_indicator_twist E hE a b w hw Q₁ Q₂ hs₁ hs₂, hst₁, hst₂, hk, ← Rat.cast_mul, ← hid, Rat.cast_mul]
  congr 1
  rw [hv]
  unfold delta absHalf
  rw [if_neg hw, he4]
  set v := ordL (resultant Q₁ Q₂)
  have hq : Real.sqrt (((K.q ^ 2 : ℕ) : ℝ) ^ (-v)) = (K.q : ℝ) ^ (-v) := by
    rw [Nat.cast_pow, ← zpow_natCast, ← _root_.zpow_mul, mul_comm, _root_.zpow_mul, zpow_natCast]
    exact Real.sqrt_sq (zpow_nonneg (Nat.cast_nonneg _) _)
  rw [hq]
  push_cast
  rw [neg_eq_neg_one_mul, mul_zpow, ← _root_.inv_zpow', inv_neg_one]

theorem PositivityTheory.Rg.Bc.ArchbcB.B.m1 : PositivityTheory.Rg.Bc.ArchbcB.B.M1 :=
  PositivityTheory.Rg.Bc.ArchbcB.B.archimedean_base_change_first
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.MultiplicityOneBase.ArchimedeanBaseChangeFirst =====
