import Formalism.QuotientMetricDivisors.FinalW
import Formalism.QuotientMetricDivisors.HermitianTwistDivisors.PlaceSumSquares
import Formalism.LocalRingCardinality.SpanPowerMembership.PlOver
import Formalism.LocalToGlobal.GroupLattices.JointServices.VAddEqVw
import Formalism.QuotientMetricDivisors.HermitianTwistDivisors.VwEqZeroOfNotMem

open Module NumberField IsDedekindDomain
open Formalism.DivisionValues
open scoped BigOperators

set_option autoImplicit false

namespace ThetaShiftSlope

variable {K : Type} [Field K] [NumberField K] [StarRing K]

/-- The displaced lattice with the indicated integral local exponents. -/
noncomputable def shifted {r : ℕ} (N : Submodule (𝓞 K) (Fin r → K))
    (σ : HeightOneSpectrum (𝓞 K) → ℤ) : Submodule (𝓞 K) (Fin r → K) :=
  Formalism.HermitianLatticesTheory.idealSmul (shiftIdeal σ : Submodule (𝓞 K) K) N

/-- Adding the valuations of a scalar multiplies the shift ideal by its inverse ideal. -/
theorem shiftIdeal_add_principal (σ : HeightOneSpectrum (𝓞 K) → ℤ)
    (hσ : (Function.support σ).Finite) (a : K) (ha : a ≠ 0)
    (hsum : (Function.support (fun w => σ w + vw w a)).Finite) :
    shiftIdeal (fun w => σ w + vw w a) =
      (FractionalIdeal.spanSingleton (nonZeroDivisors (𝓞 K)) a)⁻¹ * shiftIdeal σ := by
  have hI := shift_shiftIdeal_ne_zero (fun w => σ w + vw w a)
  have hJ := shift_shiftIdeal_ne_zero σ
  have haI : FractionalIdeal.spanSingleton (nonZeroDivisors (𝓞 K)) a ≠ 0 :=
    FractionalIdeal.spanSingleton_ne_zero_iff.mpr ha
  have hprod := mul_ne_zero (inv_ne_zero haI) hJ
  rw [← FractionalIdeal.finprod_heightOneSpectrum_factorization' K hI,
    ← FractionalIdeal.finprod_heightOneSpectrum_factorization' K hprod]
  refine finprod_congr fun w => ?_
  rw [FractionalIdeal.count_mul K w (inv_ne_zero haI) hJ, FractionalIdeal.count_inv,
    shift_count_shiftIdeal σ hσ, shift_count_shiftIdeal _ hsum]
  change _ ^ (-(σ w + vw w a)) = _ ^ (-vw w a + -σ w)
  congr 1
  omega

/-- The natural discriminant contributes precisely the ramification exponent above it. -/
theorem discr_valuation (D : Formalism.BasicNotions.D7) (w : D.what₂.places.Pl) :
    vw (D.plEq w) (D.host.d : D.what₂.LL) =
      if D.what₂.places.resChar w = D.host.d then (D.what₂.places.ramIdx w : ℤ) else 0 := by
  let : Fact D.host.d.Prime := ⟨D.host.hyp.2.1⟩
  by_cases hw : D.what₂.places.resChar w = D.host.d
  · rw [ite_eq_left hw, ← hw]
    have hnz : (D.what₂.places.resChar w : D.what₂.LL) ≠ 0 :=
      Nat.cast_ne_zero.mpr (D.what₂.places.resChar_prime w).ne_zero
    have hv := D.val_eq w _ hnz
    rw [D.what₂.places.val_resChar,
      Formalism.L2.G.ServJoint.vAdd_eq_vw _ _ hnz] at hv
    exact_mod_cast hv.symm
  · rw [ite_eq_right hw]
    have hm : (D.host.d : 𝓞 D.what₂.LL) ∉ (D.plEq w).asIdeal :=
      fun h => hw ((Formalism.BasicNotions.Examples₂.PlOver.resChar_eq_iff D D.host.d w).mpr h)
    simpa using Formalism.DivisionValues.ValuationZeroReduction.vw_eq_zero_of_not_mem
      (D.plEq w) (D.host.d : 𝓞 D.what₂.LL) hm

/-- A principal increment converts the enlarged-source inclusion into target divisibility. -/
theorem map_mem_principal_multiple {r : ℕ} {V : Type} [AddCommGroup V] [Module K V]
    [Module (𝓞 K) V] [IsScalarTower (𝓞 K) K V]
    (N : Submodule (𝓞 K) (Fin r → K)) (R : Submodule (𝓞 K) V)
    (B : (Fin r → K) →ₗ[K] V) (σ : HeightOneSpectrum (𝓞 K) → ℤ)
    (hσ : (Function.support σ).Finite) (a : K) (ha : a ≠ 0)
    (hsum : (Function.support (fun w => σ w + vw w a)).Finite)
    (hB : ∀ x ∈ shifted N (fun w => σ w + vw w a), B x ∈ R)
    (x : Fin r → K) (hx : x ∈ shifted N σ) : ∃ y ∈ R, B x = a • y := by
  have hscale : a⁻¹ • x ∈ shifted N (fun w => σ w + vw w a) := by
    unfold shifted at hx ⊢
    rw [shiftIdeal_add_principal σ hσ a ha hsum, FractionalIdeal.spanSingleton_inv]
    refine Submodule.span_induction (p := fun z _ => a⁻¹ • z ∈ _) ?_ ?_ ?_ ?_ hx
    · rintro z ⟨c, hc, t, ht, rfl⟩
      rw [smul_smul]
      exact Submodule.subset_span ⟨a⁻¹ * c, FractionalIdeal.mul_mem_mul
        (FractionalIdeal.mem_spanSingleton_self _ _) hc, t, ht, rfl⟩
    · simp
    · intro z t _ _ hz ht
      rw [smul_add]
      exact Submodule.add_mem _ hz ht
    · intro c z _ hz
      rw [smul_comm]
      exact Submodule.smul_mem _ c hz
  refine ⟨B (a⁻¹ • x), hB _ hscale, ?_⟩
  rw [map_smul, smul_smul, mul_inv_cancel₀ ha, one_smul]

end ThetaShiftSlope
