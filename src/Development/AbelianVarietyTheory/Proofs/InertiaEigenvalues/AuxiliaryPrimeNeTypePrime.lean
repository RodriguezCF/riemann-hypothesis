module

public import Development.AbelianVarietyTheory.Definitions.Divisors.EntireEqOfHalfPlane
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeOfMemChiGridBadPlaces
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotTeichTrivOfIsDelta
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitsInCMFieldPlaceBelowOfCompletelySplit
public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.RingTheory.DedekindDomain.Ideal.Lemmas
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PositionOfIntro
public import Formalism.SharpRestriction.Divisibility.AbsolutelyIrreducibleSpan
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlacesOkOfModEqOne
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AlgebraicHeckeCharValuesInNumberField
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsColumnInputAssembled
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsRationalUnitaryDeterminantMapRationalUnitaryTo
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PlacesBelowSplitCoprimeConductorOfAdmissible
import Formalism.FrobeniusOrbits.Statement
import Formalism.LocalRingCardinality.SpanPowerMembership.HasStrictFDerivAtExpZero
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousOfTameLoc
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HostCmEmbeddingProperties
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnderEqIffConjPl
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ValuedPowSubOneLtOne
import Formalism.LocalToGlobal.Columns.AdelicLemmas
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicArithmetic.CyclotomicBounds.RamifiedDiscriminants.CondSq
import Mathlib.Algebra.AffineMonoid.Basic
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.RingTheory.WittVector.IsPoly
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCommonField
import Development.AutomorphicArithmetic.CyclotomicBounds.RootsOfUnity.WAddOneLtOfDvd
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.HostFacts
import Mathlib.Algebra.Order.Star.Rat
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic
import Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAuxiliaryHyperbolicVectors, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAuxiliaryHeckeCharacterTrivialTamePart, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeightOneMem, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AuxiliaryPrimeNeTypePrime

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAuxiliaryHyperbolicVectors =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAuxiliaryHyperbolicVectors", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.EntireEqOfHalfPlane\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsRationalUnitaryDeterminantMapRationalUnitaryTo\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeOfMemChiGridBadPlaces\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.PlacesBelowSplitCoprimeConductorOfAdmissible\nimport Formalism.FrobeniusOrbits.Statement\nimport Formalism.LocalRingCardinality.SpanPowerMembership.HasStrictFDerivAtExpZero\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LamTie.AuxiliaryPrimeFunction

section General

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.FrobeniusOrbits Neutral.B1 Formalism.L2.Host GlobalTheory.Mem.Chr GlobalTheory.GridChars GlobalTheory.CMVal

variable {L : Type} [Field L] [NumberField L]

theorem expAt_succ {χ : Formalism.L2.Host.HChar L} {v : HeightOneSpectrum (𝓞 L)} {n : ℕ} (h1 : χ.LevelLe v (n + 1))
    (h2 : ¬ χ.LevelLe v n) : ExpAt χ v (n + 1) := by
  have mono : ∀ a b : ℕ, a ≤ b → χ.LevelLe v a → χ.LevelLe v b := fun a b hab h x hx hx' =>
    h x hx (hx'.trans (WithZero.exp_le_exp.2 (by omega)))
  intro m
  refine ⟨fun h => ?_, fun h => mono _ _ h h1⟩
  by_contra hm
  exact h2 (mono _ _ (by omega) h)

theorem finite_over {p : ℕ} (hp : p.Prime) : {w : HeightOneSpectrum (𝓞 L) | (p : 𝓞 L) ∈ w.asIdeal}.Finite := by
  have h : Ideal.span {(p : 𝓞 L)} ≠ ⊥ := by
    rw [Ne, Ideal.span_singleton_eq_bot]; exact_mod_cast hp.ne_zero
  refine (Ideal.finite_factors h).subset fun w hw => ?_
  exact Ideal.dvd_span_singleton.2 hw

theorem prime_eq {w : HeightOneSpectrum (𝓞 L)} {p q : ℕ} (hp : p.Prime) (hq : q.Prime) (h1 : (p : 𝓞 L) ∈ w.asIdeal)
    (h2 : (q : 𝓞 L) ∈ w.asIdeal) : p = q := by
  by_contra hne
  have hc : IsCoprime (p : 𝓞 L) (q : 𝓞 L) := Nat.Coprime.cast ((Nat.coprime_primes hp hq).2 hne)
  obtain ⟨a, b, hab⟩ := hc
  exact w.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 (hab ▸ add_mem (Ideal.mul_mem_left _ _ h1) (Ideal.mul_mem_left _ _ h2)))

theorem natCast_mem_of_under {F : Type} [Field F] [NumberField F] [Algebra F L] {w w' : HeightOneSpectrum (𝓞 L)}
    (h : w.under (𝓞 F) = w'.under (𝓞 F)) {p : ℕ} (hp : (p : 𝓞 L) ∈ w.asIdeal) : (p : 𝓞 L) ∈ w'.asIdeal := by
  have key : ∀ u : HeightOneSpectrum (𝓞 L), (p : 𝓞 F) ∈ (u.under (𝓞 F)).asIdeal ↔ (p : 𝓞 L) ∈ u.asIdeal := fun u => by
    change algebraMap (𝓞 F) (𝓞 L) _ ∈ u.asIdeal ↔ _
    rw [map_natCast]
  exact (key w').1 (h ▸ (key w).2 hp)

end General

open NumberField IsDedekindDomain ReciprocityTheory.Gal Formalism.ConjugateSelfDual Formalism.BasicNotions Formalism.MainNotions Formalism.FrobeniusOrbits Formalism.L2.Host GlobalTheory.CMVal GlobalTheory.ToricDenom GlobalTheory.LamTie

end GlobalTheory.LamTie.AuxiliaryPrimeFunction
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAuxiliaryHyperbolicVectors =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAuxiliaryHeckeCharacterTrivialTamePart =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAuxiliaryHeckeCharacterTrivialTamePart", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotTeichTrivOfIsDelta\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeOfMemChiGridBadPlaces\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAuxiliaryHyperbolicVectors\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitsInCMFieldPlaceBelowOfCompletelySplit\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousOfTameLoc\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HostCmEmbeddingProperties\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.UnderEqIffConjPl\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ValuedPowSubOneLtOne\nimport Formalism.LocalToGlobal.Columns.AdelicLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LamTie.TeichEx

section General

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.FrobeniusOrbits Neutral.B1 Formalism.L2.Host GlobalTheory.Mem.Chr GlobalTheory.GridChars GlobalTheory.CMVal
open GlobalTheory.LamTie.AuxiliaryPrimeFunction

variable {L : Type} [Field L] [NumberField L]

theorem coprime_absNorm_sub_one (v : HeightOneSpectrum (𝓞 L)) {p : ℕ} (hp : p.Prime) (hv : (p : 𝓞 L) ∈ v.asIdeal) :
    Nat.Coprime p (Ideal.absNorm v.asIdeal - 1) := by
  haveI : Finite (𝓞 L ⧸ v.asIdeal) := v.asIdeal.finiteQuotientOfFreeOfNeBot v.ne_bot
  haveI := v.isPrime
  have hN : ((Ideal.absNorm v.asIdeal : ℕ) : 𝓞 L ⧸ v.asIdeal) = 0 := by
    rw [Ideal.absNorm_apply, Submodule.cardQuot_apply, ← nsmul_one, card_nsmul_eq_zero']
  have h1 := GlobalTheory.Mem.WildChar.one_lt_absNorm v
  have hp0 : ((p : ℕ) : 𝓞 L ⧸ v.asIdeal) = 0 := by
    rw [← map_natCast (Ideal.Quotient.mk v.asIdeal), Ideal.Quotient.eq_zero_iff_mem.2 hv]
  refine (Nat.Prime.coprime_iff_not_dvd hp).2 fun ⟨t, ht⟩ => one_ne_zero (α := 𝓞 L ⧸ v.asIdeal) ?_
  have e : Ideal.absNorm v.asIdeal = p * t + 1 := by omega
  rw [e] at hN
  simpa [hp0] using hN

theorem exists_char_teich {F : Type} [Field F] [NumberField F] [Algebra F L] {c : L ≃ₐ[F] L} {I : Type} [Fintype I]
    {φ : I → L →+* ℂ} (hcm : CMData F c φ) (e : I → ℤ) (O : HeightOneSpectrum (𝓞 L) → Prop) (hfin : {w | O w}.Finite)
    (hO : ∀ w w', w.under (𝓞 F) = w'.under (𝓞 F) → O w → O w') (w0 : HeightOneSpectrum (𝓞 L)) (h0 : ¬ O w0)
    (hpr : ∀ w, O w → ∃ p : ℕ, p.Prime ∧ (p : 𝓞 L) ∈ w.asIdeal) {q : ℕ} (hq : q.Prime) (h5 : Units.torsionOrder L + 1 < q)
    (hq0 : (q : 𝓞 L) ∈ w0.asIdeal)
    (hsp : ∀ w, O w ∨ w.under (𝓞 F) = w0.under (𝓞 F) → ¬ ConjPl c.toRingEquiv w w) :
    ∃ χ : Formalism.L2.Host.HChar L, χ.IsUnitary ∧ χ.TrivOn F ∧ χ.HasInf φ (fun i => 2 * e i) ∧
      (∀ w, ¬ O w → w.under (𝓞 F) ≠ w0.under (𝓞 F) → χ.UnrAt w) ∧ (∀ w, O w → ExpAt χ w 2) ∧
      (∀ w, w.under (𝓞 F) = w0.under (𝓞 F) → ExpAt χ w 1) ∧
      ∀ w, O w → ∀ x : (w.adicCompletion L)ˣ, x ^ (Ideal.absNorm w.asIdeal - 1) = 1 → χ.loc w x = 1 := by
  classical
  haveI : Nonempty (HeightOneSpectrum (𝓞 L)) := ⟨w0⟩
  let u : HeightOneSpectrum (𝓞 L) → HeightOneSpectrum (𝓞 F) := fun w => w.under (𝓞 F)
  let r : HeightOneSpectrum (𝓞 L) → HeightOneSpectrum (𝓞 L) := fun w => Function.invFun u (u w)
  have hr : ∀ w, (r w).under (𝓞 F) = w.under (𝓞 F) := fun w => Function.invFun_eq (f := u) ⟨w, rfl⟩
  have hrr : ∀ w w', w.under (𝓞 F) = w'.under (𝓞 F) → r w = r w' := fun w w' h => congrArg (Function.invFun u) h
  set w1 := r w0 with hw1
  have hu1 : w1.under (𝓞 F) = w0.under (𝓞 F) := hr w0
  have h1 : ¬ O w1 := fun h => h0 (hO _ _ hu1 h)
  let S : Finset (HeightOneSpectrum (𝓞 L)) := insert w1 (hfin.toFinset.filter fun w => r w = w)
  have hS : ∀ w, w ∈ S ↔ w = w1 ∨ (O w ∧ r w = w) := fun w => by simp [S]
  have hfix : ∀ w ∈ S, r w = w := fun w hw => by
    rcases (hS w).1 hw with rfl | h
    exacts [hrr _ _ hu1, h.2]
  have hne : ∀ w, O w → w ≠ w1 := fun w hw h => h1 (h ▸ hw)
  have hwild : ∀ w : HeightOneSpectrum (𝓞 L), ∃ θ : (w.adicCompletion L)ˣ →* ℂˣ,
      O w → ∃ p : ℕ, p.Prime ∧ (p : 𝓞 L) ∈ w.asIdeal ∧ (∀ x, θ x ^ p = 1) ∧
        (∀ x, IsUnitAt w x → Valued.v ((x : w.adicCompletion L) - 1) ≤ WithZero.exp (-2 : ℤ) → θ x = 1) ∧
        ∃ k : Lˣ, IsUnitAt w (atFin w k) ∧
          Valued.v (((atFin w k : (w.adicCompletion L)ˣ) : w.adicCompletion L) - 1) ≤
            WithZero.exp (-1 : ℤ) ∧ θ (atFin w k) ≠ 1 := fun w => by
    by_cases hw : O w
    · obtain ⟨p, hp, hp'⟩ := hpr w hw
      obtain ⟨θ, hθ⟩ := exists_wild w hp hp'
      exact ⟨θ, fun _ => ⟨p, hp, hp', hθ⟩⟩
    · exact ⟨1, fun h => absurd h hw⟩
  choose θ1 hθ1 using hwild
  have hw0 : w1 ∈ S := (hS _).2 (Or.inl rfl)
  obtain ⟨θ0, ht0, hθ0, k0, hk0, hk0'⟩ := exists_tame_par w1 hq h5 (natCast_mem_of_under hu1.symm hq0) φ e (S.erase w1) θ1
  let θ : ∀ w : HeightOneSpectrum (𝓞 L), (w.adicCompletion L)ˣ →* ℂˣ := Function.update θ1 w1 θ0
  have e0 : θ w1 = θ0 := Function.update_self _ _ _
  have e1 : ∀ w, w ≠ w1 → θ w = θ1 w := fun w hw => Function.update_of_ne hw _ _
  obtain ⟨χ, hu, ht, hi, hunr, hloc⟩ := exists_hecke_level hcm e S θ
    (fun w hw => by
      rcases (hS w).1 hw with rfl | ⟨h2, -⟩
      · rw [e0]; exact GlobalTheory.ModelChar.continuous_of_tameLoc ht0
      · obtain ⟨p, -, -, -, h, -⟩ := hθ1 w h2
        rw [e1 w (hne w h2)]; exact continuous_of_level h)
    (fun w hw x => by
      rcases (hS w).1 hw with rfl | ⟨h2, -⟩
      · rw [e0]; exact ht0.1 x
      · obtain ⟨p, hp, -, h, -⟩ := hθ1 w h2
        rw [e1 w (hne w h2)]
        exact Complex.norm_eq_one_of_pow_eq_one (by rw [← Units.val_pow_eq_pow_val, h, Units.val_one]) hp.ne_zero)
    (fun w hw w' hcj hw' => by
      have := (under_eq_iff_conjPl c hcm.rank hcm.ne _ _).2 (Or.inr hcj)
      obtain rfl : w' = w := by rw [← hfix w' hw', hrr _ _ this, hfix w hw]
      refine hsp w' ?_ hcj
      rcases (hS w').1 hw with rfl | h
      exacts [Or.inr hu1, Or.inl h.1])
    (fun k hk => by
      have ep : ∏ w ∈ S.erase w1, θ w (atFin w k) = ∏ w ∈ S.erase w1, θ1 w (atFin w k) :=
        Finset.prod_congr rfl fun w hw => by rw [e1 w (Finset.ne_of_mem_erase hw)]
      rw [← Finset.mul_prod_erase _ _ hw0, e0, ep]
      exact hθ0 k hk)
  refine ⟨χ, hu, ht, hi, fun Q hQ hQ' => hunr Q fun w hw h => ?_, fun Q hQ => ?_, fun Q hQ => ?_, fun Q hQ x hx => ?_⟩
  · rcases (hS w).1 hw with rfl | h2
    exacts [hQ' (h.trans hu1), hQ (hO _ _ h.symm h2.1)]
  · have hOr : O (r Q) := hO _ _ (hr Q).symm hQ
    obtain ⟨σ, s1, s2, s3, -, s5⟩ := hloc (r Q) ((hS _).2 (Or.inr ⟨hOr, hrr _ _ (hr Q)⟩)) Q (hr Q).symm
    obtain ⟨p, -, -, -, t2, k, t3, t4, t5⟩ := hθ1 _ hOr
    rw [e1 _ (hne _ hOr)] at s5
    refine expAt_succ (n := 1) (fun x hx hx' => (s5 x hx).2 (t2 _ ((s2 x).2 hx) (by rw [s3]; exact hx'))) fun H => t5 ?_
    obtain ⟨x, hx⟩ := s1 k
    rw [← hx] at t3 t4 ⊢
    rw [s3] at t4
    exact (s5 x ((s2 x).1 t3)).1 (H x ((s2 x).1 t3) t4)
  · obtain ⟨σ, s1, s2, s3, -, s5⟩ := hloc w1 hw0 Q (hQ.trans hu1.symm)
    rw [e0] at s5
    refine expAt_succ (n := 0) (fun x hx hx' => (s5 x hx).2 (ht0.2 _ ((s2 x).2 hx) (by rw [s3]; exact hx'))) fun H => hk0' ?_
    obtain ⟨x, hx⟩ := s1 k0
    rw [← hx] at hk0 ⊢
    exact (s5 x ((s2 x).1 hk0)).1 ((χ.unrAt_iff Q).2 H x ((s2 x).1 hk0))
  · have hOr : O (r Q) := hO _ _ (hr Q).symm hQ
    obtain ⟨σ, -, -, -, s4, s5⟩ := hloc (r Q) ((hS _).2 (Or.inr ⟨hOr, hrr _ _ (hr Q)⟩)) Q (hr Q).symm
    obtain ⟨p, hp, hpm, t1, -⟩ := hθ1 _ hOr
    rw [e1 _ (hne _ hOr)] at s5
    have hpQ : (p : 𝓞 L) ∈ Q.asIdeal := natCast_mem_of_under (hr Q) hpm
    refine (s5 x (GlobalTheory.LamTie.isUnitAt_of_pow_eq_one hx)).2 ?_
    have a2 : θ1 (r Q) (σ x) ^ (Ideal.absNorm Q.asIdeal - 1) = 1 := by rw [← map_pow, s4 x _ hx, map_one]
    have : θ1 (r Q) (σ x) ^ Nat.gcd p (Ideal.absNorm Q.asIdeal - 1) = 1 := by
      rw [pow_gcd_eq_one]; exact ⟨t1 _, a2⟩
    rwa [Nat.Coprime.gcd_eq_one (coprime_absNorm_sub_one Q hp hpQ), pow_one] at this

end General

open NumberField IsDedekindDomain ReciprocityTheory.Gal Formalism.ConjugateSelfDual Formalism.BasicNotions Formalism.MainNotions Formalism.FrobeniusOrbits Formalism.L2.Host GlobalTheory.CMVal GlobalTheory.ToricDenom GlobalTheory.LamTie
open GlobalTheory.LamTie.AuxiliaryPrimeFunction

theorem exists_auxiliaryHeckeCharacter_trivial_tame_part : ∀ (R : Ranks) (H : Formalism.BasicNotions.Host R) (q0 : ℕ) (w0 : HeightOneSpectrum (𝓞 H.E)) (c : R.Psi → ℤ),
    PlacesOk H q0 w0 → Units.torsionOrder H.E + 1 < q0 → ∃ χ, IsAuxiliaryHeckeCharacter H w0 c χ ∧ TeichTriv H χ := by
  intro R H q0 w0 c hP h5
  obtain ⟨cc, -, hcm, -⟩ := GlobalTheory.Mem.HostCM.host_cm R H
  haveI : IsCMField H.E := H.isCMField_hostE
  have hd := hP.distinct
  simp only [List.nodup_cons, List.mem_cons, not_or, List.not_mem_nil] at hd
  have hq := hP.splits q0 (by simp)
  have hpr : ∀ w, Over4 H w → ∃ p ∈ [H.g 0, H.g 1, H.pde, H.pde', q0], p ≠ q0 ∧ (p : 𝓞 H.E) ∈ w.asIdeal := by
    rintro w (⟨k, h⟩ | h | h)
    · fin_cases k
      · exact ⟨H.g 0, by simp, by tauto, h⟩
      · exact ⟨H.g 1, by simp, by tauto, h⟩
    · exact ⟨H.pde, by simp, by tauto, h⟩
    · exact ⟨H.pde', by simp, by tauto, h⟩
  have hsp : ∀ p ∈ [H.g 0, H.g 1, H.pde, H.pde', q0], ∀ w : HeightOneSpectrum (𝓞 H.E), (p : 𝓞 H.E) ∈ w.asIdeal →
      ¬ GlobalTheory.Mem.Chr.ConjPl cc.toRingEquiv w w := fun p hp w hw hc => by
    obtain ⟨h1, -, h2, h3⟩ := hP.splits p hp
    obtain ⟨P, P', hne, hP1, hP2⟩ := GlobalTheory.LamTie.SplitBelow.splits_below_of_absNorm H.E p h1 h2 h3 w hw
    have key : ∀ Q, GlobalTheory.CMVal.Over Q (below w) → Q = w := fun Q hQ => by
      rcases (GlobalTheory.Mem.Chr.under_eq_iff_conjPl cc hcm.rank hcm.ne w Q).1 (HeightOneSpectrum.ext hQ) with h | h
      · exact h
      · exact (GlobalTheory.Mem.Chr.existsUnique_conjPl cc.toRingEquiv w).unique h hc
    exact hne ((key P hP1).trans (key P' hP2).symm)
  obtain ⟨χ, h1, h2, h3, h4, h5, h6, h7⟩ := exists_char_teich hcm c (Over4 H)
    ((((finite_over (L := H.E) (hP.splits (H.g 0) (by simp)).1).union (finite_over (hP.splits (H.g 1) (by simp)).1)).union
      ((finite_over (hP.splits H.pde (by simp)).1).union (finite_over (hP.splits H.pde' (by simp)).1))).subset (by
        rintro w (⟨k, h⟩ | h | h)
        · fin_cases k
          exacts [Or.inl (Or.inl h), Or.inl (Or.inr h)]
        exacts [Or.inr (Or.inl h), Or.inr (Or.inr h)]))
    (by
      rintro w w' h (⟨k, h'⟩ | h' | h')
      exacts [Or.inl ⟨k, natCast_mem_of_under h h'⟩, Or.inr (Or.inl (natCast_mem_of_under h h')),
        Or.inr (Or.inr (natCast_mem_of_under h h'))])
    w0 (fun h => by
      obtain ⟨p, hp, h1, h2⟩ := hpr w0 h
      exact h1 (prime_eq (hP.splits p hp).1 hq.1 h2 hP.referencePlaceOverPrime))
    (fun w h => by
      obtain ⟨p, hp, -, h2⟩ := hpr w h
      exact ⟨p, (hP.splits p hp).1, h2⟩)
    hq.1 h5 hP.referencePlaceOverPrime
    (by
      rintro w (h | h)
      · obtain ⟨p, hp, -, h2⟩ := hpr w h
        exact hsp p hp w h2
      · exact hsp q0 (by simp) w (natCast_mem_of_under h.symm hP.referencePlaceOverPrime))
  exact ⟨χ, ⟨h1, h2, ⟨fun g => 2 * c g, fun g => by push_cast; rfl, h3⟩, h4, h5, h6⟩, fun w hw => h7 w (Or.inr hw)⟩

end GlobalTheory.LamTie.TeichEx

namespace GlobalTheory.LamTie

open NumberField IsDedekindDomain ReciprocityTheory.Gal Formalism.ConjugateSelfDual Formalism.BasicNotions Formalism.MainNotions Formalism.FrobeniusOrbits Formalism.L2.Host GlobalTheory.CMVal GlobalTheory.ToricDenom

end GlobalTheory.LamTie
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAuxiliaryHeckeCharacterTrivialTamePart =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeightOneMem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeightOneMem", "h": "module\n\nimport Development.AutomorphicArithmetic.CyclotomicBounds.RamifiedDiscriminants.CondSq\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.RingTheory.DedekindDomain.Ideal.Lemmas\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.HeightOnePrimeMembership

open NumberField

theorem exists_heightOne_mem (E : Type) [Field E] [NumberField E] {p : ℕ} (hp : Nat.Prime p) :
    ∃ w : IsDedekindDomain.HeightOneSpectrum (RingOfIntegers E),
      (p : RingOfIntegers E) ∈ w.asIdeal := by
  apply UpperTheory.Ram.exists_place_over <;> assumption

end GlobalTheory.HeightOnePrimeMembership
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeightOneMem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AuxiliaryPrimeNeTypePrime =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AuxiliaryPrimeNeTypePrime", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PositionOfIntro\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotTeichTrivOfIsDelta\npublic import Formalism.SharpRestriction.Divisibility.AbsolutelyIrreducibleSpan\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAuxiliaryHeckeCharacterTrivialTamePart\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHeightOneMem\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlacesOkOfModEqOne\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AlgebraicHeckeCharValuesInNumberField\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsColumnInputAssembled\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsCommonField\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HostCmEmbeddingProperties\nimport Development.AutomorphicArithmetic.CyclotomicBounds.RootsOfUnity.WAddOneLtOfDvd\nimport Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.HostFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic\nimport Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Host GlobalTheory.Mem GlobalTheory.Mem.Top NumberField IsDedekindDomain

namespace GlobalTheory.TwInputs.SmallField

theorem star_mem_of_normal {L : Type} [Field L] [CharZero L] [StarRing L] [IsGalois ℚ L] (M : IntermediateField ℚ L) (hM : IsGalois ℚ M)
    (x : L) (hx : x ∈ M) : star x ∈ M := by
  have h := (IntermediateField.normal_iff_forall_map_le (K := M)).1 hM.to_normal (starRingEnd L).toRatAlgHom
  exact h ⟨x, hx, rfl⟩

theorem exists_over (E : Type) [Field E] [NumberField E] {p : ℕ} (hp : p.Prime) :
    ∃ w : HeightOneSpectrum (𝓞 E), ((p : ℕ) : 𝓞 E) ∈ w.asIdeal :=
  _root_.GlobalTheory.HeightOnePrimeMembership.exists_heightOne_mem E hp

end GlobalTheory.TwInputs.SmallField

namespace GlobalTheory.TwInputs.SmallField

theorem exists_finset_rayIn (hR : GlobalTheory.NT.RayField) (P : Pre) : ∃ S : Finset ℂ, (∀ z ∈ S, IsAlgebraic ℚ z) ∧
    ∀ B : Base, B.toPre = P → (∀ z ∈ S, z ∈ B.fixedCoefficientFieldInComplex) → ∀ C W V S' N G,
      GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels.RayIn (assemble B C W V S' N G) (B.host.g 0 * B.host.g 1 * B.host.pde * B.host.pde')
        (embLL0 (assemble B C W V S' N G)).fieldRange := by
  let φK : P.host.K →+* ℂ := P.host.φ₀.comp (algebraMap P.host.K P.host.E)
  obtain ⟨Rf, hRf⟩ := Fld.exists_isRayFieldIn φK hR (Fld.natIdeal_ne_bot (E := P.host.K) (Fld.modulus_ne_zero P))
  haveI : NumberField Rf := hRf.numberField
  let b := Module.finBasis ℚ Rf
  refine ⟨Finset.univ.image (fun i => (b i : ℂ)), ?_, ?_⟩
  · intro z hz
    obtain ⟨i, -, rfl⟩ := Finset.mem_image.1 hz
    have h : IsAlgebraic ℚ (b i) := Algebra.IsAlgebraic.isAlgebraic _
    exact h.algHom Rf.val
  · intro B hB hS C W V S' N G
    subst hB
    have hle : Rf ≤ B.fixedCoefficientFieldInComplex := by
      intro z hz
      have hsum := congrArg Subtype.val (b.sum_repr ⟨z, hz⟩)
      rw [IntermediateField.coe_sum] at hsum
      simp only [IntermediateField.coe_smul] at hsum
      rw [← hsum]
      exact sum_mem fun i _ => IntermediateField.smul_mem _ (hS _ (Finset.mem_image.2 ⟨i, Finset.mem_univ _, rfl⟩))
    obtain ⟨hm, hNF, hray⟩ := hRf
    letI := Fld.algOf φK Rf hm
    refine ⟨Rf, inferInstance, hNF, Fld.algOf φK Rf hm, hray.1, hray.2, Rf.val.toRingHom, ?_, fun x => ?_⟩
    · ext x
      exact Fld.algOf_apply φK Rf hm x
    · obtain ⟨y, hy, e⟩ := hle x.2
      exact ⟨⟨y, hy⟩, e⟩

end GlobalTheory.TwInputs.SmallField

namespace GlobalTheory.TwInputs.SmallField

theorem one_lt_cond (P : Pre) : 1 < P.host.QS * P.host.q * P.host.d :=
  lt_of_lt_of_le (by norm_num) (Nat.le_of_dvd (Nat.pos_of_ne_zero P.host.condN_ne_zero) P.host.sixteen_dvd_condN)

theorem exists_finset_lam (P : Pre) : ∃ S : Finset ℂ, (∀ z ∈ S, IsAlgebraic ℚ z) ∧
    ∀ B : Base, B.toPre = P → (∀ z ∈ S, z ∈ B.fixedCoefficientFieldInComplex) → ∀ C W V S' N G,
      (∀ k, AbsolutelyIrreducibleSpan.q0 (assemble B C W V S' N G) ≠ B.host.g k) → ∀ cf : CharFrame (assemble B C W V S' N G),
        ∃ Z : GlobalTheory.LamTie.LamDat (assemble B C W V S' N G), Z.Ok ∧ Z.Teich ∧ Z.C = cf ∧
          Z.q0 = AbsolutelyIrreducibleSpan.q0 (assemble B C W V S' N G) ∧ ∀ a, (Z.chi a).ValuesIn 0 (embLL0 (assemble B C W V S' N G)) := by
  classical
  by_cases hq : ∀ k, GlobalTheory.EX.DC.q0H P.host ≠ P.host.g k
  swap
  · refine ⟨∅, by simp, fun B hB _ C W V S' N G h => ?_⟩
    subst hB
    exact absurd h hq
  have hqp := (GlobalTheory.EX.DC.globalTwisting_spec_fact P.host).1
  obtain ⟨w0, hw0⟩ := exists_over P.host.E hqp
  have hmod : ∀ p ∈ [P.host.g 0, P.host.g 1, P.host.pde, P.host.pde', GlobalTheory.EX.DC.q0H P.host],
      p ≡ 1 [MOD P.host.QS * P.host.q * P.host.d] := by
    intro p hp
    rw [Nat.ModEq, Nat.mod_eq_of_lt (one_lt_cond P)]
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl
    exacts [P.g_cond 0, P.g_cond 1, P.pde_cond.1, P.pde_cond.2, GlobalTheory.EX.DC.mod_cond _]
  obtain ⟨hPl, -⟩ := GlobalTheory.LamTie.placesOk_of_modEq_one P.R P.host _ w0 hqp hmod (fun k => hq k)
    (GlobalTheory.EX.DC.q0H_ne_pde_and_ne_pde' _).1 (GlobalTheory.EX.DC.q0H_ne_pde_and_ne_pde' _).2 hw0
  obtain ⟨χ, hχ, hT⟩ := GlobalTheory.LamTie.TeichEx.exists_auxiliaryHeckeCharacter_trivial_tame_part P.R P.host _ w0
    (fun g => (BlochKatoReduction.Gen.NFun P.R : ℤ) + 2 + ∑ j : Fin P.R.m, ⌈|(P.hc g).e j|⌉) hPl
    (UpperTheory.Mu.w_add_one_lt P.host hqp.one_lt 1 (by rw [one_mul]; exact GlobalTheory.EX.DC.mod_cond _))
  obtain ⟨n, hn, hinf⟩ := hχ.inf
  obtain ⟨cc, -, hcm, -⟩ := GlobalTheory.Mem.HostCM.host_cm P.R P.host
  obtain ⟨M, hM, hv⟩ := GlobalTheory.Mem.ValAlg.values_in_numberField P.host.F P.host.E cc P.R.Psi (embPsi P.host) hcm χ n 0 hinf
    (fun g => by
      have h1 : (n g : ℚ) = 2 * (((BlochKatoReduction.Gen.NFun P.R : ℤ) + 2 + ∑ j : Fin P.R.m, ⌈|(P.hc g).e j|⌉ : ℤ) : ℚ) := hn g
      have h2 : n g = 2 * ((BlochKatoReduction.Gen.NFun P.R : ℤ) + 2 + ∑ j : Fin P.R.m, ⌈|(P.hc g).e j|⌉) := by exact_mod_cast h1
      exact ⟨(BlochKatoReduction.Gen.NFun P.R : ℤ) + 2 + ∑ j : Fin P.R.m, ⌈|(P.hc g).e j|⌉, by omega⟩)
  rw [Int.cast_zero, zero_div] at hv
  haveI := hM
  obtain ⟨α, hα, gα⟩ := GlobalTheory.Mem.DatHecke.exists_gen M
  refine ⟨{α}, by simpa using hα, fun B hB hS C W V S' N G _ cf => ?_⟩
  subst hB
  obtain ⟨x, hx, ex⟩ := hS α (Finset.mem_singleton_self _)
  have hM' : ∀ z ∈ M, ∃ y, embLL0 (assemble B C W V S' N G) y = z := gα B.LL0 (embLL0 (assemble B C W V S' N G)) ⟨⟨x, hx⟩, by exact ex⟩
  refine ⟨⟨cf, _, w0, fun _ g => (BlochKatoReduction.Gen.NFun B.R : ℤ) + 2 + ∑ j : Fin B.R.m, ⌈|(B.hc g).e j|⌉, fun _ => χ⟩,
    ⟨hPl, fun _ => hχ, fun j a g => ?_⟩, fun _ => hT, rfl, rfl, fun _ => GlobalTheory.Mem.Col2.InEx.valuesIn_of hv _ hM'⟩
  show (BlochKatoReduction.Gen.NFun B.R : ℚ) + 1 < (B.hc g).e j + (((BlochKatoReduction.Gen.NFun B.R : ℤ) + 2 + ∑ j : Fin B.R.m, ⌈|(B.hc g).e j|⌉ : ℤ) : ℚ)
  have h1 : ⌈|(B.hc g).e j|⌉ ≤ ∑ j' : Fin B.R.m, ⌈|(B.hc g).e j'|⌉ :=
    Finset.single_le_sum (f := fun j' => ⌈|(B.hc g).e j'|⌉) (fun j' _ => Int.ceil_nonneg (abs_nonneg _)) (Finset.mem_univ j)
  have h2 : -(B.hc g).e j ≤ ((⌈|(B.hc g).e j|⌉ : ℤ) : ℚ) := (neg_le_abs _).trans (Int.le_ceil _)
  have h3 : ((⌈|(B.hc g).e j|⌉ : ℤ) : ℚ) ≤ ((∑ j' : Fin B.R.m, ⌈|(B.hc g).e j'|⌉ : ℤ) : ℚ) := by exact_mod_cast h1
  push_cast at h3 ⊢
  linarith

end GlobalTheory.TwInputs.SmallField

namespace GlobalTheory.TwInputs.SmallField

theorem lg_rayIn (hR : GlobalTheory.NT.RayField) (K : Ctx) : large₂ K fun B _ _ => ∀ C W V S' N G,
    GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels.RayIn (assemble B C W V S' N G) (B.host.g 0 * B.host.g 1 * B.host.pde * B.host.pde')
      (embLL0 (assemble B C W V S' N G)).fieldRange := by
  choose S hS gS using exists_finset_rayIn hR
  exact ⟨fun B _ _ => S B, fun _ _ _ _ => ∅, fun _ _ _ _ _ => ∅, fun _ _ _ _ _ => ∅, fun B _ _ => hS B, by simp,
    fun B _ _ _ hH _ _ => gS B.toPre B rfl hH.1⟩

theorem lg_lam (K : Ctx) : large₂ K fun B _ _ => ∀ C W V S' N G,
    (∀ k, AbsolutelyIrreducibleSpan.q0 (assemble B C W V S' N G) ≠ B.host.g k) → ∀ cf : CharFrame (assemble B C W V S' N G),
      ∃ Z : GlobalTheory.LamTie.LamDat (assemble B C W V S' N G), Z.Ok ∧ Z.Teich ∧ Z.C = cf ∧
        Z.q0 = AbsolutelyIrreducibleSpan.q0 (assemble B C W V S' N G) ∧ ∀ a, (Z.chi a).ValuesIn 0 (embLL0 (assemble B C W V S' N G)) := by
  choose S hS gS using exists_finset_lam
  exact ⟨fun B _ _ => S B, fun _ _ _ _ => ∅, fun _ _ _ _ _ => ∅, fun _ _ _ _ _ => ∅, fun B _ _ => hS B, by simp,
    fun B _ _ _ hH _ _ => gS B.toPre B rfl hH.1⟩

theorem lg_fieldOk (hR : GlobalTheory.NT.RayField) (K : Ctx) : large₂ K fun B f _ => ∀ C W V S' N G,
    ValLL0 (assemble B C W V S' N G) (Fr.at ⟨B, C, W, V, S', N, G⟩ f) ∧
    (∀ X : RealSide (assemble B C W V S' N G), X.R.C = Fr.at ⟨B, C, W, V, S', N, G⟩ f → FieldOk X) ∧
    ((∀ k, AbsolutelyIrreducibleSpan.q0 (assemble B C W V S' N G) ≠ B.host.g k) →
      ∃ Z : GlobalTheory.LamTie.LamDat (assemble B C W V S' N G), Z.Ok ∧ Z.Teich ∧ Z.C = Fr.at ⟨B, C, W, V, S', N, G⟩ f ∧
        Z.q0 = AbsolutelyIrreducibleSpan.q0 (assemble B C W V S' N G) ∧ ∀ a, (Z.chi a).ValuesIn 0 (embLL0 (assemble B C W V S' N G))) := by
  refine (((GlobalTheory.Mem.Col2.InEx.lg_colIn K).inter (lg_rayIn hR K)).inter (lg_lam K)).imp fun B f T _ h C W V S' N G => ?_
  obtain ⟨⟨⟨-, hval, -⟩, hray⟩, hlam⟩ := h
  refine ⟨hval C W V S' N G, fun X hX => ⟨B.coeffGaloisSubfield_isGalois, fun x => star_mem_of_normal B.LL0 B.coeffGaloisSubfield_isGalois _ x.2, ?_,
    hray C W V S' N G, fun k z hz => ?_,
    ⟨B.toPre.level_split _ B.host.pde_level.1, B.toPre.level_split _ B.host.pde_level.2⟩⟩, fun hq => hlam C W V S' N G hq _⟩
  · rw [hX]
    exact hval C W V S' N G
  · have h0 : B.host.g k * (B.host.g k - 1) ≠ 0 :=
      mul_ne_zero (B.host.g_prime k).ne_zero (by have := (B.host.g_prime k).two_le; omega)
    obtain ⟨x, hx, e⟩ := B.roots_Ks (B.host.g k * (B.host.g k - 1)) (by fin_cases k <;> simp)
    obtain ⟨y, hy⟩ := GlobalTheory.Mem.Col2.InEx.root_mem (embLL0 (assemble B C W V S' N G)) h0 ⟨⟨x, B.Ks_le hx⟩, e⟩ hz
    exact ⟨y, hy⟩

end GlobalTheory.TwInputs.SmallField

namespace GlobalTheory.TwInputs.SmallField

open Formalism.MainNotions.N Formalism.L2 Formalism.L2.NT Formalism.IndefR.NX GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem auxiliary_prime_ne_type_prime (K : Ctx) (C5 c6 Cb : ℝ) (h : K.Good C5 c6 Cb) (P : Pre) (hP : K.Over P) (k : Fin 2) :
    GlobalTheory.EX.DC.q0H P.host ≠ P.host.g k := by
  obtain ⟨sp, hT, hY, hA, hV, hz, rfl, -⟩ := hP
  exact h.ok.small.2.2.2.1 k

theorem cf_eq_at (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T) (Z : w.Lt) :
    TC.cf w.I w.l Z = Fr.at (w.st Z) f := by
  obtain ⟨px, I, ok, rfl, S_eq, xr, pins, l, l0, δ, ex, fld, val⟩ := w
  rfl

end GlobalTheory.TwInputs.SmallField
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AuxiliaryPrimeNeTypePrime =====
