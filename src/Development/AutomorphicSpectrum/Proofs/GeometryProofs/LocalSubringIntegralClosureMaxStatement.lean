module

public import Mathlib.RingTheory.IntegralClosure.Algebra.Basic
public import Mathlib.RingTheory.LocalRing.LocalSubring
public import Mathlib.RingTheory.Ideal.GoingUp
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Topology.Sheaves.Init

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GeometryProofs.LocalSubringIntegralClosureMax, Development.AutomorphicSpectrum.Proofs.GeometryProofs.LocalSubringIntegralClosureMaxStatement

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.LocalSubringIntegralClosureMax =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.LocalSubringIntegralClosureMax", "h": "module\n\npublic import Mathlib.RingTheory.IntegralClosure.Algebra.Basic\npublic import Mathlib.RingTheory.LocalRing.LocalSubring\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Ideal.GoingUp\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.Domination

theorem isUnit_subring_iff {K : Type} [Field K] (D : Subring K) (d : D) :
    IsUnit d ↔ (d : K) ≠ 0 ∧ (d : K)⁻¹ ∈ D := by
  constructor
  · rintro ⟨u, rfl⟩
    have h : ((u : D) : K) * (((u⁻¹ : Dˣ) : D) : K) = 1 := by
      exact_mod_cast congrArg Subtype.val u.mul_inv
    refine ⟨left_ne_zero_of_mul_eq_one h, ?_⟩
    rw [inv_eq_of_mul_eq_one_right h]
    exact ((u⁻¹ : Dˣ) : D).2
  · rintro ⟨h0, h⟩
    exact isUnit_iff_exists_inv.2 ⟨⟨_, h⟩, Subtype.ext (by simp [h0])⟩

theorem isMaximal_of_comap {K : Type} [Field K] (R T : Subring K) (hRT : R ≤ T)
    (hint : ∀ t ∈ T, IsIntegral R t) (P : Ideal T) [P.IsPrime]
    (hc : (P.comap (Subring.inclusion hRT)).IsMaximal) : P.IsMaximal := by
  let _ : Algebra R T := (Subring.inclusion hRT).toAlgebra
  have : Algebra.IsIntegral R T := ⟨fun t ↦ by
    let f : T →ₐ[R] K := { T.subtype with commutes' := fun r ↦ rfl }
    exact (isIntegral_algHom_iff f Subtype.val_injective).1 (hint t t.2)⟩
  exact Ideal.isMaximal_of_isIntegral_of_isMaximal_under P hc

theorem eq_ofPrime {K : Type} [Field K] (T D : Subring K) (P : Ideal T) [P.IsPrime]
    (hP : ∀ t : T, t ∈ P ↔ ¬ ((t : K) ≠ 0 ∧ (t : K)⁻¹ ∈ D)) (hTD : T ≤ D)
    (gen : ∀ a ∈ D, ∃ u ∈ T, ∃ v ∈ T, v ≠ 0 ∧ v⁻¹ ∈ D ∧ a = u / v) :
    D = (LocalSubring.ofPrime T P).toSubring := by
  ext a
  simp only [LocalSubring.ofPrime, LocalSubring.range_toSubring]
  show a ∈ D ↔ a ∈ Set.range _
  rw [Set.mem_range]
  constructor
  · intro ha
    obtain ⟨u, hu, v, hv, h0, hvD, rfl⟩ := gen a ha
    have hvP : (⟨v, hv⟩ : T) ∈ P.primeCompl := by
      show (⟨v, hv⟩ : T) ∉ P
      rw [hP]
      exact not_not.2 ⟨h0, hvD⟩
    refine ⟨IsLocalization.mk' _ (⟨u, hu⟩ : T) (⟨⟨v, hv⟩, hvP⟩ : P.primeCompl), ?_⟩
    rw [IsLocalization.lift_mk'_spec]
    show u = v * (u / v)
    field_simp
  · rintro ⟨y, rfl⟩
    obtain ⟨⟨u, s⟩, rfl⟩ := IsLocalization.mk'_surjective P.primeCompl y
    have hs : ¬ ((s : T) ∈ P) := s.2
    rw [hP, not_not] at hs
    have key : ∀ z : K, ((u : T) : K) = ((s : T) : K) * z → z ∈ D := by
      intro z hz
      have hz' : z = (u : K) * ((s : T) : K)⁻¹ := by
        rw [hz]
        field_simp [hs.1]
      rw [hz']
      exact D.mul_mem (hTD u.2) hs.2
    dsimp only
    apply key
    exact (IsLocalization.lift_mk'_spec (S := Localization.AtPrime P) (g := T.subtype) _ _ _ _).1 rfl

theorem eq_localisation_integralClosure :
    ∀ {K : Type} [Field K] (R D B : Subring K) [IsLocalRing R] [IsLocalRing D], R ≤ D →
      (∀ r ∈ R, r ≠ 0 → r⁻¹ ∈ D → r⁻¹ ∈ R) → (integralClosure R K).toSubring ≤ D →
      B ≤ (integralClosure R K).toSubring →
      (∀ a ∈ D, ∃ u ∈ B, ∃ v ∈ B, v ≠ 0 ∧ v⁻¹ ∈ D ∧ a = u / v) →
      ∃ (P : Ideal (integralClosure R K).toSubring) (_ : P.IsMaximal),
        D = (LocalSubring.ofPrime _ P).toSubring ∧
        ∀ t : (integralClosure R K).toSubring, t ∈ P ↔ ¬ ((t : K) ≠ 0 ∧ (t : K)⁻¹ ∈ D) := by
  intro K _ R D B _ _ hRD hdom hTD hBT gen
  let P : Ideal (integralClosure R K).toSubring :=
    (IsLocalRing.maximalIdeal D).comap (Subring.inclusion hTD)
  have hP : ∀ t : (integralClosure R K).toSubring, t ∈ P ↔ ¬ ((t : K) ≠ 0 ∧ (t : K)⁻¹ ∈ D) := by
    intro t
    show Subring.inclusion hTD t ∈ IsLocalRing.maximalIdeal D ↔ _
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_subring_iff]
    rfl
  have : P.IsPrime := Ideal.comap_isPrime _ _
  have hRT : R ≤ (integralClosure R K).toSubring := fun r hr ↦ by
    show IsIntegral R (algebraMap R K ⟨r, hr⟩)
    exact isIntegral_algebraMap
  have hint : ∀ t ∈ (integralClosure R K).toSubring, IsIntegral R t := fun t ht ↦ ht
  have hPmax : P.IsMaximal := by
    apply isMaximal_of_comap R _ hRT hint P
    have hc : P.comap (Subring.inclusion hRT) = IsLocalRing.maximalIdeal R := by
      ext r
      rw [Ideal.mem_comap, hP, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_subring_iff]
      show ¬ ((r : K) ≠ 0 ∧ (r : K)⁻¹ ∈ D) ↔ ¬ ((r : K) ≠ 0 ∧ (r : K)⁻¹ ∈ R)
      exact not_congr ⟨fun ⟨h0, h⟩ ↦ ⟨h0, hdom _ r.2 h0 h⟩, fun ⟨h0, h⟩ ↦ ⟨h0, hRD h⟩⟩
    rw [hc]
    exact IsLocalRing.maximalIdeal.isMaximal R
  refine ⟨P, hPmax, ?_, hP⟩
  refine eq_ofPrime _ D P hP hTD fun a ha ↦ ?_
  obtain ⟨u, hu, v, hv, h0, hvD, rfl⟩ := gen a ha
  exact ⟨u, hBT hu, v, hBT hv, h0, hvD, rfl⟩

end GlobalTheory.CompanionTheory.Domination
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.LocalSubringIntegralClosureMax =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.LocalSubringIntegralClosureMaxStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.LocalSubringIntegralClosureMaxStatement", "h": "module\n\npublic import Mathlib.RingTheory.IntegralClosure.Algebra.Basic\npublic import Mathlib.RingTheory.LocalRing.LocalSubring\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.LocalSubringIntegralClosureMax\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section


theorem _root_.GlobalTheory.T.local_subring_integral_closure_max : ∀ {K : Type} [Field K] (R D B : Subring K) [IsLocalRing R] [IsLocalRing D], R ≤ D → (∀ r ∈ R, r ≠ 0 → r⁻¹ ∈ D → r⁻¹ ∈ R) → (integralClosure R K).toSubring ≤ D → B ≤ (integralClosure R K).toSubring → (∀ a ∈ D, ∃ u ∈ B, ∃ v ∈ B, v ≠ 0 ∧ v⁻¹ ∈ D ∧ a = u / v) → ∃ (P : Ideal (integralClosure R K).toSubring) (_ : P.IsMaximal), D = (LocalSubring.ofPrime _ P).toSubring ∧ ∀ t : (integralClosure R K).toSubring, t ∈ P ↔ ¬ ((t : K) ≠ 0 ∧ (t : K)⁻¹ ∈ D) := by
  first | exact @GlobalTheory.CompanionTheory.Domination.eq_localisation_integralClosure | exact GlobalTheory.CompanionTheory.Domination.eq_localisation_integralClosure | (intros; apply GlobalTheory.CompanionTheory.Domination.eq_localisation_integralClosure <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.LocalSubringIntegralClosureMaxStatement =====
