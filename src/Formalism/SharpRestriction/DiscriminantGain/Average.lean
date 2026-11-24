import Formalism.SizeWindowBrackets.GrowthBoundGivesRiemannHypothesis

open scoped BigOperators

namespace ThetaAverageGain

variable {H : Type} [AddCommGroup H] [Fintype H] [DecidableEq H]

/-- At a fixed top place, the bad translates are indexed by the thick set. -/
theorem bad_translate_count (T : Finset H) (t : H) :
    (Finset.univ.filter (fun v : H => t - v ∈ T)).card = T.card := by
  have heq : Finset.univ.filter (fun v : H => t - v ∈ T) = T.image (t - ·) := by
    ext v
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_image]
    constructor
    · intro hv
      exact ⟨t - v, hv, by abel⟩
    · rintro ⟨w, hw, rfl⟩
      convert hw using 1
      abel
  rw [heq, Finset.card_image_of_injective]
  intro a b h
  exact sub_right_injective h

/-- An improvement by g away from the bad translates survives averaging. -/
theorem mean_le_sub_good_share (T : Finset H) (t : H) (E : H → ℝ) (err g : ℝ)
    (hbase : ∀ v, E v ≤ err) (hgood : ∀ v, t - v ∉ T → E v ≤ err - g) :
    (1 / (Fintype.card H : ℝ)) * ∑ v, E v ≤
      err - (1 - (T.card : ℝ) / Fintype.card H) * g := by
  classical
  let good := Finset.univ.filter (fun v : H => t - v ∉ T)
  let bad := Finset.univ.filter (fun v : H => t - v ∈ T)
  have hn : 0 < (Fintype.card H : ℝ) := by
    exact_mod_cast (Fintype.card_pos_iff.mpr ⟨t⟩)
  have hcard : good.card + bad.card = Fintype.card H := by
    simpa [good, bad, add_comm] using
      Finset.card_filter_add_card_filter_not (s := (Finset.univ : Finset H))
        (p := fun v => t - v ∈ T)
  have hsum : (∑ v ∈ good, E v) + (∑ v ∈ bad, E v) = ∑ v, E v := by
    simpa [good, bad, add_comm] using
      Finset.sum_filter_add_sum_filter_not (s := (Finset.univ : Finset H))
        (p := fun v => t - v ∈ T) (f := E)
  have h1 : ∑ v ∈ good, E v ≤ ∑ _v ∈ good, (err - g) :=
    Finset.sum_le_sum fun v hv => hgood v (Finset.mem_filter.mp hv).2
  have h2 : ∑ v ∈ bad, E v ≤ ∑ _v ∈ bad, err :=
    Finset.sum_le_sum fun v _ => hbase v
  have hcard' : (good.card : ℝ) + bad.card = Fintype.card H := by exact_mod_cast hcard
  have hbad : (bad.card : ℝ) = T.card := by exact_mod_cast bad_translate_count T t
  have h := add_le_add h1 h2
  rw [hsum] at h
  simp only [Finset.sum_const, nsmul_eq_mul] at h
  have hs : ∑ v, E v ≤ (Fintype.card H : ℝ) * err -
      ((Fintype.card H : ℝ) - T.card) * g := by
    rw [hbad] at h hcard'
    nlinarith only [h, congrArg (fun z : ℝ => z * err) hcard',
      congrArg (fun z : ℝ => z * g) hcard']
  calc
    _ ≤ (1 / (Fintype.card H : ℝ)) *
        ((Fintype.card H : ℝ) * err - ((Fintype.card H : ℝ) - T.card) * g) :=
      mul_le_mul_of_nonneg_left hs (by positivity)
    _ = _ := by field_simp

omit [AddCommGroup H] in
/-- The range of the thick indices leaves at least half the translates uncovered. -/
theorem thick_card_at_most_half (S : Finset ℕ) (dig : ℕ → H) {n L : ℕ}
    (hn : 2 ≤ n) (hH : n ≤ Fintype.card H) (hL : 2 ≤ L)
    (hS : ∀ s ∈ S, 4 * L * s < n) :
    2 * (S.image dig).card ≤ Fintype.card H := by
  have hsub : S ⊆ Finset.range ((n - 1) / 8 + 1) := by
    intro s hs
    have hm := Nat.mul_le_mul_right s (show 8 ≤ 4 * L by omega)
    have ht := hS s hs
    exact Finset.mem_range.mpr (by omega)
  have hc : (S.image dig).card ≤ (n - 1) / 8 + 1 :=
    Finset.card_image_le.trans (by simpa using Finset.card_le_card hsub)
  omega

omit [AddCommGroup H] [DecidableEq H] in
/-- At least half the pointwise gain survives when the thick set has at most half the places. -/
theorem good_share_saves_half (T : Finset H) (t : H) {g : ℝ} (hg : 0 ≤ g)
    (hT : 2 * T.card ≤ Fintype.card H) :
    g / 2 ≤ (1 - (T.card : ℝ) / Fintype.card H) * g := by
  have hn : 0 < (Fintype.card H : ℝ) := by
    exact_mod_cast (Fintype.card_pos_iff.mpr ⟨t⟩)
  have hT' : 2 * (T.card : ℝ) ≤ (Fintype.card H : ℝ) := by exact_mod_cast hT
  have h : (T.card : ℝ) / Fintype.card H ≤ 1 / 2 := (div_le_iff₀ hn).mpr (by linarith)
  have hm := mul_le_mul_of_nonneg_right (show (1 : ℝ) / 2 ≤ 1 - T.card / (Fintype.card H : ℝ) by linarith) hg
  linarith

open Formalism Formalism.D5
open Formalism.LFunctionChainParameters.characterSumData
open Formalism.LFunctionChainParameters.ThickSetMeanBounds

/-- The global growth estimate consumes exactly this average. -/
theorem topExcess_le_sub_good_share
    (D : ArithData H) (N m : ℕ) (ell : AddChar (E0 × H) ℂ → ℂ)
    (TT T : Finset H) (t : H) (a : H → ℝ)
    (w : H → Fin m → E0 × H → ℝ) (err g : ℝ)
    (hbase : ∀ v, (∑ z ∈ TT, ∑ j, (ASK D N (a z) z (w v j) -
      (MAIN ell (a z) (w v j)).re)) ≤ err)
    (hgood : ∀ v, t - v ∉ T → (∑ z ∈ TT, ∑ j, (ASK D N (a z) z (w v j) -
      (MAIN ell (a z) (w v j)).re)) ≤ err - g) :
    topExcess D N ell TT a w ≤ err - (1 - (T.card : ℝ) / Fintype.card H) * g :=
  mean_le_sub_good_share T t _ err g hbase hgood

/-- With the actual thick-index range, at least half of log d reaches topExcess. -/
theorem topExcess_saves_half_log_discriminant
    (D : ArithData H) (N m d : ℕ) (ell : AddChar (E0 × H) ℂ → ℂ)
    (TT : Finset H) (S : Finset ℕ) (dig : ℕ → H) (t : H)
    (a : H → ℝ) (w : H → Fin m → E0 × H → ℝ) (err : ℝ)
    {n L : ℕ} (hn : 2 ≤ n) (hH : n ≤ Fintype.card H) (hL : 2 ≤ L)
    (hS : ∀ s ∈ S, 4 * L * s < n) (hd : 1 ≤ d)
    (hbase : ∀ v, (∑ z ∈ TT, ∑ j, (ASK D N (a z) z (w v j) -
      (MAIN ell (a z) (w v j)).re)) ≤ err)
    (hgood : ∀ v, t - v ∉ S.image dig → (∑ z ∈ TT, ∑ j,
      (ASK D N (a z) z (w v j) - (MAIN ell (a z) (w v j)).re)) ≤ err - Real.log (d : ℝ)) :
    topExcess D N ell TT a w ≤ err - Real.log (d : ℝ) / 2 := by
  have hg : 0 ≤ Real.log (d : ℝ) := Real.log_nonneg (by exact_mod_cast hd)
  have hhalf := good_share_saves_half (S.image dig) t hg
    (thick_card_at_most_half S dig hn hH hL hS)
  have havg := topExcess_le_sub_good_share D N m ell TT (S.image dig) t a w err
    (Real.log (d : ℝ)) hbase hgood
  linarith only [havg, hhalf]

end ThetaAverageGain
