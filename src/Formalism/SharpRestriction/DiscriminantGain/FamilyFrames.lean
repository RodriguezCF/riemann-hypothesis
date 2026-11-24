import Formalism.SharpRestriction.GlobalSchurBounds.TopDensityNGeSixteen
import Formalism.SharpRestriction.DiscriminantGain.FrameBounds
import Formalism.SharpRestriction.DiscriminantGain.Average

open scoped BigOperators

noncomputable section

namespace Formalism.MainNotions.Lnk

open Formalism.BasicNotions Formalism.HN Formalism.LFunctionChainParameters.MatrixLatticeEstimates NumberField Matrix Module

theorem normalized_frame_at_of {D : D7} (L : SizeData₂ D) (C0 CH sg de eB : ℝ) (hsgx : sg = L.sc.x ^ (-CH)) (hsg20 : sg ≤ 1 / 20)
    (hde0 : 0 ≤ de) (hde4 : de ≤ 1 / 4) (hC0 : 1 ≤ C0)
    (hR : FrameReal_at D sg de eB) (hP : ChProviso_at L C0) (hCo : ChCode_at L C0 CH) (hFull : D.NuFull)
    (hLat : Lat_at D)
    (hdiv : ∀ u, (D.div.Nu u).L.map (((D.host.d : D.what₂.LL)⁻¹ • D.div.Bk u).restrictScalars
      (𝓞 D.what₂.LL)) ≤ D.div.RR.dualL) :
    ∃ η e : ℝ, 0 ≤ η ∧ η ≤ 5 * sg + 3 * Real.sqrt de ∧ 0 ≤ e ∧ e ≤ eB ∧
      ∀ H : ℝ,
        sFrame D.div.Nu D.div.h + 2 * Real.log (D.host.d : ℝ) - D.div.RR.muMinDual ≤ H →
        0 < H →
        ThetaNormalizedFrame.lower (sFrame D.div.Nu D.div.h + 2 * Real.log (D.host.d : ℝ))
          (uFrame D.div.Nu D.div.h) H D.what₂.delp (η + 4 * Real.sqrt e) -
          Real.log (Fintype.card D.what₂.Word : ℝ) ≤ D.div.RR.muDual := by
  obtain ⟨κ₁, i1, i2, v, Y, Y', Ball, γ, ιf, i3, i4, Bf, Vr, η0, η1, e0, hG, hγ, hBV, hV, hcard, h0, h0', h1, he0,
    hse, heB, hcor, hS⟩ := hR
  have hx0 : 0 < L.sc.x := lt_trans one_pos L.sc.one_lt_alt
  have hsg0 : 0 < sg := by rw [hsgx]; exact Real.rpow_pos_of_pos hx0 _
  have hD0 : 0 < D.what₂.Dstar := by rw [← D.Dstar_eq D.u₀]; exact (D.mem D.u₀).A.Dstar_pos
  have hG2 : 0 < GamL L ^ 2 := pow_pos (Real.exp_pos _) 2
  refine ⟨5 * sg + 3 * Real.sqrt de, 2 * e0, by positivity, le_refl _, by linarith, heB, fun HH hHH hpos => ?_⟩
  have hRs : D.what₂.Dstar / sg ≤ RsG ιf := by
    refine word_count_bound_holds D.what₂.Word ιf D.what₂.Dstar sg C0 (GamL L) hD0 hsg0 (by linarith) (Real.exp_pos _) ?_ ?_
    · have h := hCo
      unfold ChCode_at at h
      rw [hsgx, Real.rpow_neg hx0.le, div_inv_eq_mul]
      exact h
    · intro u
      have h := (hP u).1
      rw [le_div_iff₀ hD0] at h
      rw [hcard u]
      calc D.what₂.Dstar * (GamL L ^ 2)⁻¹ / C0 = (C0⁻¹ * D.what₂.Dstar) * (GamL L ^ 2)⁻¹ := by
            rw [div_eq_mul_inv]; ring
        _ ≤ ((D.duS u : ℝ) * GamL L ^ 2) * (GamL L ^ 2)⁻¹ := mul_le_mul_of_nonneg_right h (inv_nonneg.mpr hG2.le)
        _ = (D.duS u : ℝ) := by rw [mul_assoc, mul_inv_cancel₀ hG2.ne', mul_one]
  have hc : ∀ u, (Fintype.card (D.div.Nu u).ι : ℝ) = ((D.div.Nu u).rank : ℝ) := fun u => by
    rw [rank_eq_card (D.div.Nu u) (hFull u).2]
  have hdpos : ∀ u, (0 : ℝ) < ((D.div.Nu u).rank : ℝ) := fun u => Nat.cast_pos.mpr (hLat.1 u).1
  have hRpos : (0 : ℝ) < ∑ u, ((D.div.Nu u).rank : ℝ) :=
    Finset.sum_pos (fun u _ => hdpos u) Finset.univ_nonempty
  have hs : sFrame D.div.Nu D.div.h * (∑ u, ((D.div.Nu u).rank : ℝ)) =
      ∑ u, ((D.div.Nu u).rank : ℝ) * ((D.div.Nu u).mu - D.div.h u) := by
    unfold sFrame Rsum dU
    rw [Nat.cast_sum, div_mul_cancel₀ _ hRpos.ne']
  have hsup : ∀ u, (D.div.Nu u).muMax - D.div.h u ≤
      Finset.univ.sup' Finset.univ_nonempty (fun u => (D.div.Nu u).muMax - D.div.h u) := fun u =>
    Finset.le_sup' (fun u => (D.div.Nu u).muMax - D.div.h u) (Finset.mem_univ u)
  have hsle : sFrame D.div.Nu D.div.h ≤
      Finset.univ.sup' Finset.univ_nonempty (fun u => (D.div.Nu u).muMax - D.div.h u) := by
    have h2 : ∑ u, ((D.div.Nu u).rank : ℝ) * ((D.div.Nu u).mu - D.div.h u) ≤
        ∑ u, ((D.div.Nu u).rank : ℝ) *
          Finset.univ.sup' Finset.univ_nonempty (fun u => (D.div.Nu u).muMax - D.div.h u) :=
      Finset.sum_le_sum (fun u _ => mul_le_mul_of_nonneg_left
        (le_trans (by have := (hLat.1 u).2; linarith) (hsup u)) (hdpos u).le)
    rw [← hs, ← Finset.sum_mul, mul_comm] at h2
    exact le_of_mul_le_mul_left h2 hRpos
  let t := 2 * Real.log (D.host.d : ℝ)
  have hd := D.host.hyp.2.1.pos
  have ht : 0 ≤ t := mul_nonneg (by norm_num) (Real.log_nonneg (by exact_mod_cast hd))
  have hBaseHH : sFrame D.div.Nu D.div.h - D.div.RR.muMinDual ≤ HH := by
    change sFrame D.div.Nu D.div.h + t - D.div.RR.muMinDual ≤ HH at hHH
    linarith only [hHH, ht]
  have hNum : LatNum D.div.RR.dualB D.div.RR.dualX D.div.RR.dualL (fun u => (D.div.Nu u).b)
      (fun u => (D.div.Nu u).X) (fun u => (D.div.Nu u).L) D.div.h (sFrame D.div.Nu D.div.h)
      (uFrame D.div.Nu D.div.h) HH := by
    refine ⟨?_, ?_, ?_, hBaseHH, hpos.le⟩
    · simp only [hc]
      exact le_of_eq hs
    · unfold uFrame; linarith
    · intro u
      have := hsup u
      unfold uFrame
      show (D.div.Nu u).muMax - D.div.h u ≤ _
      linarith
  let c : D.what₂.LL := (D.host.d : D.what₂.LL)⁻¹
  let B' := fun u => c • D.div.Bk u
  let h' := fun u => D.div.h u - t
  let Y'' := (v.embedding c) • Y'
  have hc0 : c ≠ 0 := inv_ne_zero (Nat.cast_ne_zero.mpr hd.ne')
  have he0' : v.embedding c ≠ 0 := fun e => hc0 (v.embedding.injective (by simpa using e))
  have hpl : 0 < Formalism.HN.nPl D.what₂.LL :=
    Fintype.card_pos_iff.mpr ⟨v⟩
  obtain ⟨g1, g2, g3, g4, g5, g6, g7, g8, g9, _, g11, g12, g13, g14, g15⟩ := hG
  have hGeom : LatGeom D.div.RR.dualB D.div.RR.dualX D.div.RR.dualL
      (fun u => (D.div.Nu u).b) (fun u => (D.div.Nu u).X) (fun u => (D.div.Nu u).L)
      B' h' v Y Y'' Ball D.what₂.delp := by
    refine ⟨g1, g2, g3, ThetaNormalizedFrame.scaled_frame_coordinates_invertible _ _ he0' g4,
      g5, g6, g7, g8, g9, hdiv, ?_, g12, g13, g14, ?_⟩
    · intro u hu
      have hn : D.div.Bk u ≠ 0 := fun h => hu (by simp [B', h])
      have hp := fun q => Formalism.HN.PlaceOperatorNorms.opNormAt_pos
        (D.div.Nu u).b (D.div.Nu u).X D.div.RR.dualB D.div.RR.dualX (g2 u) g1 q (D.div.Bk u) hn
      change htMap (D.div.Nu u).b (D.div.Nu u).X D.div.RR.dualB D.div.RR.dualX
        ((D.host.d : D.what₂.LL)⁻¹ • D.div.Bk u) ≤ D.div.h u - t
      rw [ThetaNormalizedFrame.htMap_inverse_nat _ _ _ _ _ _ hd hp hpl]
      exact sub_le_sub_right (g11 u hn) _
    · intro u k j
      have hm := Matrix.map_smul' v.embedding c
        (LinearMap.toMatrix (D.div.Nu u).b D.div.RR.dualB (D.div.Bk u)) v.embedding.map_mul
      simp only [B', Y'', map_smul, hm]
      rw [ThetaNormalizedFrame.frame_block_scale _ _ _ he0' g4]
      exact g15 u k j
  have hNum' : LatNum D.div.RR.dualB D.div.RR.dualX D.div.RR.dualL (fun u => (D.div.Nu u).b)
      (fun u => (D.div.Nu u).X) (fun u => (D.div.Nu u).L) h'
      (sFrame D.div.Nu D.div.h + t) (uFrame D.div.Nu D.div.h) HH := by
    refine ⟨?_, hNum.2.1, ?_, hHH, hpos.le⟩
    · have hterm (u : D.what₂.Word) :
          muDef (D.div.Nu u).b (D.div.Nu u).X (D.div.Nu u).L - h' u =
            muDef (D.div.Nu u).b (D.div.Nu u).X (D.div.Nu u).L - D.div.h u + t := by
        unfold h'
        ring
      simp only [hterm, mul_add, Finset.sum_add_distrib, ← Finset.sum_mul]
      rw [add_mul]
      rw [mul_comm t]
      exact add_le_add hNum.1 le_rfl
    · intro u
      have hh := hNum.2.2.1 u
      change _ - (D.div.h u - t) ≤ sFrame D.div.Nu D.div.h + t + uFrame D.div.Nu D.div.h
      linarith only [hh]
  have hf := joint_a_ramified_holds D.what₂.LL (Module.Dual D.what₂.LL D.div.RR.V) D.div.RR.ι κ₁ D.what₂.Word
    (fun u => (D.div.Nu u).V) (fun u => (D.div.Nu u).ι) D.div.RR.dualB D.div.RR.dualX D.div.RR.dualL
    (fun u => (D.div.Nu u).b) (fun u => (D.div.Nu u).X) (fun u => (D.div.Nu u).L) B' h' v Y Y'' Ball γ ιf Bf Vr
    _ _ HH D.what₂.delp D.what₂.Dstar sg η0 η1 e0 de hGeom hNum' hγ hBV hV hD0 hsg0 hsg20 hRs h0 h0' h1 he0 hse hde0 hde4
    hcor hS
  unfold ThetaNormalizedFrame.lower
  change _ ≤ muDef D.div.RR.dualB D.div.RR.dualX D.div.RR.dualL
  linarith only [hf]

/-- Passing from the local frame errors to their family majorants preserves the estimate. -/
theorem lower_le_of_error_majorants {s u H δ δbar c cbar : ℝ}
    (hu : 0 ≤ u) (hH : 0 ≤ H) (hδ : δ ≤ δbar) (hδbar : δbar < 1)
    (hc : 0 ≤ c) (hcb : c ≤ cbar) :
    ThetaNormalizedFrame.lower s u H δbar cbar ≤ ThetaNormalizedFrame.lower s u H δ c := by
  have hA : 0 ≤ 4 * u * Real.log (1 + H / u) :=
    mul_nonneg (by positivity) (Real.log_nonneg (by linarith [div_nonneg hH hu]))
  have he : 0 ≤ 4 * u * Real.log (1 + H / u) + c * H :=
    add_nonneg hA (mul_nonneg hc hH)
  have hmain : 4 * u * Real.log (1 + H / u) + c * H ≤
      4 * u * Real.log (1 + H / u) + cbar * H :=
    add_le_add le_rfl (mul_le_mul_of_nonneg_right hcb hH)
  have hi : (1 - δ)⁻¹ ≤ (1 - δbar)⁻¹ := inv_anti₀ (by linarith) (by linarith)
  have hmul := mul_le_mul hi hmain he (inv_nonneg.mpr (by linarith : 0 ≤ 1 - δbar))
  unfold ThetaNormalizedFrame.lower
  linarith only [hmul]

namespace Mod

open Formalism.LFunctionChainParameters.WeightedSlopeBounds
open Formalism.RankGapBounds.WeightedMeanData

variable {eps x : ℝ} {Fm : FamP eps} (M : Mod Fm x) (u0 : M.e.A)
  (N : ℕ) (CH etaB eB : ℝ) (ηv ev : M.e.A → ℝ)

local notation "A" => M.data N CH etaB eB ηv ev
local notation "D₀" => Fm.D x (M.pt u0)

/-- The normalised frame estimate buys log(d) in the actual model's pointwise ASK bound. -/
theorem ask_gain_of_normalized_slope (C : Consts) (Xpp : ℝ) (hCH : C.cHH = CH)
    (hS : (A).HidaSetting C) (hDIV : (A).DIV C) (hE : EComp5 A C) (hH : (A).HComp C)
    (hCount : Count5 A C) (hSl : (A).Slopes C) (hSN : QuotientSlopeBoundsWith A C Xpp)
    (hLoss : LossBounds A C) (hHH : (A).HHBound C) (hFP : (A).FParams)
    (hX : 40 ≤ x ^ CH) (hδ : (A).delBar ≤ 1 / 2)
    (hc : (etaB + 4 * Real.sqrt eB) * x ^ CH ≤ 6)
    (hframe : ∃ η e : ℝ, 0 ≤ η ∧ η ≤ etaB ∧ 0 ≤ e ∧ e ≤ eB ∧
      ∀ H : ℝ, sFrame (D₀).div.Nu (D₀).div.h + 2 * Real.log ((D₀).host.d : ℝ) -
        (D₀).div.RR.muMinDual ≤ H → 0 < H →
        ThetaNormalizedFrame.lower (sFrame (D₀).div.Nu (D₀).div.h + 2 * Real.log ((D₀).host.d : ℝ))
          (uFrame (D₀).div.Nu (D₀).div.h) H (D₀).what₂.delp (η + 4 * Real.sqrt e) -
          Real.log (Fintype.card (D₀).what₂.Word : ℝ) ≤ (D₀).div.RR.muDual) :
    (A).ASK u0 ≤ (A).Main u0 + ErrX5at A C Xpp u0 - Real.log ((D₀).host.d : ℝ) := by
  obtain ⟨η, e, hη0, hηB, he0, heB, hframe⟩ := hframe
  let t := 2 * Real.log ((D₀).host.d : ℝ)
  have hd : 1 ≤ (D₀).host.d := Nat.succ_le_of_lt (D₀).host.hyp.2.1.pos
  have ht : 0 ≤ t := mul_nonneg (by norm_num) (Real.log_nonneg (by exact_mod_cast hd))
  obtain ⟨hHbase, hHpos, hHcap⟩ := hHH u0
  have hs := M.s_eq u0 N CH etaB eB ηv ev
  have hu := M.uF_eq u0 N CH etaB eB ηv ev
  have hNew : sFrame (D₀).div.Nu (D₀).div.h + t - (D₀).div.RR.muMinDual ≤ (A).HH u0 + t := by
    rw [← hs]
    change (A).s u0 - (D₀).div.RR.muMinDual ≤ (A).HH u0 at hHbase
    linarith only [hHbase]
  have hpos : 0 < (A).HH u0 + t := by linarith
  have hraw := hframe ((A).HH u0 + t) hNew hpos
  rw [← hs, ← hu] at hraw
  have hX' : 40 ≤ (A).x ^ C.cHH := by
    change 40 ≤ x ^ C.cHH
    rwa [hCH]
  have hcb : (A).etaBar + 4 * Real.sqrt (A).eBar ≤ 6 / (A).x ^ C.cHH := by
    change etaB + 4 * Real.sqrt eB ≤ 6 / x ^ C.cHH
    rw [hCH]
    exact (le_div_iff₀ (by linarith : 0 < x ^ CH)).mpr hc
  have hcf : η + 4 * Real.sqrt e ≤ (A).etaBar + 4 * Real.sqrt (A).eBar := by
    change _ ≤ etaB + 4 * Real.sqrt eB
    linarith [Real.sqrt_le_sqrt heB]
  have hmon := lower_le_of_error_majorants (s := (A).s u0 + t) ((A).uF_nonneg C hS u0) hpos.le
    (show (D₀).what₂.delp ≤ (A).delBar from (hFP u0).2.1) (by linarith : (A).delBar < 1)
    (by positivity : 0 ≤ η + 4 * Real.sqrt e) hcf
  have hfin : ThetaNormalizedFrame.lower ((A).s u0 + t) ((A).uF u0) ((A).HH u0 + t)
      (A).delBar ((A).etaBar + 4 * Real.sqrt (A).eBar) -
      Real.log (Fintype.card (D₀).what₂.Word : ℝ) ≤ (A).muCC u0 := by
    exact (sub_le_sub_right hmon _).trans hraw
  have hGa := Ga_bound5_with_discriminant_gain A C Xpp u0 hS hDIV hE hH hCount hSl hSN
    hd hX' hδ hcb ((A).HH u0 + t) hpos.le (add_le_add hHcap le_rfl) hfin
  exact each_unit_bound_with_discriminant_gain A C Xpp u0 hS hCount hLoss hGa

end Mod

namespace Mod

open Formalism Formalism.D5
open Formalism.RankGapBounds.WeightedMeanData
open Formalism.LFunctionChainParameters.characterSumData
open Formalism.LFunctionChainParameters.ThickSetMeanBounds

variable {eps x : ℝ} {Fm : FamP eps} (M : Mod Fm x) (u0 : M.e.A)
  (N : ℕ) (CH etaB eB : ℝ) (ηv ev : M.e.A → ℝ)

/-- The model's main term is the real part of the analytic main term summed over its top sites. -/
theorem main_eq_sum_MAIN (ell : AddChar (E0 × M.e.A) ℂ → ℂ)
    (hl : (Fm.L x M.i0).logDerivativeAtOne = (ell chC).re) :
    (M.data N CH etaB eB ηv ev).Main u0 =
      ∑ t ∈ M.TT, ∑ j : Fin M.m, (MAIN ell (M.a t) (M.w u0 j)).re := by
  obtain ⟨ha, hw, hgam, hlog, _⟩ := M.ident N CH etaB eB ηv ev ell hl
  have hf : M.f = (PhiSet (H := M.e.A)).card := by
    simpa using Fintype.card_congr M.eP
  have hinner (j : Fin M.m) :
      (∑ ρ : Fin M.f, Real.log ((M.data N CH etaB eB ηv ev).w u0 j ρ)) =
        ∑ ρ ∈ PhiSet (H := M.e.A), Real.log (M.w u0 j ρ) := by
    simp only [hw]
    rw [Equiv.sum_comp M.eP (fun g => Real.log (M.w u0 j g.1))]
    exact Finset.sum_coe_sort (PhiSet (H := M.e.A)) (fun ρ : E0 × M.e.A => Real.log (M.w u0 j ρ))
  unfold Data.Main
  rw [Finset.sum_comm]
  calc
    _ = ∑ t : ↥(Fm.TTn x), ∑ j : Fin M.m, (MAIN ell (M.a (M.eT t)) (M.w u0 j)).re := by
      refine Finset.sum_congr rfl fun t _ => Finset.sum_congr rfl fun j _ => ?_
      rw [ha t, hgam, hlog, hinner, hf]
      simp [MAIN, Complex.mul_re]
    _ = ∑ t : ↥M.TT, ∑ j : Fin M.m, (MAIN ell (M.a t) (M.w u0 j)).re :=
      Equiv.sum_comp M.eT (fun t : ↥M.TT => ∑ j : Fin M.m, (MAIN ell (M.a t) (M.w u0 j)).re)
    _ = _ := Finset.sum_coe_sort M.TT (fun t : M.e.A => ∑ j : Fin M.m, (MAIN ell (M.a t) (M.w u0 j)).re)

/-- The improved pointwise model bounds yield an improvement of its actual analytic average. -/
theorem topExcess_gain_of_model_bounds (ell : AddChar (E0 × M.e.A) ℂ → ℂ)
    (hl : (Fm.L x M.i0).logDerivativeAtOne = (ell chC).re)
    (t : M.e.A) (err : ℝ) (hn : 2 ≤ M.e.n0)
    (hbase : ∀ v, (M.data N CH etaB eB ηv ev).ASK v ≤
      (M.data N CH etaB eB ηv ev).Main v + err)
    (hgood : ∀ v, t - v ∉ M.T2 → (M.data N CH etaB eB ηv ev).ASK v ≤
      (M.data N CH etaB eB ηv ev).Main v + err - Real.log (M.d : ℝ)) :
    topExcess M.AD N ell M.TT M.a M.w ≤ err - Real.log (M.d : ℝ) / 2 := by
  classical
  have hcard : M.e.n0 ≤ Fintype.card M.e.A := by
    rw [← M.e.natCard_cyclic_subgroup, Nat.card_eq_fintype_card]
    exact Fintype.card_le_of_injective (fun v : M.e.A0 => v.1) Subtype.val_injective
  have hd : 1 ≤ M.d := Nat.succ_le_of_lt (Fm.D x M.i0).host.hyp.2.1.pos
  apply ThetaAverageGain.topExcess_saves_half_log_discriminant M.AD N M.m M.d ell M.TT
    (Fm.D x M.i0).host.T2 M.e.dig t M.a M.w err hn hcard
    (Fm.D x M.i0).host.two_le_Lw (Fm.D x M.i0).host.second_set_range hd
  · intro v
    simp_rw [Finset.sum_sub_distrib]
    rw [← M.main_eq_sum_MAIN v N CH etaB eB ηv ev ell hl]
    change (M.data N CH etaB eB ηv ev).ASK v - (M.data N CH etaB eB ηv ev).Main v ≤ err
    linarith only [hbase v]
  · intro v hv
    simp_rw [Finset.sum_sub_distrib]
    rw [← M.main_eq_sum_MAIN v N CH etaB eB ηv ev ell hl]
    change (M.data N CH etaB eB ηv ev).ASK v - (M.data N CH etaB eB ηv ev).Main v ≤
      err - Real.log (M.d : ℝ)
    linarith only [hgood v hv]

private theorem transport_dig_add {φ ψ : Formalism.HC.Frame} (he : φ = ψ)
    (a b : φ.A) (a' b' : ψ.A) (ha : a.val = a'.val) (hb : b.val = b'.val)
    (k : ℕ) (h : φ.dig k + b = a) : ψ.dig k + b' = a' := by
  subst ψ
  have ha' := Formalism.HC.Frame.A.val_injective φ ha
  have hb' := Formalism.HC.Frame.A.val_injective φ hb
  simpa only [← ha', ← hb'] using h

/-- The point counted as good in the average has the required uncovered site in its realisation. -/
theorem uncovered_top_of_model_point (t v : M.e.A) (ht : t ∈ M.TT)
    (hv : t - v ∉ M.T2) :
    ∃ a : (Fm.D x (M.pt v)).host.TT,
      (a : (Fm.D x (M.pt v)).R.A) ∉ (Fm.D x (M.pt v)).host.T2.image
        (fun s : ℕ => (Fm.D x (M.pt v)).R.dig s + (Fm.D x (M.pt v)).host.u0) := by
  obtain ⟨a, ha⟩ := M.top_of v ((M.mem_TT t).mp ht)
  refine ⟨a, ?_⟩
  intro hc
  obtain ⟨s, hs, he⟩ := Finset.mem_image.mp hc
  have he' := transport_dig_add (M.he v) a.1 (Fm.D x (M.pt v)).host.u0 t v
    ha (M.point_base_value v) s he
  apply hv
  refine (M.mem_thick_set_model_iff (t - v)).mpr ⟨s, ?_, ?_⟩
  · rwa [← Fm.realisedChain_torus_eq x (M.pt v) M.i0]
  · rw [← he', add_sub_cancel_right]

end Mod

namespace Mod

open Formalism Formalism.D5 Formalism.RankGapBounds.WeightedMeanData
open Formalism.LFunctionChainParameters.WeightedSlopeBounds
open Formalism.LFunctionChainParameters.characterSumData
open Formalism.LFunctionChainParameters.ThickSetMeanBounds

variable {eps x : ℝ} {Fm : FamP eps} (M : Mod Fm x)
  (N : ℕ) (CH etaB eB : ℝ) (ηv ev : M.e.A → ℝ)

local notation "A" => M.data N CH etaB eB ηv ev

/-- The model's analytic growth error improves when the normalised frame estimates hold
on the translates with an uncovered top site. -/
theorem topExcess_gain_of_normalized_frames (C : Consts) (Xpp err : ℝ) (hCH : C.cHH = CH)
    (ell : AddChar (E0 × M.e.A) ℂ → ℂ)
    (hl : (Fm.L x M.i0).logDerivativeAtOne = (ell chC).re)
    (t : M.e.A) (hn : 2 ≤ M.e.n0)
    (hS : (A).HidaSetting C) (hDIV : (A).DIV C) (hE : EComp5 A C) (hH : (A).HComp C)
    (hCount : Count5 A C) (hSl : (A).Slopes C) (hSN : QuotientSlopeBoundsWith A C Xpp)
    (hLoss : LossBounds A C) (hSI : (A).SlopeIneq) (hHH : (A).HHBound C) (hFP : (A).FParams)
    (hX : 40 ≤ x ^ CH) (hδ : (A).delBar ≤ 1 / 2)
    (hc : (etaB + 4 * Real.sqrt eB) * x ^ CH ≤ 6)
    (hErr : ∀ v, ErrX5at A C Xpp v ≤ err)
    (hframe : ∀ v, t - v ∉ M.T2 → let D := Fm.D x (M.pt v)
      ∃ η e : ℝ, 0 ≤ η ∧ η ≤ etaB ∧ 0 ≤ e ∧ e ≤ eB ∧
      ∀ H : ℝ, sFrame D.div.Nu D.div.h + 2 * Real.log (D.host.d : ℝ) -
        D.div.RR.muMinDual ≤ H → 0 < H →
        ThetaNormalizedFrame.lower (sFrame D.div.Nu D.div.h + 2 * Real.log (D.host.d : ℝ))
          (uFrame D.div.Nu D.div.h) H D.what₂.delp (η + 4 * Real.sqrt e) -
          Real.log (Fintype.card D.what₂.Word : ℝ) ≤ D.div.RR.muDual) :
    topExcess M.AD N ell M.TT M.a M.w ≤ err - Real.log (M.d : ℝ) / 2 := by
  apply M.topExcess_gain_of_model_bounds N CH etaB eB ηv ev ell hl t err hn
  · intro v
    have h := each_unit_bound_statement A C Xpp hS hDIV hE hH hCount hSl hSN hLoss hSI hHH hFP v
    linarith only [h, hErr v]
  · intro v hv
    have h := M.ask_gain_of_normalized_slope v N CH etaB eB ηv ev C Xpp hCH
      hS hDIV hE hH hCount hSl hSN hLoss hHH hFP hX hδ hc (hframe v hv)
    rw [Fm.d_eq x (M.pt v) M.i0] at h
    linarith only [h, hErr v]

end Mod

end Formalism.MainNotions.Lnk
