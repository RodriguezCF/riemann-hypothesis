import Formalism.SharpRestriction.DiscriminantGain.FamilyLink
import Formalism.SharpRestriction.Divisibility.ChainOperators.GenericFramesLetters
import Formalism.LocalRingCardinality.CoeNeZeroOfNotMem
import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.SevenLogLeLOfPowerBound

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.G
open Formalism.MainNotions.OrbitPlaces
open Formalism.MainNotions.WeightDegreeSizes Formalism.L2.G.Adm2InU Formalism.L2.DIV
open Filter

noncomputable section

namespace ThetaConcreteDivision

/-- The retained kernel and shape of the theta lifts, indexed by the actual family points. -/
def FamilyThetaInputs {eps : ℝ} (Fm : FamP eps) : Prop :=
  ∃ x0 : ℝ, ∀ x ≥ x0, ∀ (hx : Fm.x1 < x) (i : Fm.Ix x),
    ∃ E : Ent (Fm.D x i),
      KForm E (Fm.X x i) (Fm.ex x hx i).tw 1 ∧ ThetaKernelShapeAtD E (Fm.X x i)

/-- The kernel witnesses exposed by the `pdv` field of the upstream construction. -/
def RawFamilyThetaInputs {eps : ℝ} (Fm : FamP eps) : Prop :=
  ∃ x0 : ℝ, ∀ x ≥ x0, ∀ (hx : Fm.x1 < x) (i : Fm.Ix x),
    ∃ E : KerEnt (Fm.D x i) (Fm.X x i) (Fm.ex x hx i).tw,
      (E.UnUnit ∧ OrbitPlaces.KmapRat E ∧ OrbitPlaces.KFi (Fm.D x i) (Fm.ex x hx i).tw ∧
        OrbitPlaces.Stab0 (Fm.D x i)) ∧
      ∃ (ep : _) (be : _) (sg : _),
        OrbitPlaces.EvenConditionsInert (OrbitPlaces.ofKer (nuRowOK (Fm.D x i)) E ep be sg) (Fm.X x i) ∧
        OrbitPlaces.EvenConditionsAtC (OrbitPlaces.ofKer (nuRowOK (Fm.D x i)) E ep be sg) (Fm.X x i) ∧
        OrbitPlaces.OrbitBoundWithoutOperator (OrbitPlaces.ofKer (nuRowOK (Fm.D x i)) E ep be sg) (Fm.Gx x i) Fm.GK ∧
        OrbitPlaces.JetIntegralityBis (OrbitPlaces.ofKer (nuRowOK (Fm.D x i)) E ep be sg) (Fm.X x i) ∧
        OrbitPlaces.ThetaKernelShapeAtD (OrbitPlaces.ofKer (nuRowOK (Fm.D x i)) E ep be sg) (Fm.X x i) ∧
        OrbitPlaces.Shape (Fm.D x i) (Fm.L x i) (Fm.Gx x i) (OrbitPlaces.ofKer (nuRowOK (Fm.D x i)) E ep be sg)

theorem familyThetaInputs_of_raw {eps : ℝ} (Fm : FamP eps) (hpdv : RawFamilyThetaInputs Fm) :
    FamilyThetaInputs Fm := by
  obtain ⟨x0, hf⟩ := hpdv
  refine ⟨x0, fun x hx hx1 i => ?_⟩
  obtain ⟨E, ⟨hUn, hR, hKF, hS0⟩, ep, be, sg, _, _, _, _, hs, _⟩ := hf x hx hx1 i
  have hW : OrbitPlaces.SB E := fun _ _ _ _ _ _ B hB =>
    (DIV.Lemmas.theta_isometry_facts_hold (Fm.D x i) _ _ _ _ _ B).1 hB
  exact ⟨OrbitPlaces.ofKer (nuRowOK (Fm.D x i)) E ep be sg,
    OrbitPlaces.kform_of_ker E _ (fun _ _ => rfl) rfl hW hUn hR hKF
      (Or.inr ⟨rfl, hS0⟩), hs⟩

/-- The four period inputs are exactly the hypotheses retained by the admissibility proof. -/
def FamilyPeriodInputs {eps : ℝ} (Fm : FamP eps) : Prop :=
  (∃ x0 : ℝ, ∀ x ≥ x0, ∀ (_ : Fm.x1 < x) (i : Fm.Ix x), MemberChainIntegral (Fm.D x i)) ∧
  (∃ x0 : ℝ, ∀ x ≥ x0, ∀ (hx : Fm.x1 < x) (i : Fm.Ix x),
    TwistedPointIntegral (Fm.D x i) (Fm.ex x hx i).tw) ∧
  (∃ x0 : ℝ, ∀ x ≥ x0, ∀ (_ : Fm.x1 < x) (i : Fm.Ix x), PeriodClassSumWeyl (Fm.D x i)) ∧
  (∃ x0 : ℝ, ∀ x ≥ x0, ∀ (hx : Fm.x1 < x) (i : Fm.Ix x),
    TwistedPeriodAdmissible (Fm.D x i) (Fm.X x i) (Fm.ex x hx i).tw)

theorem familyPeriodInputs_closed {𝒞 : FamClass} (h : Adm2InU 𝒞) :
    Closed 𝒞 (fun Fm _ => FamilyPeriodInputs Fm) :=
  h.pt0.and (h.ptTw.and (h.per0.and h.perTw))

/-- The family sizes supply the two numerical prerequisites of the local proof. -/
theorem family_window_at {eps : ℝ} (Fm : FamP eps) (heps : 0 < eps) {x : ℝ}
    (hx : Fm.x1 < x) (h3 : 3 ≤ x) (hCo : Fm.Co + 1 ≤ x) (hCc : Fm.Cc + 1 ≤ x)
    (i : Fm.Ix x) :
    2 ≤ (Fm.D x i).R.n0 ∧
      (Fm.L x i).Cc + 1 ≤ (Fm.L x i).sc.x ∧
      (Fm.L x i).Sc + (Fm.L x i).etaSz ≤ (Fm.L x i).sc.b' / (Fm.L x i).sc.x := by
  let D := Fm.D x i
  let L := Fm.L x i
  have hn := (Fm.sizes x hx i).1.1
  change L.sc.x ^ (2 + 8 * L.sc.eps - szTh L) ≤ (D.R.n : ℝ) at hn
  unfold szTh at hn
  rw [Fm.L_x x i hx, Fm.L_eps x i] at hn
  have hnx : x ≤ (D.R.n : ℝ) := by
    calc
      x = x ^ (1 : ℝ) := (Real.rpow_one _).symm
      _ ≤ x ^ (2 + 8 * eps - eps / 100) :=
        Real.rpow_le_rpow_of_exponent_le (by linarith) (by linarith)
      _ ≤ _ := hn
  have hn0 : 2 ≤ D.R.n0 := by
    by_contra h
    have hsmall : (D.R.n0 : ℝ) ≤ 1 := by exact_mod_cast (show D.R.n0 ≤ 1 by omega)
    have ho : (D.R.o : ℝ) ≤ Fm.Co := Fm.o_le_Co x i hx
    have heq : (D.R.n : ℝ) = (D.R.o : ℝ) * (D.R.n0 : ℝ) := by
      exact_mod_cast D.R.toFrame.exponent_eq_index_mul_cyclic_order
    have hmul := mul_le_mul_of_nonneg_left hsmall (Nat.cast_nonneg D.R.o : (0 : ℝ) ≤ D.R.o)
    linarith only [heq, hmul, ho, hCo, hnx]
  have hsmall := (flipTwoThree.nums_small (Fm.params x hx i) (by linarith : (3 : ℝ) ≤ D.R.n)).2
  refine ⟨hn0, ?_, ?_⟩
  · rwa [Fm.Cc_eq, Fm.L_x x i hx]
  · have hm : (0 : ℝ) ≤ (D.R.m : ℝ) * D.R.t := by positivity
    linarith only [hsmall, hm]

/-- The hypotheses already used upstream jointly provide the strengthened local data. -/
theorem eventually_realized_inputs {eps : ℝ} (Fm : FamP eps) (heps : 0 < eps)
    (Rw : Σ' x0 : ℝ, ∀ x, Fm.x1 < x → x0 ≤ x → ∀ i : Fm.Ix x, DivisionRowsFace (Fm.L x i))
    {Cabs CH : ℝ} (B : BridgeRowsF Fm Rw Cabs CH) (hN : DIVinN Fm)
    (hKernel : FamilyThetaInputs Fm) (hPeriod : FamilyPeriodInputs Fm) :
    ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x,
      2 ≤ (Fm.D x i).R.n0 ∧ Nonempty (RealizedInputs (Fm.D x i) (Fm.L x i)) := by
  obtain ⟨C, xp, hp⟩ := B.pkg hN
  obtain ⟨xa, ha⟩ := B.adm2
  obtain ⟨xc, hc⟩ := B.cut
  obtain ⟨xk, hk⟩ := hKernel
  obtain ⟨⟨x0, h0⟩, ⟨xt, ht⟩, ⟨xs, hs⟩, ⟨xu, hu⟩⟩ := hPeriod
  apply eventually_atTop.mp
  filter_upwards [eventually_gt_atTop Fm.x1, eventually_ge_atTop Rw.1, eventually_ge_atTop xp,
    eventually_ge_atTop xa, eventually_ge_atTop xc, eventually_ge_atTop xk, eventually_ge_atTop x0,
    eventually_ge_atTop xt, eventually_ge_atTop xs, eventually_ge_atTop xu,
    eventually_ge_atTop (max 3 (max (Fm.Co + 1) (Fm.Cc + 1)))] with
      x hx hrows hxp hxa hxc hxk hx0 hxt hxs hxu hsize
  intro i
  obtain ⟨hn0, hCc, hSmall⟩ := family_window_at Fm heps hx
    ((le_max_left _ _).trans hsize)
    ((le_max_left _ _).trans ((le_max_right _ _).trans hsize))
    ((le_max_right _ _).trans ((le_max_right _ _).trans hsize)) i
  obtain ⟨P⟩ := hp x hxp hx hrows i
  obtain ⟨E, hK, hShape⟩ := hk x hxk hx i
  refine ⟨hn0, ⟨realizedInputs_of_family Fm hx i P E hK hShape (h0 x hx0 hx i)
    (ht x hxt hx i) (hs x hxs hx i) (hu x hxu hx i) (ha x hxa i) (hc x hxc i) hCc hSmall⟩⟩

/-- The same closed hypotheses as the existing kernel, period and division constructions supply the local input. -/
theorem realized_inputs_closed {𝒞 : FamClass} (hKer : Closed 𝒞 (fun Fm _ => RawFamilyThetaInputs Fm))
    (hPer : Adm2InU 𝒞) (Cabs : ℝ)
    (hRows : Closed 𝒞 fun Fm CH =>
      ∃ Rw : Σ' x0 : ℝ, ∀ x, Fm.x1 < x → x0 ≤ x → ∀ i : Fm.Ix x,
        DivisionRowsFace (Fm.L x i), BridgeRowsF Fm Rw Cabs CH)
    (hN : Closed 𝒞 fun Fm _ => DIVinN Fm) :
    Closed 𝒞 fun Fm _ => ∃ x0 : ℝ, ∀ x ≥ x0, ∀ i : Fm.Ix x,
      2 ≤ (Fm.D x i).R.n0 ∧ Nonempty (RealizedInputs (Fm.D x i) (Fm.L x i)) := by
  apply (hKer.and ((familyPeriodInputs_closed hPer).and
    (hRows.and hN))).imp
  rintro eps Fm CH he ⟨hk, hp, ⟨Rw, B⟩, hn⟩
  exact eventually_realized_inputs Fm he Rw B hn (familyThetaInputs_of_raw Fm hk) hp

end ThetaConcreteDivision

namespace Formalism.MainNotions.Lnk

open ThetaConcreteDivision

/-- The ordinary and improved division estimates are taken from the same upstream bridge. -/
theorem linkCore_with_upstream_inputs {eps : ℝ} (Fm : FamP eps)
    (Cabs CH C0 eL C5 c6 : ℝ) (heps : 0 < eps) (hCabs : 0 ≤ Cabs) (hCH : 0 < CH)
    (hC0 : 1 ≤ C0) (heL : 0 ≤ eL) (hc6 : 0 < c6)
    (hCount : CountF Fm) (hSM : SlopesMF Fm) (hSN : SlopesNF Fm) (hLat : LatF Fm)
    (hNodes : NodesF Fm) (hReal : FrameRealF Fm CH)
    (cPr : ChosenProviso Fm C0) (cCo : ChosenCode Fm C0 CH) (hFull : NuFullF Fm)
    (hLoss : LossFS Fm eL) (hChar : CharF Fm) (hWin : WinF Fm)
    (cTT : ChosenTT Fm) (cQD : ChosenQD Fm C5) (cTh : ChosenThin Fm c6) (lI : LinkIRR Fm)
    (Rw : Σ' x0 : ℝ, ∀ x, Fm.x1 < x → x0 ≤ x → ∀ i : Fm.Ix x, DivisionRowsFace (Fm.L x i))
    (B : BridgeRowsF Fm Rw Cabs CH) (hEta : LinkEta Fm) (hN : DIVinN Fm)
    (hKernel : RawFamilyThetaInputs Fm) (hPeriod : FamilyPeriodInputs Fm) :
    ∃ K cHH eK CL x0 : ℝ, ∀ x ≥ x0, x ∈ Fm.Win → ChainTiedWithAverageGain Fm Cabs eL K cHH eK CL x :=
  linkCore_with_average_gain Fm Cabs CH eL C5 c6 hCabs hCH.le heL hc6
    hCount hSM hSN hLat hNodes (common_frame_bounds_of Fm CH C0 hCH hC0 hReal hLat cPr cCo hFull)
    (eventually_realized_inputs Fm heps Rw B hN (familyThetaInputs_of_raw Fm hKernel) hPeriod)
    hLoss hChar hWin cTT cQD cTh lI (linkDIVt_of_rowsF Fm Rw Cabs CH B hEta hN)

end Formalism.MainNotions.Lnk
