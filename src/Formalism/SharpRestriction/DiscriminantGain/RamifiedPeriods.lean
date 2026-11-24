import Formalism.LocalToGlobal.GroupLattices.AdmissibleAtGeneratorPlaces
import Formalism.LocalRingCardinality.DataKerI
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CardCellsEqSumRowLen
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.EntAtD
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CoreTermLe
import Formalism.SharpRestriction.Divisibility.OrbitPlaces

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.FrobeniusOrbits PI.EntAtD.W
open scoped BigOperators
open Classical
set_option autoImplicit false

namespace ThetaDiscriminantPeriods

/-- A row after the first contributes a strict gain when it exceeds the opposite width. -/
theorem cutoff_strict_of_row (α β : YoungDiagram) (r : ℕ) (hr : r ≠ 0)
    (hwidth : β.rowLen 0 < α.rowLen r) :
    rowContractionBound α β < cPr α β := by
  let rows := insert 0 (α.cells.image Prod.fst)
  have h0 : 0 ∈ rows := Finset.mem_insert_self _ _
  have hrmem : r ∈ rows.erase 0 := by
    apply Finset.mem_erase.mpr
    refine ⟨hr, Finset.mem_insert_of_mem (Finset.mem_image.mpr ⟨(r, 0), ?_, rfl⟩)⟩
    exact (YoungDiagram.mem_cells _).mpr
      (YoungDiagram.mem_iff_lt_rowLen.mpr (Nat.zero_lt_of_lt hwidth))
  have hcard : α.cells.card = ∑ j ∈ rows, α.rowLen j := by
    rw [Finset.card_eq_sum_card_fiberwise (f := Prod.fst) (t := rows)]
    · refine Finset.sum_congr rfl fun j _ => ?_
      rw [YoungDiagram.rowLen_eq_card]
      rfl
    · intro x hx
      exact Finset.mem_insert_of_mem (Finset.mem_image_of_mem Prod.fst hx)
  have hrest : (∑ j ∈ rows.erase 0, min (α.rowLen j) (β.rowLen 0)) <
      ∑ j ∈ rows.erase 0, α.rowLen j :=
    Finset.sum_lt_sum (fun _ _ => min_le_left _ _) ⟨r, hrmem, (min_le_right _ _).trans_lt hwidth⟩
  change (∑ j ∈ rows, min (α.rowLen j) (β.rowLen 0)) < cPr α β
  rw [cPr, hcard, ← Finset.add_sum_erase rows α.rowLen h0,
    ← Finset.add_sum_erase rows (fun j => min (α.rowLen j) (β.rowLen 0)) h0]
  omega

open Formalism.MainNotions Formalism.MainNotions.OrbitPlaces in
/-- Preserve the row-by-row estimate through the conversion from entries to one lift. -/
theorem lift_at_discriminant_all_rows {D : D7} {L : SizeData₂ D} {K : Consts}
    {Dx : DivX D} {T : TwForms D} {E : Ent D} {lev : LevelData D} {Xe : ErrX D}
    {ce : ErrC} {sp : ℝ} (hk : KForm E Dx T sp)
    (hgd : TypePrimeNotDiscriminant D) (hs : ThetaKernelShapeAtD E Dx)
    (hE : ErrDefs D L Xe lev K ce) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hT : D.what₂.places.resChar w ≠ (D.mem u).A.T)
    (hd : D.host.cls (D.what₂.places.resChar w) = PrimeClass.ramD)
    (μ : D.what₂.Tup) (hUs : DV.Used D μ)
    (hQ : D.what₂.places.resChar w ∉ Dx.Qp μ) (i : ℕ) (hi : i < D.R.m) :
    KGe T u μ w i
      (-((∑ t : HH D, (rowContractionBound (E.nu u i (false, t)) (E.nu u i (true, t)) : ℝ)) / 2)
        - (if i = 0 then 1 - sp else 1) * Formalism.MainNotions.WeilJacquetShalikaLaw.vDG D u w) := by
  have hpd := cls_ramD hd
  have hg : D.what₂.places.resChar w ∉ ({D.host.g 0, D.host.g 1} : Finset ℕ) := by
    rw [Finset.mem_insert, Finset.mem_singleton]
    rintro (h | h)
    · exact hgd 0 (h.symm.trans hpd)
    · exact hgd 1 (h.symm.trans hpd)
  have hL : LevelFree Dx u μ w := ⟨hT, hg, hQ⟩
  apply hk hE.dgam u μ w hUs hL i hi
  intro A B
  exact core_of_rowContractionBound (expand_of pExpCoeff) pBridge pLapComm
    (HH D) (D.R.N i) (D.R.N (i + 1)) (D.what₂.places.resChar w)
    (E.nu u i) (E.Th u μ w i A B) (hs u μ w hL hd i hi A B)

end ThetaDiscriminantPeriods

namespace ThetaDiscriminantPeriods
open Formalism.MainNotions Formalism.MainNotions.OrbitPlaces
open Formalism.MainNotions.WeilJacquetShalikaLaw

/-- Half the amount by which the row cutoff improves the uniform discriminant cutoff. -/
noncomputable def rowGain {D : D7} (E : Ent D) (u : D.what₂.Word) (j : ℕ) : ℝ :=
  ((Finset.univ.sup' ⟨D.u₀, Finset.mem_univ _⟩
    (fun v : D.what₂.Word => ∑ t : HH D, ctD D v j t)) -
    ∑ t : HH D, (rowContractionBound (E.nu u (j - 1) (false, t))
      (E.nu u (j - 1) (true, t)) : ℝ)) / 2

/-- Compose the sharper estimates while preserving the word-dependent gain. -/
theorem chain_at_discriminant_all_rows {D : D7} {L : SizeData₂ D} {K : Consts}
    {Dx : DivX D} {T : TwForms D} {E : Ent D} {lev : LevelData D} {Xe : ErrX D}
    {ce : ErrC} {sp : ℝ} (hk : KForm E Dx T sp) (hc : ValuationComposition D T)
    (hgd : TypePrimeNotDiscriminant D) (hs : ThetaKernelShapeAtD E Dx)
    (hF : L.FDef) (hE : ErrDefs D L Xe lev K ce)
    (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hT : D.what₂.places.resChar w ≠ (D.mem u).A.T)
    (hd : D.host.cls (D.what₂.places.resChar w) = PrimeClass.ramD)
    (μ : D.what₂.Tup) (hUs : DV.Used D μ) (hQ : D.what₂.places.resChar w ∉ Dx.Qp μ)
    (x : ((D.fm u).lat 0).V) (hx : x ∈ LT.Sram D u w) :
    ColGe T u μ w x
      (((∑ j ∈ SizeData₂.lifts D, (L.F j w - EatD D j - vDG D u w)) + sp * vDG D u w) +
        ∑ j ∈ SizeData₂.lifts D, rowGain E u j) := by
  have hg : D.what₂.places.resChar w ∉ ({D.host.g 0, D.host.g 1} : Finset ℕ) := by
    rw [Finset.mem_insert, Finset.mem_singleton]
    rintro (h | h)
    · exact hgd 0 (h.symm.trans (cls_ramD hd))
    · exact hgd 1 (h.symm.trans (cls_ramD hd))
  let s (j : ℕ) := (L.F j w - EatD D j - vDG D u w) + rowGain E u j +
    (if j = 1 then sp * vDG D u w else 0)
  have h := hc u μ w s (fun i hi => by
    have hb := lift_at_discriminant_all_rows hk hgd hs hE u w hT hd μ hUs hQ i hi
    have hFj : L.F (i + 1) w = FRamD D (i + 1) := by
      rw [hF (i + 1) (succ_mem_lifts hi) w]
      unfold Fval FvalP SizeData₂.gTypes
      rw [ite_eq_right hg, ite_eq_left hd]
    have heq : s (i + 1) =
        -((∑ t : HH D, (rowContractionBound (E.nu u i (false, t))
          (E.nu u i (true, t)) : ℝ)) / 2) -
          (if i = 0 then 1 - sp else 1) * vDG D u w := by
      unfold s rowGain EatD
      rw [hFj, Nat.add_sub_cancel]
      by_cases h0 : i = 0
      · simp [h0]
        ring
      · simp [h0]
        ring
    rw [heq]
    exact hb) x hx.1
  unfold s at h
  rw [sum_shape, Finset.sum_add_distrib] at h
  convert h using 1
  ring

/-- A strict comparison of the integral diagram cutoffs gives a half-unit gain per lift. -/
theorem half_le_rowGain {D : D7} (E : Ent D) (u : D.what₂.Word) (i : ℕ)
    (hi : i < D.R.m) (t : HH D)
    (ht : (E.nu u i (true, t)).rowLen 0 < (E.nu u i (false, t)).rowLen 1) :
    (1 : ℝ) / 2 ≤ rowGain E u (i + 1) := by
  have hN : 2 ≤ D.R.N i := by
    unfold Ranks.N
    have := D.R.m_add_three_le_k
    omega
  let a (z : HH D) := rowContractionBound (E.nu u i (false, z)) (E.nu u i (true, z))
  let b (z : HH D) := cPr (E.nu u i (false, z)) (E.nu u i (true, z))
  have hab : (∑ z : HH D, a z) < ∑ z : HH D, b z :=
    Finset.sum_lt_sum (fun z _ => rowContractionBound_le_cPr _ _)
      ⟨t, Finset.mem_univ t, cutoff_strict_of_row _ _ 1 (by decide) ht⟩
  have hab' : (∑ z : HH D, (a z : ℝ)) + 1 ≤ ∑ z : HH D, (b z : ℝ) := by
    exact_mod_cast Nat.succ_le_of_lt hab
  have hbc : (∑ z : HH D, (b z : ℝ)) ≤ ∑ z : HH D, ctD D u (i + 1) z :=
    Finset.sum_le_sum fun z _ => cPr_le_ctD D u i (E.nu u i) (E.nu_row u i hi) hN z
  have hsup := Finset.le_sup' (fun v : D.what₂.Word => ∑ z : HH D, ctD D v (i + 1) z)
    (Finset.mem_univ u)
  unfold rowGain
  rw [Nat.add_sub_cancel]
  change (1 : ℝ) / 2 ≤ (_ - ∑ z : HH D, (a z : ℝ)) / 2
  linarith

theorem one_le_chain_rowGain {D : D7} (E : Ent D) (u : D.what₂.Word)
    (hw : ∀ i < D.R.m, ∃ t : HH D,
      (E.nu u i (true, t)).rowLen 0 < (E.nu u i (false, t)).rowLen 1) :
    (1 : ℝ) ≤ ∑ j ∈ SizeData₂.lifts D, rowGain E u j := by
  have hsum : (∑ _j ∈ SizeData₂.lifts D, (1 : ℝ) / 2) ≤
      ∑ j ∈ SizeData₂.lifts D, rowGain E u j := by
    apply Finset.sum_le_sum
    intro j hj
    have hj' := Finset.mem_Icc.mp hj
    obtain ⟨t, ht⟩ := hw (j - 1) (by omega)
    have h := half_le_rowGain E u (j - 1) (by omega) t ht
    rwa [Nat.sub_add_cancel hj'.1] at h
  have hm : (2 : ℝ) ≤ D.R.m := by exact_mod_cast D.R.two_le_m
  simp [SizeData₂.lifts, Nat.card_Icc] at hsum
  unfold SizeData₂.lifts
  linarith

end ThetaDiscriminantPeriods

open Formalism.BasicNotions Formalism.BasicNotions.DV Formalism.MainNotions
open Formalism.MainNotions.G Formalism.MainNotions.OrbitPlaces
open Formalism.MainNotions.WeilJacquetShalikaLaw Formalism.MainNotions.WeightDegreeSizes
open Formalism.L2.G.Adm2InU
open scoped BigOperators

set_option autoImplicit false

namespace ThetaDiscriminantPeriods

/-- At a discriminant place the generic error and gain simplify to the old discriminant bound. -/
theorem sg_le_old_ramified_bound {D : D7} {L : SizeData₂ D} {X : Inst D L} {K : Consts}
    {lev : LevelData D} {Xe : ErrX D} {ce : ErrC}
    (hE : ErrDefs D L Xe lev K ce) (hgain : GainLe X K)
    (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hT : D.what₂.places.resChar w ≠ (D.mem u).A.T)
    (hg : D.what₂.places.resChar w ∉ ({D.host.g 0, D.host.g 1} : Finset ℕ))
    (hd : D.host.cls (D.what₂.places.resChar w) = PrimeClass.ramD) :
    L.sg u w ≤ ∑ j ∈ SizeData₂.lifts D, (L.F j w - EatD D j - vDG D u w) := by
  have h0 : D.what₂.places.resChar w ≠ D.host.g 0 := fun h => hg (by simp [h])
  have h1 : D.what₂.places.resChar w ≠ D.host.g 1 := fun h => hg (by simp [h])
  have hExc : Exc D (D.what₂.places.resChar w) := by
    rw [cls_ramD hd]
    exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left D.host.d_dvd_condN _) _
  unfold SizeData₂.sg
  refine Finset.sum_le_sum fun j hj => ?_
  have hzero : gainS X K (D.what₂.places.resChar w) j = 0 := by
    unfold gainS
    simp [hExc]
  have hgd : L.gainD j w ≤ 0 := (hgain w j hj).trans_eq hzero
  rw [hE.edef u j hj w]
  unfold Eval vDG
  simp only [ite_eq_right hT, ite_eq_right h0, ite_eq_right h1, ite_eq_left hd]
  linarith

/-- A full unit of gain before ramification scaling survives the rounding in adm2. -/
theorem floor_add_ramIdx_le_ur {D : D7} (w : D.what₂.places.Pl) (s g : ℝ)
    (hg : 1 ≤ g) :
    ((⌊ur D w s⌋ + (D.what₂.places.ramIdx w : ℤ) : ℤ) : ℝ) ≤ ur D w (s + g) := by
  have hr : (0 : ℝ) ≤ D.what₂.places.ramIdx w := by positivity
  push_cast
  calc (⌊ur D w s⌋ : ℝ) + (D.what₂.places.ramIdx w : ℝ) ≤
      ur D w s + (D.what₂.places.ramIdx w : ℝ) := add_le_add (Int.floor_le _) le_rfl
    _ ≤ ur D w (s + g) := by
      unfold ur
      rw [mul_add]
      have h := mul_le_mul_of_nonneg_left hg hr
      linarith

/-- Transfer a word-dependent column gain to the rounded period bound in adm2. -/
theorem period_at_muAt_of_column_gain {D : D7} {L : SizeData₂ D}
    {Dx : DivX D} {T : TwForms D}
    (h0 : MemberChainIntegral D) (hT : TwistedPointIntegral D T)
    (hp0 : PeriodClassSumWeyl D) (hpT : TwistedPeriodAdmissible D Dx T) (hD : DGamDef D)
    (u : D.what₂.Word) (w : D.what₂.places.Pl) (φ : (D.div.Nu u).V) (g : ℝ)
    (hg : 1 ≤ g)
    (hc : ColGe T u (D.what₂.muAt w) w (D.nuIn u φ) (L.sg u w + g + vDG D u w))
    (F : D.what₂.Amb (D.what₂.muAt w))
    (hF : F ∈ (D.what₂.Mtilde (D.what₂.muAt w)).carrier)
    (hF0 : F ∈ D.what₂.V0 (D.what₂.muAt w)) :
    ∃ y : D.what₂.LL, D.what₂.embLL y = D.what₂.perCol u (D.what₂.muAt w) (D.jN u φ) F ∧
      (y = 0 ∨ ((⌊ur D w (L.sg u w)⌋ + (D.what₂.places.ramIdx w : ℤ) : ℤ) : ℝ) ≤
        (vAdd (D.plEq w) y : ℝ)) := by
  obtain ⟨y, hy, hv⟩ := period_geTU h0 hT hp0 hpT hD u w φ _
    (D.what₂.muAt w) (Or.inr ⟨w, rfl⟩) (Dx.Qp_muAt w) hc F hF hF0
  rw [add_sub_cancel_right] at hv
  exact ⟨y, hy, hv.imp_right fun h => (floor_add_ramIdx_le_ur w (L.sg u w) g hg).trans h⟩

end ThetaDiscriminantPeriods

namespace ThetaDiscriminantPeriods

/-- The discriminant branch gains at least one ramification index in the rounded period bound. -/
theorem rounded_period_bound_all_rows {D : D7} {L : SizeData₂ D} {X : Inst D L} {K : Consts}
    {Dx : DivX D} {T : TwForms D} {E : Ent D} {lev : LevelData D} {Xe : ErrX D} {ce : ErrC}
    (hk : KForm E Dx T 1) (hc : ValuationComposition D T)
    (hgd : TypePrimeNotDiscriminant D) (hs : ThetaKernelShapeAtD E Dx)
    (hFdef : L.FDef) (hE : ErrDefs D L Xe lev K ce) (hgain : GainLe X K) (hN : NuInM D L)
    (h0 : MemberChainIntegral D) (hTi : TwistedPointIntegral D T)
    (hp0 : PeriodClassSumWeyl D) (hpT : TwistedPeriodAdmissible D Dx T)
    (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hT : D.what₂.places.resChar w ≠ (D.mem u).A.T)
    (hd : D.host.cls (D.what₂.places.resChar w) = PrimeClass.ramD)
    (hw : ∀ i < D.R.m, ∃ t : HH D,
      (E.nu u i (true, t)).rowLen 0 < (E.nu u i (false, t)).rowLen 1)
    (φ : (D.div.Nu u).V) (hφ : φ ∈ L.NuLat u)
    (F : D.what₂.Amb (D.what₂.muAt w))
    (hF : F ∈ (D.what₂.Mtilde (D.what₂.muAt w)).carrier)
    (hF0 : F ∈ D.what₂.V0 (D.what₂.muAt w)) :
    ∃ y : D.what₂.LL, D.what₂.embLL y = D.what₂.perCol u (D.what₂.muAt w) (D.jN u φ) F ∧
      (y = 0 ∨ ((⌊ur D w (L.sg u w)⌋ + (D.what₂.places.ramIdx w : ℤ) : ℤ) : ℝ) ≤
        (vAdd (D.plEq w) y : ℝ)) := by
  have hg : D.what₂.places.resChar w ∉ ({D.host.g 0, D.host.g 1} : Finset ℕ) := by
    rw [Finset.mem_insert, Finset.mem_singleton]
    rintro (h | h)
    · exact hgd 0 (h.symm.trans (cls_ramD hd))
    · exact hgd 1 (h.symm.trans (cls_ramD hd))
  have hx := nuIn_mem_Sram_loc u w φ (hN u w hT) hφ
  have hb := chain_at_discriminant_all_rows hk hc hgd hs hFdef hE u w hT hd _
    (used_muAt D w) (Dx.Qp_muAt w) _ hx
  have hbase := sg_le_old_ramified_bound hE hgain u w hT hg hd
  let g := ∑ j ∈ SizeData₂.lifts D, rowGain E u j
  have hcol : ColGe T u (D.what₂.muAt w) w (D.nuIn u φ) (L.sg u w + g + vDG D u w) := by
    apply ColGe_mono _ hb
    dsimp [g]
    linarith
  exact period_at_muAt_of_column_gain h0 hTi hp0 hpT hE.dgam u w φ g
    (one_le_chain_rowGain E u hw) hcol F hF hF0

end ThetaDiscriminantPeriods
