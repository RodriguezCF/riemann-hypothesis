import Formalism.SharpRestriction.GlobalSchurBounds.LossesSmallShares
import Formalism.SharpRestriction.DiscriminantGain.DivisionInputs
import Formalism.SizeWindowBrackets.ChainSlopeWindows.PChain

open scoped BigOperators
noncomputable section

namespace Formalism.MainNotions.Lnk

open Formalism.MainNotions
open Formalism.BasicNotions Formalism.HN NumberField Formalism.D5 Formalism.FrobeniusOrbits
open Formalism.LFunctionChainParameters.LHost Formalism.RankGapBounds.WeightedMeanData
open Formalism.LFunctionChainParameters.WeightedSlopeBounds Formalism.LFunctionChainParameters.characterSumData
open Formalism.LFunctionChainParameters.ThickSetMeanBounds
open Formalism.LFunctionChainParameters.LErr Formalism.LFunctionChainParameters.LChain

def CommonFrameBounds {eps : ℝ} (Fm : FamP eps) (CH : ℝ) : Prop :=
    ∃ x0 : ℝ, ∀ x ≥ x0, 40 ≤ x ^ CH ∧ ∃ etaB eB : ℝ,
      0 ≤ etaB ∧ 0 ≤ eB ∧ eB ≤ 1 / 4 ∧
      (etaB + 4 * Real.sqrt eB) * x ^ CH ≤ 6 ∧ ∀ i : Fm.Ix x,
      let D := Fm.D x i
      Frame_at D etaB eB ∧ ((∀ u, (D.div.Nu u).L.map (((D.host.d : D.what₂.LL)⁻¹ • D.div.Bk u).restrictScalars
        (𝓞 D.what₂.LL)) ≤ D.div.RR.dualL) →
      ∃ η e : ℝ, 0 ≤ η ∧ η ≤ etaB ∧ 0 ≤ e ∧ e ≤ eB ∧
      ∀ H : ℝ, sFrame D.div.Nu D.div.h + 2 * Real.log (D.host.d : ℝ) -
        D.div.RR.muMinDual ≤ H → 0 < H →
        ThetaNormalizedFrame.lower (sFrame D.div.Nu D.div.h + 2 * Real.log (D.host.d : ℝ))
          (uFrame D.div.Nu D.div.h) H D.what₂.delp (η + 4 * Real.sqrt e) -
          Real.log (Fintype.card D.what₂.Word : ℝ) ≤ D.div.RR.muDual)

theorem common_frame_bounds_of {eps : ℝ} (Fm : FamP eps) (CH C0 : ℝ) (hCH : 0 < CH) (hC0 : 1 ≤ C0)
    (hReal : FrameRealF Fm CH) (hLat : LatF Fm) (cPr : ChosenProviso Fm C0) (cCo : ChosenCode Fm C0 CH)
    (hNF : NuFullF Fm) : CommonFrameBounds Fm CH := by
  obtain ⟨a0, hReal⟩ := hReal
  obtain ⟨a1, hLat⟩ := hLat
  obtain ⟨a2, cPr⟩ := cPr
  obtain ⟨a3, cCo⟩ := cCo
  obtain ⟨a4, hNF⟩ := hNF
  refine ⟨Fm.x1 + 1 + |a0| + |a1| + |a2| + |a3| + |a4| + (40 : ℝ) ^ (1 / CH), fun x hx => ?_⟩
  have hpos := Fm.one_lt_family_threshold
  have h20 : (0 : ℝ) < (40 : ℝ) ^ (1 / CH) := Real.rpow_pos_of_pos (by norm_num) _
  have b0 := abs_nonneg a0
  have b1 := abs_nonneg a1
  have b2 := abs_nonneg a2
  have b3 := abs_nonneg a3
  have b4 := abs_nonneg a4
  have hx1 : Fm.x1 < x := by linarith
  have hx0 : 0 < x := by linarith
  have e0 : x ≥ a0 := by linarith [le_abs_self a0]
  have e1 : x ≥ a1 := by linarith [le_abs_self a1]
  have e2 : x ≥ a2 := by linarith [le_abs_self a2]
  have e3 : x ≥ a3 := by linarith [le_abs_self a3]
  have e4 : x ≥ a4 := by linarith [le_abs_self a4]
  have e5 : (40 : ℝ) ^ (1 / CH) ≤ x := by linarith
  have hxC : (40 : ℝ) ≤ x ^ CH := by
    calc (40 : ℝ) = ((40 : ℝ) ^ (1 / CH)) ^ CH := by
          rw [← Real.rpow_mul (by norm_num), one_div, inv_mul_cancel₀ hCH.ne', Real.rpow_one]
      _ ≤ x ^ CH := Real.rpow_le_rpow h20.le e5 hCH.le
  have hxCpos : 0 < x ^ CH := by linarith
  have hsg : x ^ (-CH) = (x ^ CH)⁻¹ := Real.rpow_neg hx0.le CH
  have hsg20 : x ^ (-CH) ≤ 1 / 20 := by
    rw [hsg, one_div]; exact inv_anti₀ (by norm_num) (by linarith)
  obtain ⟨de, eB, d0, d4, f0, f4, hnum, hR⟩ := hReal x e0
  refine ⟨hxC, 5 * x ^ (-CH) + 3 * Real.sqrt de, eB, by positivity, f0, f4, ?_, fun i => ?_⟩
  · have h5 : 5 * x ^ (-CH) * x ^ CH = 5 := by rw [hsg, mul_assoc, inv_mul_cancel₀ hxCpos.ne', mul_one]
    calc (5 * x ^ (-CH) + 3 * Real.sqrt de + 4 * Real.sqrt eB) * x ^ CH
        = 5 * x ^ (-CH) * x ^ CH + (3 * Real.sqrt de + 4 * Real.sqrt eB) * x ^ CH := by ring
      _ ≤ 5 + 1 := by rw [h5]; linarith
      _ = 6 := by norm_num
  · intro _
    refine ⟨frame_at_of (Fm.L x i) C0 CH (x ^ (-CH)) de eB
      (by rw [Fm.L_x x i hx1]) hsg20 d0 d4 hC0 (hR i)
      (cPr x e2 i) (cCo x e3 i) (hNF x e4 i) (hLat x e1 i), ?_⟩
    intro hdiv
    exact normalized_frame_at_of (Fm.L x i) C0 CH (x ^ (-CH)) de eB
      (by rw [Fm.L_x x i hx1]) hsg20 d0 d4 hC0 (hR i)
      (cPr x e2 i) (cCo x e3 i) (hNF x e4 i) (hLat x e1 i) hdiv

def ChainTiedWithAverageGain {eps : ℝ} (Fm : FamP eps) (eD eL K cHH eK CL x : ℝ) : Prop :=
  ∃ (i0 : Fm.Ix x) (m f : ℕ) (pt : (Fm.D x i0).R.A → Fm.Ix x) (av bv : ℕ → ℤ)
    (Top : Type) (_ : Fintype Top)
    (Dd : Data (Fm.D x i0).R.A (fun u0 => (Fm.D x (pt u0)).what₂.Word) Top m f) (C : Consts) (Xpp : ℝ)
    (ell : AddChar (E0 × (Fm.D x i0).R.A) ℂ → ℂ) (N : ℕ) (TT T2 : Finset (Fm.D x i0).R.A) (a : (Fm.D x i0).R.A → ℝ)
    (w : (Fm.D x i0).R.A → Fin m → E0 × (Fm.D x i0).R.A → ℝ) (eT : Top ≃ TT)
    (eP : Fin f ≃ PhiSet (H := (Fm.D x i0).R.A)) (η X' θ : ℝ),
    TiePts Fm x (Fm.D x i0).R.toFrame m f (Fm.D x i0).host.q (Fm.D x i0).host.d pt av bv ∧
    TieGlobal Fm x pt Dd Xpp η X' ∧ TieLocal Fm x pt Dd ∧
    TieArith Fm x pt av (arithOf (Fm.D x i0).host.toHostRaw) ell TT T2 a w ∧
    Dd.x = x ∧ Dd.ε = eps ∧ C.eDiv ≤ eD ∧ C.eLoss ≤ eL ∧ C.cHH ≤ cHH ∧
    Ident Dd (arithOf (Fm.D x i0).host.toHostRaw) N ell TT a w eT eP ∧
    Formalism.LFunctionChainParameters.LChain.SizeData₂ Dd C Xpp ∧
    ErrWindows Dd C Xpp eK K ∧
    BNBounds Dd T2 ∧
    GrowthInequalityRemainingHyps (arithOf (Fm.D x i0).host.toHostRaw) ell N TT T2 a w x eps Dd.b Dd.b' η X' θ CL ∧
    CostWindows x (fPl (Fm.D x i0).R.A) Dd.b η θ ∧
    RestSize eps x (Fintype.card (Fm.D x i0).R.A) TT.card T2.card m Dd.b Dd.k Dd.a ∧
    (LargeX x eps K C.cHH eK →
      topExcess (arithOf (Fm.D x i0).host.toHostRaw) N ell TT a w ≤
        x ^ (CErr C * eps) * ErrText Dd - Real.log ((Fm.D x i0).host.d : ℝ) / 2)

theorem linkCore_with_average_gain {eps : ℝ} (Fm : FamP eps) (Cabs CH eL C5 c6 : ℝ) (hCabs : 0 ≤ Cabs) (hCH : 0 ≤ CH) (heL : 0 ≤ eL) (hc6 : 0 < c6)
    (hCount : CountF Fm) (hSM : SlopesMF Fm) (hSN : SlopesNF Fm) (hLat : LatF Fm) (hNodes : NodesF Fm)
    (hFr : CommonFrameBounds Fm CH)
    (localInputs : ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x,
      2 ≤ (Fm.D x i).R.n0 ∧
      Nonempty (ThetaConcreteDivision.RealizedInputs (Fm.D x i) (Fm.L x i))) (hLoss : LossFS Fm eL) (hChar : CharF Fm) (hWin : WinF Fm)
    (cTT : ChosenTT Fm) (cQD : ChosenQD Fm C5) (cTh : ChosenThin Fm c6) (lI : LinkIRR Fm) (lD : LinkDIV Fm Cabs CH) :
    ∃ K cHH eK CL x0 : ℝ, ∀ x ≥ x0, x ∈ Fm.Win → ChainTiedWithAverageGain Fm Cabs eL K cHH eK CL x := by
  obtain ⟨xQD, hQD⟩ := cQD
  obtain ⟨xTh, hTh⟩ := cTh
  obtain ⟨Cc, xC, hCc, hC⟩ := hCount
  obtain ⟨Cs, xS, hCs, hS⟩ := hSM
  obtain ⟨C1, xN, hC1, hN⟩ := hSN
  obtain ⟨xL, hL⟩ := hLat
  obtain ⟨xO, hO⟩ := hNodes
  obtain ⟨xF, hF⟩ := hFr
  obtain ⟨xLoc, hLoc⟩ := localInputs
  obtain ⟨Cl, xLo, hCl, hLo⟩ := hLoss
  obtain ⟨xCh, hChr⟩ := hChar c6 C5
  obtain ⟨eK, xW, heK, hW⟩ := hWin c6 hc6
  obtain ⟨xTT, hTT⟩ := cTT
  obtain ⟨xI, hI⟩ := lI
  obtain ⟨Cd, xD, hD⟩ := lD
  have hCd' : (0 : ℝ) ≤ max Cd 0 := le_max_right _ _
  have hCdle : Cd ≤ max Cd 0 := le_max_left _ _
  refine ⟨max Cd 0 + Cc + Cs + C1 + Cl + 6, CH, eK, C5,
    Fm.x1 + 1 + |xQD| + |xTh| + |xC| + |xS| + |xN| + |xL| + |xO| + |xF| + |xLo| + |xCh| + |xW| + |xTT| + |xI| + |xD| + |xLoc|,
    fun x hx hxw => ?_⟩
  have hpos := Fm.one_lt_family_threshold
  have habs : 0 ≤ |xQD| ∧ 0 ≤ |xTh| ∧ 0 ≤ |xC| ∧ 0 ≤ |xS| ∧ 0 ≤ |xN| ∧ 0 ≤ |xL| ∧ 0 ≤ |xO| ∧ 0 ≤ |xF| ∧ 0 ≤ |xLo| ∧
      0 ≤ |xCh| ∧ 0 ≤ |xW| ∧ 0 ≤ |xTT| ∧ 0 ≤ |xI| ∧ 0 ≤ |xD| :=
    ⟨abs_nonneg _, abs_nonneg _, abs_nonneg _, abs_nonneg _, abs_nonneg _, abs_nonneg _, abs_nonneg _, abs_nonneg _,
      abs_nonneg _, abs_nonneg _, abs_nonneg _, abs_nonneg _, abs_nonneg _, abs_nonneg _⟩
  obtain ⟨a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14⟩ := habs
  have aLoc := abs_nonneg xLoc
  have hx1 : Fm.x1 < x := by linarith
  have hxQD : x ≥ xQD := by linarith [le_abs_self xQD]
  have hxTh : x ≥ xTh := by linarith [le_abs_self xTh]
  have hxC : x ≥ xC := by linarith [le_abs_self xC]
  have hxS : x ≥ xS := by linarith [le_abs_self xS]
  have hxN : x ≥ xN := by linarith [le_abs_self xN]
  have hxL : x ≥ xL := by linarith [le_abs_self xL]
  have hxO : x ≥ xO := by linarith [le_abs_self xO]
  have hxF : x ≥ xF := by linarith [le_abs_self xF]
  have hxLo : x ≥ xLo := by linarith [le_abs_self xLo]
  have hxCh : x ≥ xCh := by linarith [le_abs_self xCh]
  have hxW : x ≥ xW := by linarith [le_abs_self xW]
  have hxTT : x ≥ xTT := by linarith [le_abs_self xTT]
  have hxI : x ≥ xI := by linarith [le_abs_self xI]
  have hxD : x ≥ xD := by linarith [le_abs_self xD]
  have hxLoc : x ≥ xLoc := by linarith [le_abs_self xLoc, abs_nonneg xLoc]
  have hx0 : 0 < x := by linarith
  have hx1' : 1 ≤ x := by linarith

  obtain ⟨i0, av, bv, hadm, ⟨i1, hc1⟩, hloss⟩ := hLo x hxLo hxw
  have hcov : ∀ u0 : (Fm.D x i0).R.A, ∃ i : Fm.Ix x, (Fm.D x i).host.u0.val = hval _ u0 ∧
      ∀ t : (Fm.D x i).host.TT, (Fm.L x i).aT t = av (t : (Fm.D x i).R.A).val ∧
        (Fm.L x i).bT t = bv (t : (Fm.D x i).R.A).val :=
    fun u0 => Fm.coverS_carry x hx1 i1 av bv hc1 (hval _ u0) (by rw [Fm.R_eq x i1 i0]; exact hval_lt _ u0)
  choose pt hpt1 hpt2 using hcov
  let M : Mod Fm x := ⟨i0, av, bv, pt, hpt1, hpt2⟩
  have iq : Fact M.q.Prime := ⟨(Fm.D x i0).host.hyp.1⟩
  have id : Fact M.d.Prime := ⟨(Fm.D x i0).host.hyp.2.1⟩

  obtain ⟨hX40, etaB, eB, hη0, he0, he4, h6, hFa⟩ := hF x hxF
  have hFa' : ∀ u0 : M.e.A, Frame_at (Fm.D x (M.pt u0)) etaB eB := fun u0 => (hFa (M.pt u0)).1
  unfold Frame_at at hFa'
  choose ηv ev hηv0 hηvB hev0 hevB hfr using hFa'

  obtain ⟨ell, hell1, hell2, hell3, hell4⟩ := hChr x hxCh i0 M.e M.AD rfl HEq.rfl

  have heps : 0 < eps := by have h := (Fm.L x i0).sc.eps_pos; rwa [Fm.L_eps] at h
  have hez : 0 < Fm.ez := div_pos heps (lt_of_lt_of_le one_pos Fm.one_le_J)
  have heps1 : eps ≤ 1 := by have h := (Fm.L x i0).sc.eps_lt; rw [Fm.L_eps] at h; linarith
  have hsx : (Fm.L x i0).sc.x = x := Fm.L_x x i0 hx1
  have hse : (Fm.L x i0).sc.eps = eps := Fm.L_eps x i0
  have hWu : ∀ u0 : M.e.A, Win_at (Fm.L x (M.pt u0)) eK c6 := fun u0 => hW x hxW (M.pt u0)
  have hW0 := hW x hxW i0
  unfold Win_at at hW0
  rw [hsx, hse] at hW0
  obtain ⟨w1, w2, w3, w4, w5, w6, w7, w8, -, -, w11, w12, w13, w14, w15, -, w17⟩ := hW0
  have ha0 := sc_a_pos (Fm.L x i0).sc
  have hb'0 := sc_b'_pos (Fm.L x i0).sc
  have hb0 : 0 < (Fm.L x i0).sc.b := Real.exp_pos _
  have hab : (Fm.L x i0).sc.a = x * (Fm.L x i0).sc.b := by
    show (Fm.L x i0).sc.x * (Fm.L x i0).sc.b = _
    rw [hsx]
  have hLx : (Fm.L x i0).sc.L = x ^ eps := by
    show (Fm.L x i0).sc.x ^ (Fm.L x i0).sc.eps = _
    rw [hsx, hse]
  have hxe : 1 ≤ x ^ eps := Real.one_le_rpow hx1' heps.le
  have hb1 : 1 ≤ (Fm.L x i0).sc.b := by
    show 1 ≤ Real.exp (Fm.L x i0).sc.L
    rw [hLx]; exact Real.one_le_exp (by linarith)
  have hk5 := (Fm.D x i0).R.k_ge
  have hk1 : (1 : ℝ) ≤ ((Fm.D x i0).R.k : ℝ) := by exact_mod_cast (by omega : 1 ≤ (Fm.D x i0).R.k)
  have hnod := fun u0 : M.e.A => hO x hxO (M.pt u0) M.e M.m M.T2 u0 (M.w u0) (M.he u0) (M.hm u0)
    (fun h => by rw [M.mem_thick_set_model_iff, Fm.realisedChain_torus_eq x M.i0 (M.pt u0)]) (M.point_base_value u0) (M.w_tie u0) (M.w_off u0)
  have hcut : ∀ (u0 : M.e.A) (j : Fin M.m) (t : M.e.A) (ρ : E0 × M.e.A), t ∈ M.TT → InPhi ρ →
      M.a t / M.w u0 j ρ ≤ (⌈2 * (Fm.L x i0).sc.a⌉₊ : ℝ) := by
    intro u0 j t ρ ht hρ
    obtain ⟨ha1, ha2, -⟩ := M.av_facts hx1 (hWu 0) ((M.mem_TT t).mp ht)
    have hw1 := (hnod u0).1 j ρ hρ
    have hat : 0 ≤ M.a t := le_trans ha0.le ha1
    calc M.a t / M.w u0 j ρ ≤ M.a t := div_le_self hat hw1
      _ ≤ 2 * (Fm.L x i0).sc.a := ha2
      _ ≤ _ := Nat.le_ceil _
  have hDu := fun u0 : M.e.A => hD x hxD (M.pt u0)
  have hLau : ∀ u0 : M.e.A, 0 ≤ (Fm.L x (M.pt u0)).La := fun u0 => (hWu u0).2.2.2.2.1
  have hnT : (1 : ℝ) ≤ (Fintype.card ↥(Fm.TTn x) : ℝ) := by
    have h1 := (hTT x hxTT i0).1
    have hd : 0 < (Fm.L x i0).sc.delta1 := by
      unfold Scale.delta1; rw [hsx]; exact Real.rpow_pos_of_pos hx0 _
    have hn : (0 : ℝ) < ((Fm.D x i0).R.n : ℝ) := by
      have : 0 < (Fm.D x i0).R.n := (Fm.D x i0).R.toFrame.ord_pos
      exact_mod_cast this
    have h2 : (0 : ℝ) < ((Fm.D x i0).host.TT.card : ℝ) := lt_of_lt_of_le (by positivity) h1
    rw [card_TT Fm x i0] at h2
    exact_mod_cast Nat.succ_le_of_lt (Nat.cast_pos.mp h2)
  have hXpp0 : 0 ≤ (Fm.L x i0).sc.X'' (Fm.D x i0).R.n := by
    unfold Scale.X'' Scale.w''
    exact div_nonneg ha0.le (div_nonneg hb'0.le (mul_nonneg (by rw [hsx]; exact hx0.le) (Nat.cast_nonneg _)))
  have hX' : (Fm.L x i0).sc.X' = Real.exp (x ^ (eps / 3)) := by
    show Real.exp ((Fm.L x i0).sc.x ^ ((Fm.L x i0).sc.eps / 3)) = _
    rw [hsx, hse]

  have L1 : (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev).HidaSetting (mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH) :=
    ⟨hx0, hb0, ha0.le, hb'0.le, lt_of_lt_of_le one_pos hk1, w17, Nat.mul_pos two_pos (Fm.D x i0).R.toFrame.ord_pos,
      fun τ => le_trans ha0.le (M.av_facts hx1 (hWu 0) τ.2).1,
      fun u0 j ρ => lt_of_lt_of_le one_pos ((hnod u0).1 j _ (Finset.mem_filter.mp (M.eP ρ).2).2),
      fun u0 u => Nat.cast_pos.mpr ((hL x hxL (M.pt u0)).1 u).1,
      fun u0 u => Nat.cast_pos.mpr ((Fm.D x (M.pt u0)).mem u).A.T_prime.pos,
      fun u0 u => ((hL x hxL (M.pt u0)).1 u).2, hC1,
      (by
        have h := Real.exp_lt_exp.mpr (show -(x ^ (Fm.ez / 7)) < 0 by
          have := Real.rpow_pos_of_pos hx0 (Fm.ez / 7); linarith)
        rwa [Real.exp_zero] at h), hη0, he0, he4⟩
  have L2 : (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev).DIV (mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH) := by
    apply M.data_DIV hx1
    intro u0 u
    have h := (hDu u0).2.2.2.2.2.2.1 u
    have hX1 : 0 ≤ ((Fm.D x (M.pt u0)).host.TT.card : ℝ) * ((Fm.L x (M.pt u0)).sc.a * (Fm.L x (M.pt u0)).La) :=
      mul_nonneg (Nat.cast_nonneg _) (mul_nonneg (sc_a_pos _).le (hLau u0))
    have hX2 : 0 ≤ ((Fm.D x (M.pt u0)).R.m : ℝ) * (((Fm.L x (M.pt u0)).B0 + (Fm.L x (M.pt u0)).Nc) *
        (Fm.L x (M.pt u0)).sc.x ^ (Cabs * (Fm.L x (M.pt u0)).sc.eps)) :=
      mul_nonneg (Nat.cast_nonneg _) (mul_nonneg (add_nonneg (loss_bound_nonneg _) (Nc_nonneg _))
        (Real.rpow_nonneg (lt_trans one_pos (Fm.L x (M.pt u0)).sc.one_lt_alt).le _))
    have e1 := up hCdle hX1
    have e2 := up hCdle hX2
    show _ ≤ _ + max Cd 0 * _ * _ * _ + max Cd 0 * _ * _ * _ ^ (Cabs * _)
    simp only [mul_assoc] at h e1 e2 ⊢
    linarith
  have L3 : EComp5 (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev) (mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH) := by
    apply M.data_EComp5 hx1
    intro u0 u j hj
    exact le_trans ((hDu u0).2.2.2.2.2.2.2.1 u j hj) (up hCdle (loss_bound_nonneg _))
  have L4 : (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev).HComp (mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH) := by
    apply M.data_HComp hx1
    intro u0 u u'
    exact le_trans ((hDu u0).2.2.2.2.2.2.2.2 u u') (up hCdle (add_nonneg
      (mul_nonneg (mul_nonneg (Nat.cast_nonneg _) (sc_a_pos _).le) (hLau u0))
      (mul_nonneg (Nat.cast_nonneg _) (loss_bound_nonneg _))))
  have L5 : Count5 (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev) (mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH) :=
    M.data_Count5 hx1 _ _ _ _ _ _ _ (fun u0 => hC x hxC (M.pt u0))
  have L6 : (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev).Slopes (mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH) :=
    M.data_Slopes hx1 _ _ _ _ _ _ _ (fun u0 => hS x hxS (M.pt u0))
  have L7 : QuotientSlopeBoundsWith (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev) (mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH)
      ((Fm.L x i0).sc.X'' (Fm.D x i0).R.n) :=
    M.model_slopes_five hx1 _ _ _ _ _ _ _ (fun u0 => hN x hxN (M.pt u0))
  have L8 : LossBounds (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev) (mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH) := by
    intro u0
    obtain ⟨hio, hask⟩ := hloss (M.pt u0) (M.pt_w u0)
    have h1 := hask M.e M.m M.AD ⌈2 * (Fm.L x i0).sc.a⌉₊ M.TT M.a (M.w u0) (M.reads u0) (M.hAD u0) (hcut u0)
    rw [M.s_card u0, M.s_m u0, M.s_sc hx1 u0, M.s_x hx1, M.s_eps] at h1 hio
    exact ⟨h1, hio⟩
  have liftZP_newton : (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev).SlopeIneq := M.data_SlopeIneq _ _ _ _ _ _ hfr
  have ParameterUpperBound : (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev).HHBound (mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH) :=
    M.data_HHBound hx1 _ _ _ _ _ _ _ rfl (fun u0 => (hDu u0).2.1) (fun u0 => (hL x hxL (M.pt u0)).2)
  have liftZP_unit : (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev).FParams := fun u0 =>
    ⟨(hI x hxI (M.pt u0)).1, (hI x hxI (M.pt u0)).2, hηv0 u0, hηvB u0, hev0 u0, hevB u0⟩

  have hK6 : (6 : ℝ) ≤ max Cd 0 + Cc + Cs + C1 + Cl + 6 := by linarith
  have k1 : max Cd 0 ≤ max Cd 0 + Cc + Cs + C1 + Cl + 6 := by linarith
  have k2 : Cc ≤ max Cd 0 + Cc + Cs + C1 + Cl + 6 := by linarith
  have k3 : Cs ≤ max Cd 0 + Cc + Cs + C1 + Cl + 6 := by linarith
  have k4 : C1 ≤ max Cd 0 + Cc + Cs + C1 + Cl + 6 := by linarith
  have k5 : Cl ≤ max Cd 0 + Cc + Cs + C1 + Cl + 6 := by linarith
  have E0 : ErrWindows0 (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev) (mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH)
      ((Fm.L x i0).sc.X'' (Fm.D x i0).R.n) eK (max Cd 0 + Cc + Cs + C1 + Cl + 6) :=
    ⟨hx1', heps, heps1, hb1, le_of_eq hab.symm, hnT, w1, w2, heK, hk1, w3, w4, (by show 0 ≤ (Fm.L x i0).sc.L; rw [hLx]; linarith),
      (by show (Fm.L x i0).sc.L ≤ 2 * x ^ eps; rw [hLx]; linarith), w5, w6, hb'0.le, w7, hXpp0, w8,
      fun τ => ⟨le_trans ha0.le (M.av_facts hx1 (hWu 0) τ.2).1, (M.av_facts hx1 (hWu 0) τ.2).2.1⟩,
      loss_bound_nonneg _, Nc_nonneg _,
      fun u0 => by
        have h := (hWu u0).2.2.2.2.2.2.2.2.2.1
        rw [M.s_k u0] at h
        exact h,
      exp_neg_le_half (Real.one_le_rpow hx1' (by positivity : 0 ≤ Fm.ez / 7)), hη0, he0,
      ⟨hCd', k1, hCd', k1, hCd', k1, hCc, k2, hCs, k3, hC1, k4, hCl, k5, hCabs, heL, hCH⟩⟩
  have E1 : ErrWindows (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev) (mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH)
      ((Fm.L x i0).sc.X'' (Fm.D x i0).R.n) eK (max Cd 0 + Cc + Cs + C1 + Cl + 6) := by
    refine ⟨E0, ?_⟩
    show (etaB + 4 * Real.sqrt eB) * (x ^ CH * (Fm.L x i0).sc.b) ≤
      (max Cd 0 + Cc + Cs + C1 + Cl + 6) * x ^ eps * ((Fintype.card ↥(Fm.TTn x) : ℝ) * (Fm.L x i0).sc.a)
    have s1 : (etaB + 4 * Real.sqrt eB) * (x ^ CH * (Fm.L x i0).sc.b) ≤ 6 * (Fm.L x i0).sc.b := by
      rw [← mul_assoc]; exact mul_le_mul_of_nonneg_right h6 hb0.le
    have s2 : (Fm.L x i0).sc.b ≤ (Fintype.card ↥(Fm.TTn x) : ℝ) * (Fm.L x i0).sc.a := by
      rw [hab]
      calc (Fm.L x i0).sc.b = 1 * (1 * (Fm.L x i0).sc.b) := by ring
        _ ≤ (Fintype.card ↥(Fm.TTn x) : ℝ) * (x * (Fm.L x i0).sc.b) :=
          mul_le_mul hnT (mul_le_mul_of_nonneg_right hx1' hb0.le) (by linarith) (by linarith)
    have s3 : (6 : ℝ) ≤ (max Cd 0 + Cc + Cs + C1 + Cl + 6) * x ^ eps :=
      calc (6 : ℝ) ≤ (max Cd 0 + Cc + Cs + C1 + Cl + 6) * 1 := by linarith
        _ ≤ _ := mul_le_mul_of_nonneg_left hxe (by linarith)
    calc _ ≤ 6 * (Fm.L x i0).sc.b := s1
      _ ≤ 6 * ((Fintype.card ↥(Fm.TTn x) : ℝ) * (Fm.L x i0).sc.a) := by linarith
      _ ≤ _ := mul_le_mul_of_nonneg_right s3 (by positivity)
  have hcardH : (Fintype.card M.e.A : ℝ) = ((Fm.D x i0).R.n : ℝ) := by rw [card_HA]; rfl
  have B1 : BNBounds (M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev) M.T2 := by
    constructor
    · apply le_of_eq
      show (Fm.L x i0).B0 = (2 * (Fintype.card M.e.A : ℝ)) * (M.m : ℝ) * (Fm.L x i0).sc.b * x ^ eps
      rw [hcardH]
      unfold SizeData₂.B0 sizeBudget bSize Scale.b Scale.L Ranks.f
      rw [hsx, hse]; push_cast; ring
    · apply le_of_eq
      show (Fm.L x i0).Nc = (M.T2.card : ℝ) * ((Fm.D x i0).R.k : ℝ) * (Fm.L x i0).sc.b * x ^ eps /
        ((Fintype.card M.e.A : ℝ) * ((Fintype.card M.e.A : ℝ) * x ^ (-eps)))
      rw [hcardH, M.card_thick_set_model_eq]
      unfold SizeData₂.Nc budgetNc rankBudget bSize Scale.b Scale.L
      rw [hsx, hse]
  have R1 : GrowthInequalityRemainingHyps M.AD ell ⌈2 * (Fm.L x i0).sc.a⌉₊ M.TT M.T2 M.a M.w x eps (Fm.L x i0).sc.b
      (Fm.L x i0).sc.b' (Fm.L x i0).etaSz (Fm.L x i0).sc.X' (Real.exp (-(c6 * x ^ (eps / 8)))) C5 :=
    ⟨⟨(Fm.L x i0).etaSz_pos.le, Real.exp_pos _, hb'0,
      le_of_eq (by rw [← hab]; exact div_mul_cancel₀ _ (Real.exp_pos _).ne'), (Real.exp_pos _).le,
      fun t ht => (M.av_facts hx1 (hWu 0) ((M.mem_TT t).mp ht)).2.2,
      ⟨fun u0 j ρ hρ => lt_of_lt_of_le one_pos ((hnod u0).1 j ρ hρ),
        fun u0 j ρ hρ => by
          have h := (hnod u0).2.1 j ρ hρ
          rw [M.s_sc hx1 u0, Fm.eta_eq x (M.pt u0) M.i0] at h
          exact h,
        fun u0 j ρ hρ hρ' => by
          have h := (hnod u0).2.2 j ρ hρ hρ'
          rw [M.s_sc hx1 u0] at h
          exact h⟩,
      fun u0 j t ρ ht hρ => hcut u0 j t ρ ht hρ⟩,
      by rw [hX']; exact hell3 (hTh x hxTh i0), hell4 (hQD x hxQD i0)⟩
  have W1 : CostWindows x (fPl M.e.A) (Fm.L x i0).sc.b (Fm.L x i0).etaSz (Real.exp (-(c6 * x ^ (eps / 8)))) := by
    rw [M.fPl_eq]; exact ⟨w11, w12⟩
  have S1 : RestSize eps x (Fintype.card M.e.A) M.TT.card M.T2.card M.m (Fm.L x i0).sc.b
      ((Fm.D x i0).R.k : ℝ) (Fm.L x i0).sc.a := by
    have h1 := (hTT x hxTT i0).1
    unfold Scale.delta1 at h1
    rw [hsx, hse, card_TT Fm x i0, ← M.card_TT'] at h1
    refine ⟨by rw [hab]; have := mul_pos hx0 hb0; linarith, ?_, ?_, w13, ?_⟩
    · rw [hcardH]; exact h1
    · rw [hcardH, M.card_thick_set_model_eq]; exact w15
    · rw [hcardH]; exact w14
  refine ⟨i0, M.m, M.f, M.pt, av, bv, ↥(Fm.TTn x), inferInstance,
    M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev, mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH,
    (Fm.L x i0).sc.X'' (Fm.D x i0).R.n, ell, ⌈2 * (Fm.L x i0).sc.a⌉₊, M.TT, M.T2, M.a, M.w, M.eT, M.eP,
    (Fm.L x i0).etaSz, (Fm.L x i0).sc.X', Real.exp (-(c6 * x ^ (eps / 8))),
    M.tiePts, M.tieGlobal hx1 _ _ _ _ _ _, M.tieLocal _ _ _ _ _ _, M.tieArith ell hell1, rfl, rfl, le_refl _, le_refl _,
    le_refl _, M.ident _ _ _ _ _ _ ell hell2,
    ⟨L1, L2, L3, L4, L5, L6, L7, L8, liftZP_newton, ParameterUpperBound, liftZP_unit⟩, E1, B1, R1, W1, S1, ?_⟩

  intro hLarge
  have hTTpos : 0 < M.TT.card := by
    rw [M.card_TT']
    have h : 1 ≤ Fintype.card ↥(Fm.TTn x) := by exact_mod_cast hnT
    omega
  obtain ⟨t, ht⟩ := Finset.card_pos.mp hTTpos
  let C := mkC (max Cd 0) Cabs Cc Cs C1 Cl eL CH
  let A := M.data ⌈2 * (Fm.L x i0).sc.a⌉₊ CH etaB eB ηv ev
  let Xpp := (Fm.L x i0).sc.X'' (Fm.D x i0).R.n
  let err := x ^ (CErr C * eps) * ErrText A
  have hδ : A.delBar ≤ 1 / 2 :=
    exp_neg_le_half (Real.one_le_rpow hx1' (by positivity : 0 ≤ Fm.ez / 7))
  have hErr (v : M.e.A) : ErrX5at A C Xpp v ≤ err :=
    errX5at_le A C Xpp eK (max Cd 0 + Cc + Cs + C1 + Cl + 6) E1 hLarge v
  have hn0 : 2 ≤ M.e.n0 := (hLoc x hxLoc i0).1
  exact M.topExcess_gain_of_normalized_frames _ CH etaB eB ηv ev C Xpp err rfl
    ell hell2 t hn0 L1 L2 L3 L4 L5 L6 L7 L8 liftZP_newton ParameterUpperBound liftZP_unit
    hX40 hδ h6 hErr (by
      intro v hv
      obtain ⟨site, hsite⟩ := M.uncovered_top_of_model_point t v ht hv
      obtain ⟨I⟩ := (hLoc x hxLoc (M.pt v)).2
      exact (hFa (M.pt v)).2 (I.integral_at_uncovered_top site hsite))

end Formalism.MainNotions.Lnk

namespace ThetaConcreteDivision

open Formalism.BasicNotions Formalism.BasicNotions.DV Formalism.MainNotions Formalism.MainNotions.G
open Formalism.MainNotions.OrbitPlaces Formalism.MainNotions.WeightDegreeSizes
open Formalism.MainNotions.WeilJacquetShalikaLaw Formalism.L2.G.Adm2InU
open Formalism.L2.DIV Formalism.L2.G.ServJoint

variable {eps x : ℝ} (Fm : FamP eps) (hx : Fm.x1 < x) (i : Fm.Ix x)

local notation "D₀" => Fm.D x i
local notation "L₀" => Fm.L x i
local notation "Ex₀" => Fm.ex x hx i

/-- The ordinary family projections fill the arithmetic and compatibility fields. -/
def realizedInputs_of_family {Rw : DivisionRowsFace L₀} {C Cabs : ℝ}
    (P : DivisionPackageFace Rw C Cabs) (E : Ent D₀)
    (hKernel : KForm E (Fm.X x i) (Ex₀).tw 1) (hShape : ThetaKernelShapeAtD E (Fm.X x i))
    (hMember : MemberChainIntegral D₀) (hPoint : TwistedPointIntegral D₀ (Ex₀).tw)
    (hPeriodSum : PeriodClassSumWeyl D₀)
    (hPeriod : TwistedPeriodAdmissible D₀ (Fm.X x i) (Ex₀).tw)
    (hAdm2 : Formalism.MainNotions.LocalQuadraticParts.adm2 D₀ L₀)
    (hCut : ∀ μ, Used D₀ μ → CutUp D₀ μ)
    (hCc : (L₀).Cc + 1 ≤ (L₀).sc.x) (hSmall : (L₀).Sc + (L₀).etaSz ≤ (L₀).sc.b' / (L₀).sc.x) :
    RealizedInputs D₀ L₀ where
  rows := Rw
  C := C
  Cabs := Cabs
  package := P
  X := Fm.Gx x i
  K := Fm.GK
  Dx := Fm.X x i
  T := (Ex₀).tw
  E := E
  lev := (Ex₀).lev
  Xe := (Ex₀).errX
  ce := Fm.cX.err
  kernel := hKernel
  composition := Formalism.MainNotions.OrbitPlaces.compose D₀ (Ex₀).tw
  prime_separation := by
    intro k h
    have hs := (Fm.params x hx i).level_split _ ((D₀).host.g_level k)
    rw [h] at hs
    simp only [Host.cls, primeClass] at hs
    split_ifs at hs
  shape := hShape
  definition := (local_compatibility_family Fm x hx i).fdef
  error_defs := (Ex₀).err
  gain := gainLe_of_fills (Fm.fills x hx i) (isCs_drop Fm x hx i)
  into_model := (Fm.nuDef x hx i).1
  member_chain := hMember
  point_integral := hPoint
  period_sum := hPeriodSum
  period_admissible := hPeriod
  periods := hAdm2
  cut := hCut
  lattice_definition := Fm.nprimeDef x hx i
  window := ThetaSelectedWeights.window_comparison_of_sizes L₀ (D₀).R.ord_pos hCc hSmall

end ThetaConcreteDivision
