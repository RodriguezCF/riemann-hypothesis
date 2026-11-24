import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CardCellsEqSumRowLen
import Formalism.LocalRingCardinality.DataKerI
import Formalism.SharpRestriction.Divisibility.OrbitPlaces
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.ExplicitFormulaErrorOfHostConditions
import Formalism.SharpRestriction.RamificationFrobenius.TotientGaloisClasses.FrameFacts

open Formalism.BasicNotions Formalism.MainNotions.G
open scoped BigOperators
open Classical

set_option autoImplicit false

namespace ThetaSelectedWeights

private theorem row_eq_head (D : D7) (u : D.what₂.Word) (i : ℕ) (hi : i < D.R.m)
    (τ : D.what₂.Tau) (r : ℕ) (hr : r < D.R.k) :
    DV.nuRow D u (i + 1) τ r =
      (((D.hcW u τ).u ⟨r, hr⟩ : ℚ) : ℝ) + wj D (i + 1) τ -
        ((D.R.N i : ℝ) + D.R.N (i + 1) - 1 - 2 * (r : ℝ)) / 2 := by
  have hj : 1 ≤ i + 1 ∧ i + 1 ≤ D.R.m := ⟨by omega, by omega⟩
  unfold DV.nuRow DV.srcPar DV.wSz wj
  rw [dite_eq_left hr, dite_eq_left hj]
  simp [hi]

/-- The precise window gap needed for the second-row cutoff test. -/
theorem second_row_gap_iff (D : D7) (u : D.what₂.Word) (i : ℕ) (hi : i < D.R.m) (t : HH D)
    (hk : 1 < D.R.k) :
    DV.nuRow D u (i + 1) (tauPl D (true, t)) 0 < DV.nuRow D u (i + 1) (tauPl D (false, t)) 1 ↔
      (((D.hcW u (tauPl D (true, t))).u ⟨0, by omega⟩ : ℚ) : ℝ) -
        (((D.hcW u (tauPl D (false, t))).u ⟨1, hk⟩ : ℚ) : ℝ) - 1 <
        wj D (i + 1) (tauPl D (false, t)) - wj D (i + 1) (tauPl D (true, t)) := by
  rw [row_eq_head D u i hi _ 0 (by omega), row_eq_head D u i hi _ 1 hk]
  push_cast
  constructor <;> intro h <;> linarith

/-- A top place paired with a thin place gives strictness under the stated size inequality. -/
theorem second_row_gt_at_top_thin {D : D7} (L : SizeData₂ D) (u : D.what₂.Word) (i : ℕ)
    (hi : i < D.R.m) (t : D.host.TT)
    (hthin : D.host.IsThin (D.eTau (tauPl D (true, t)) : D.R.GG))
    (hsize : L.sc.w'' D.R.n + L.etaSz + (L.Cc + 1) * L.Sc ≤ L.sc.b' + L.sc.b' / L.sc.x) :
    DV.nuRow D u (i + 1) (tauPl D (true, t)) 0 <
      DV.nuRow D u (i + 1) (tauPl D (false, t)) 1 := by
  have hk : 2 < D.R.k := by
    have := D.R.two_le_m
    have := D.R.m_add_three_le_k
    omega
  have hτ : (D.eTau (tauPl D (false, t)) : D.R.GG) = D.R.tau1 t := by
    simp [tauPl, plGG]
  have htop := (L.win_top (i + 1) (by omega) (by omega) (tauPl D (false, t)) t hτ).1
  have hthin' := (L.win_thin (i + 1) (by omega) (by omega) (tauPl D (true, t)) hthin).2
  have hgap := (L.cloud_gap (tauPl D (true, t)) (by omega) hthin.2.1).2
  have hv := (L.cloud_v (tauPl D (true, t)) ⟨0, by omega⟩).2
  have hu := (L.cloud_u u (tauPl D (false, t)) ⟨1, by omega⟩ (by change 1 ≤ (1 : ℕ); exact le_rfl) (by change 2 < D.R.k; exact hk)).1
  apply (second_row_gap_iff D u i hi t (by omega)).2
  rw [D.hcW_first u (tauPl D (true, t)) (by omega)]
  push_cast at hgap
  linarith [L.bT_ge t]

/-- A top place outside the translate supporting the thick places has a thin partner. -/
theorem partner_thin_of_not_mem_thick (D : D7) (t : HH D)
    (ht : t ∉ D.host.T2.image (fun s : ℕ => D.R.dig s + D.host.u0)) :
    D.host.IsThin (D.eTau (tauPl D (true, t)) : D.R.GG) := by
  have he : (D.eTau (tauPl D (true, t)) : D.R.GG) = D.R.tau2 t := by
    simp [tauPl, plGG]
  refine ⟨(D.eTau (tauPl D (true, t))).2, ?_, ?_⟩
  · rw [he]
    intro h
    obtain ⟨a, _, h⟩ := Finset.mem_image.mp h
    have e := congrArg (fun g : D.R.GG => g.1.1) h
    norm_num [Formalism.HC.Frame.tau1, Formalism.HC.Frame.tau2] at e
  · rw [he]
    intro h
    obtain ⟨s, hsMem, hs⟩ := Finset.mem_image.mp h
    have hs' : D.R.dig s + D.host.u0 = t :=
      D.R.iota_bijective.1 (congrArg Prod.snd hs)
    exact ht (Finset.mem_image.mpr ⟨s, hsMem, hs'⟩)

/-- The usual scale bounds imply the window comparison needed above. -/
theorem window_comparison_of_sizes {D : D7} (L : SizeData₂ D) (hn : 1 ≤ D.R.n)
    (hCc : L.Cc + 1 ≤ L.sc.x) (hsmall : L.Sc + L.etaSz ≤ L.sc.b' / L.sc.x) :
    L.sc.w'' D.R.n + L.etaSz + (L.Cc + 1) * L.Sc ≤ L.sc.b' + L.sc.b' / L.sc.x := by
  have hx := L.sc.one_lt_alt
  have hx0 : 0 < L.sc.x := by linarith
  have hb : 0 ≤ L.sc.b' := by
    unfold Scale.b' Scale.a Scale.b Scale.X'
    positivity
  have hn' : (1 : ℝ) ≤ D.R.n := by exact_mod_cast hn
  have hw : L.sc.w'' D.R.n ≤ L.sc.b' / L.sc.x := by
    unfold Scale.w''
    apply div_le_div_of_nonneg_left hb hx0
    nlinarith
  have hmult := (le_div_iff₀ hx0).1 hsmall
  have hSc := mul_le_mul_of_nonneg_right hCc L.Sc_pos.le
  have hη := mul_le_mul_of_nonneg_right hx.le L.etaSz_pos.le
  nlinarith

/-- A top place uncovered by the realised translate works for every word and lift. -/
theorem all_second_rows_of_uncovered_top {D : D7} (L : SizeData₂ D) (t : D.host.TT)
    (ht : (t : HH D) ∉ D.host.T2.image (fun s : ℕ => D.R.dig s + D.host.u0))
    (hsize : L.sc.w'' D.R.n + L.etaSz + (L.Cc + 1) * L.Sc ≤ L.sc.b' + L.sc.b' / L.sc.x) :
    ∀ (u : D.what₂.Word) (i : ℕ), i < D.R.m →
      DV.nuRow D u (i + 1) (tauPl D (true, t)) 0 <
        DV.nuRow D u (i + 1) (tauPl D (false, t)) 1 :=
  fun u i hi => second_row_gt_at_top_thin L u i hi t
    (partner_thin_of_not_mem_thick D t ht) hsize

open Formalism.MainNotions.OrbitPlaces in
/-- The uncovered top yields the diagram witnesses needed by the discriminant period bound. -/
theorem all_diagram_rows_of_uncovered_top {D : D7} (L : SizeData₂ D) (E : Ent D)
    (t : D.host.TT)
    (ht : (t : HH D) ∉ D.host.T2.image (fun s : ℕ => D.R.dig s + D.host.u0))
    (hsize : L.sc.w'' D.R.n + L.etaSz + (L.Cc + 1) * L.Sc ≤ L.sc.b' + L.sc.b' / L.sc.x) :
    ∀ (u : D.what₂.Word) (i : ℕ), i < D.R.m →
      (E.nu u i (true, t)).rowLen 0 < (E.nu u i (false, t)).rowLen 1 := by
  intro u i hi
  have h := all_second_rows_of_uncovered_top L t ht hsize u i hi
  have hN : 1 < D.R.N i := by
    unfold Ranks.N
    have := D.R.m_add_three_le_k
    omega
  have h0 : 0 < D.R.N i := by omega
  have hleft := E.nu_row u i hi (false, t) 1
  have hright := E.nu_row u i hi (true, t) 0
  simp only [ite_eq_left hN] at hleft
  simp only [ite_eq_left h0] at hright
  rw [← hleft, ← hright] at h
  exact_mod_cast h

end ThetaSelectedWeights
