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

private def NormalizedFrameAt (D : D7) (etaB eB : ℝ) : Prop :=
    (∀ u, (D.div.Nu u).L.map (((D.host.d : D.what₂.LL)⁻¹ • D.div.Bk u).restrictScalars
      (𝓞 D.what₂.LL)) ≤ D.div.RR.dualL) →
    ∃ η e : ℝ, 0 ≤ η ∧ η ≤ etaB ∧ 0 ≤ e ∧ e ≤ eB ∧
    ∀ H : ℝ, sFrame D.div.Nu D.div.h + 2 * Real.log (D.host.d : ℝ) -
      D.div.RR.muMinDual ≤ H → 0 < H →
      ThetaNormalizedFrame.lower (sFrame D.div.Nu D.div.h + 2 * Real.log (D.host.d : ℝ))
        (uFrame D.div.Nu D.div.h) H D.what₂.delp (η + 4 * Real.sqrt e) -
        Real.log (Fintype.card D.what₂.Word : ℝ) ≤ D.div.RR.muDual

def CommonFrameBounds {eps : ℝ} (Fm : FamP eps) (CH : ℝ) : Prop :=
    ∃ x0 : ℝ, ∀ x ≥ x0, 40 ≤ x ^ CH ∧ ∃ etaB eB : ℝ,
      0 ≤ etaB ∧ 0 ≤ eB ∧ eB ≤ 1 / 4 ∧
      (etaB + 4 * Real.sqrt eB) * x ^ CH ≤ 6 ∧ ∀ i : Fm.Ix x,
      let D := Fm.D x i
      Frame_at D etaB eB ∧ NormalizedFrameAt D etaB eB

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

private def averageGainTail {eps : ℝ} (Fm : FamP eps) : ChainTiedTail Fm := by
  intro x K eK i0 m f pt Top inst Dd C ell N TT a w rest
  exact rest ∧ (LargeX x eps K C.cHH eK →
    topExcess (arithOf (Fm.D x i0).host.toHostRaw) N ell TT a w ≤
      x ^ (CErr C * eps) * ErrText Dd - Real.log ((Fm.D x i0).host.d : ℝ) / 2)

def ChainTiedWithAverageGain {eps : ℝ} (Fm : FamP eps) (eD eL K cHH eK CL x : ℝ) : Prop :=
  ChainTiedWith Fm eD eL K cHH eK CL x (averageGainTail Fm)

private def LocalInputsAt {eps : ℝ} (Fm : FamP eps) (x : ℝ) : Prop :=
  ∀ i : Fm.Ix x, 2 ≤ (Fm.D x i).R.n0 ∧
    Nonempty (ThetaConcreteDivision.RealizedInputs (Fm.D x i) (Fm.L x i))

theorem linkCore_with_average_gain {eps : ℝ} (Fm : FamP eps) (Cabs CH eL C5 c6 : ℝ) (hCabs : 0 ≤ Cabs) (hCH : 0 ≤ CH) (heL : 0 ≤ eL) (hc6 : 0 < c6)
    (hCount : CountF Fm) (hSM : SlopesMF Fm) (hSN : SlopesNF Fm) (hLat : LatF Fm) (hNodes : NodesF Fm)
    (hFr : CommonFrameBounds Fm CH)
    (localInputs : ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x,
      2 ≤ (Fm.D x i).R.n0 ∧
      Nonempty (ThetaConcreteDivision.RealizedInputs (Fm.D x i) (Fm.L x i))) (hLoss : LossFS Fm eL) (hChar : CharF Fm) (hWin : WinF Fm)
    (cTT : ChosenTT Fm) (cQD : ChosenQD Fm C5) (cTh : ChosenThin Fm c6) (lI : LinkIRR Fm) (lD : LinkDIV Fm Cabs CH) :
    ∃ K cHH eK CL x0 : ℝ, ∀ x ≥ x0, x ∈ Fm.Win → ChainTiedWithAverageGain Fm Cabs eL K cHH eK CL x := by
  let extra := fun x etaB eB => 40 ≤ x ^ CH ∧ LocalInputsAt Fm x ∧ ∀ i : Fm.Ix x, NormalizedFrameAt (Fm.D x i) etaB eB
  unfold ChainTiedWithAverageGain
  refine linkCoreWith Fm extra (averageGainTail Fm) Cabs CH eL C5 c6 hCabs hCH heL hc6
    hCount hSM hSN hLat hNodes ?_ hLoss hChar hWin cTT cQD cTh lI lD ?_
  · obtain ⟨xF, hF⟩ := hFr
    obtain ⟨xLoc, hLoc⟩ := localInputs
    refine ⟨max xF xLoc, fun x hx => ?_⟩
    obtain ⟨h40, etaB, eB, hη, he, he4, h6, hFrame⟩ := hF x ((le_max_left _ _).trans hx)
    exact ⟨etaB, eB, hη, he, he4, h6,
      ⟨h40, hLoc x ((le_max_right _ _).trans hx), fun i => (hFrame i).2⟩,
      fun i => (hFrame i).1⟩
  · intro x M N K eK etaB eB ηv ev C Xpp ell hx hextra h6 hTT hl hSize hWin hCH' rest hrest
    obtain ⟨hX40, hLoc, hFrame⟩ := hextra
    obtain ⟨hS, hDIV, hE, hH, hCount, hSl, hSN, hLoss, hSI, hHH, hFP⟩ := hSize
    refine ⟨hrest, fun hLarge => ?_⟩
    obtain ⟨t, ht⟩ := hTT
    let A := M.data N CH etaB eB ηv ev
    let err := x ^ (CErr C * eps) * ErrText A
    have hez : 0 < Fm.ez := by
      rw [← Fm.L_ez x M.i0]
      exact (Fm.L x M.i0).sc.ez_pos
    have hδ : A.delBar ≤ 1 / 2 :=
      exp_neg_le_half (Real.one_le_rpow hx (by positivity : 0 ≤ Fm.ez / 7))
    have hErr (v : M.e.A) : ErrX5at A C Xpp v ≤ err :=
      errX5at_le A C Xpp eK K hWin hLarge v
    have hn0 : 2 ≤ M.e.n0 := (hLoc M.i0).1
    exact M.topExcess_gain_of_normalized_frames N CH etaB eB ηv ev C Xpp err hCH'
      ell hl t hn0 hS hDIV hE hH hCount hSl hSN hLoss hSI hHH hFP hX40 hδ h6 hErr (by
        intro v hv
        obtain ⟨site, hsite⟩ := M.uncovered_top_of_model_point t v ht hv
        obtain ⟨I⟩ := (hLoc (M.pt v)).2
        exact hFrame (M.pt v) (I.integral_at_uncovered_top site hsite))

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
