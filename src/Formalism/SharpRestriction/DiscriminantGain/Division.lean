import Formalism.LocalToGlobal.Divisibility.RecBridge
import Formalism.SharpRestriction.DiscriminantGain.PeriodValuations
import Formalism.SharpRestriction.DiscriminantGain.PrincipalShift
import Formalism.SharpRestriction.DiscriminantGain.RamifiedPeriods
import Formalism.SharpRestriction.DiscriminantGain.SelectedWeights
import Formalism.LocalRingCardinality.IntCastDvdOfDvdIntegers

open Module NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.BasicNotions.DV Formalism.MainNotions.G
open Formalism.DivisionValues Formalism.L2.DIV Formalism.L2.G.ServJoint
open ThetaDivisionSubstitution ThetaShiftSlope
open Formalism.MainNotions Formalism.MainNotions.OrbitPlaces Formalism.FrobeniusOrbits PI.EntAtD.W
open Formalism.MainNotions.WeilJacquetShalikaLaw Formalism.MainNotions.WeightDegreeSizes
open Formalism.L2.G.Adm2InU
open Classical

set_option autoImplicit false

namespace ThetaConcreteDivision

/-- On the realised face package, the strengthened periods make the actual map divided by d integral. -/
theorem normalized_Bk_integral {D : D7} {L : SizeData₂ D} {Rw : DivisionRowsFace L}
    {C Cabs : ℝ} (P : DivisionPackageFace Rw C Cabs)
    (h2 : Formalism.MainNotions.LocalQuadraticParts.adm2 D L)
    (hcut : ∀ μ, Used D μ → CutUp D μ) (hN : NprimeDef D L)
    (u : D.what₂.Word)
    (hper : ∀ w : D.what₂.places.Pl, D.what₂.places.resChar w = D.host.d →
      PeriodAt D L u w (orderAt D L u w + (D.what₂.places.ramIdx w : ℝ))) :
    (D.div.Nu u).L.map ((((D.host.d : D.what₂.LL)⁻¹ • D.div.Bk u)).restrictScalars
      (𝓞 D.what₂.LL)) ≤ D.div.cc := by
  let a : D.what₂.LL := D.host.d
  have hdp := D.host.hyp.2.1.pos
  have ha : a ≠ 0 := Nat.cast_ne_zero.mpr hdp.ne'
  let σ := shiftZ (sgRec L u)
  let τ := fun w : HeightOneSpectrum (𝓞 D.what₂.LL) => σ w + vw w a
  have hσ : (Function.support σ).Finite := (P.inp u).sg_fin
  obtain ⟨hvw, _, _⟩ := place_sum_natural D.what₂.LL D.host.d hdp
  have haSupport : (Function.support (fun w : HeightOneSpectrum (𝓞 D.what₂.LL) => vw w a)).Finite := by
    apply hvw.subset
    intro w hw
    exact mul_ne_zero (shift_lw_pos w).ne' (by exact_mod_cast hw)
  have hτ : (Function.support τ).Finite := by
    apply (hσ.union haSupport).subset
    intro w hw
    by_contra ht
    have hz : σ w = 0 := by
      by_contra h
      exact ht (Or.inl h)
    have hza : vw w a = 0 := by
      by_contra h
      exact ht (Or.inr h)
    exact hw (by simp [τ, hz, hza])
  have hwf : (Rw.fc P.Pk.Zs).Df1.WF := P.hZs ▸ Rw.wf1
  have hsrc := nu_into L hN u (P.eNu u) (P.NuC (P.wU u)) (P.Nu u)
    (P.hNu u).lat (P.shift u)
  have hval : ∀ w, ∀ φ ∈ P.Nu u, ∀ F ∈ (Rw.fc P.Pk.Zs).Df1.Mt (P.Pk.core.cols.μ w),
      (Rw.fc P.Pk.Zs).Dc.Pt (P.wU u) (P.Pk.core.cols.μ w) φ F = 0 ∨
        (τ w : ℝ) ≤ (vw w ((Rw.fc P.Pk.Zs).Dc.Pt (P.wU u) (P.Pk.core.cols.μ w) φ F) : ℝ) := by
    intro w
    let z := D.plEq.symm w
    have hv := discr_valuation D z
    rw [show D.plEq z = w from D.plEq.apply_symm_apply w] at hv
    have hσw : (σ w : ℝ) = orderAt D L u z := by
      simp [σ, shiftZ, sgRec, orderAt, z]
    have hperiod : PeriodAt D L u z (τ w : ℝ) := by
      by_cases hz : D.what₂.places.resChar z = D.host.d
      · simpa only [τ, Int.cast_add, hσw, show vw w a = _ from hv, ite_eq_left hz,
          Int.cast_natCast] using hper z hz
      · have hva : vw w a = 0 := by simpa [hz, a] using hv
        have he : (τ w : ℝ) = orderAt D L u z := by
          simp only [τ, hva, add_zero, hσw]
        rw [he]
        exact h2 u z
    exact division_valuation_of_stronger_periods D L _ P.brTied hcut u (P.Nu u) hsrc w _ hperiod
  have hsh := (shiftEx D.what₂.LL _ (P.Nu u) (P.inp u).Nu_lat τ hτ).1
  have hincl := P.Pk.core.cols.intoDual divIntoDualShift latticeGlue hwf (P.wU u)
    (P.Nu u) (shifted (P.Nu u) τ) (fun w => (τ w : ℝ)) τ hval (fun w => by simp) hsh
  change (D.div.Nu u).L.map (((a⁻¹ • D.div.Bk u)).restrictScalars (𝓞 D.what₂.LL)) ≤
    Formalism.HN.dualLat D.div.RR.L
  refine oneMap_of_coord (D.div.Nu u) D.div.RR (P.NuC (P.wU u)) P.Pk.core.cols.RR
    (P.eNu u) P.eRR (P.hNu u).lat P.hRR.lat _ (a⁻¹ • P.Pk.core.cols.col.B (P.wU u))
    (fun x y => by simp [P.hBk u x y]) ?_
  intro x hx
  rw [P.shift u] at hx
  obtain ⟨y, hy, he⟩ := map_mem_principal_multiple (P.Nu u) _ (P.Pk.core.cols.col.B (P.wU u))
    σ hσ a ha hτ hincl x hx
  change a⁻¹ • (P.Pk.core.cols.col.B (P.wU u) x) ∈ _
  rwa [he, smul_smul, inv_mul_cancel₀ ha, one_smul]

/-- An uncovered top place supplies the extra factor for every word of the realised package. -/
theorem normalized_Bk_integral_of_uncovered_top {D : D7} {L : SizeData₂ D} {Rw : DivisionRowsFace L}
    {C Cabs : ℝ} (P : DivisionPackageFace Rw C Cabs)
    {X : Inst D L} {K : Consts} {Dx : DivX D} {T : TwForms D} {E : Ent D}
    {lev : LevelData D} {Xe : ErrX D} {ce : ErrC}
    (hk : KForm E Dx T 1) (hc : ValuationComposition D T)
    (hgd : TypePrimeNotDiscriminant D)
    (hs : ThetaKernelShapeAtD E Dx)
    (hFdef : L.FDef) (hE : ErrDefs D L Xe lev K ce) (hgain : GainLe X K) (hNuM : NuInM D L)
    (h0 : MemberChainIntegral D) (hTi : TwistedPointIntegral D T)
    (hp0 : PeriodClassSumWeyl D) (hpT : TwistedPeriodAdmissible D Dx T)
    (h2 : Formalism.MainNotions.LocalQuadraticParts.adm2 D L)
    (hcut : ∀ μ, Used D μ → CutUp D μ) (hN : NprimeDef D L)
    (t : D.host.TT)
    (ht : (t : HH D) ∉ D.host.T2.image (fun s : ℕ => D.R.dig s + D.host.u0))
    (hsize : L.sc.w'' D.R.n + L.etaSz + (L.Cc + 1) * L.Sc ≤ L.sc.b' + L.sc.b' / L.sc.x) :
    ∀ u : D.what₂.Word,
      (D.div.Nu u).L.map ((((D.host.d : D.what₂.LL)⁻¹ • D.div.Bk u)).restrictScalars
        (𝓞 D.what₂.LL)) ≤ D.div.cc := by
  intro u
  apply normalized_Bk_integral P h2 hcut hN u
  intro w hw φ hφ F hF hF0
  have hT : D.what₂.places.resChar w ≠ (D.mem u).A.T := by
    rw [hw]
    exact (D.T_ne_d u).symm
  have hd : D.host.cls (D.what₂.places.resChar w) = PrimeClass.ramD :=
    (primeClass_eq_ramD_iff D.host.toHostRaw).mpr hw
  have hrows := ThetaSelectedWeights.all_diagram_rows_of_uncovered_top L E t ht hsize
  obtain ⟨y, he, hy⟩ := ThetaDiscriminantPeriods.rounded_period_bound_all_rows (X := X) hk hc hgd hs
    hFdef hE hgain hNuM h0 hTi hp0 hpT u w hT hd
    (fun i hi => ⟨t, hrows u i hi⟩) φ hφ F hF hF0
  exact ⟨y, he, by simpa only [orderAt, Int.cast_add, Int.cast_natCast] using hy⟩

end ThetaConcreteDivision
