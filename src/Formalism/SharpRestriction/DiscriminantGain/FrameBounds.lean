import Formalism.SizeWindowBrackets.ChainSlopeWindows.LevelOfCongruence
import Formalism.QuotientMetricDivisors.FinalW

namespace ThetaNormalizedFrame

open Matrix

/-- Rescaling the map matrix and the target coordinates together preserves the frame block. -/
theorem frame_block_scale {m n : Type} [Fintype m] [DecidableEq m] [Fintype n]
    (Y : Matrix m m ℂ) (A : Matrix m n ℂ) (c : ℂ) (hc : c ≠ 0) (hY : IsUnit Y.det) :
    (c • Y)⁻¹ * (c • A) = Y⁻¹ * A := by
  have hinv : (c • Y)⁻¹ = c⁻¹ • Y⁻¹ := by
    apply Matrix.inv_eq_left_inv
    rw [Matrix.smul_mul, Matrix.mul_smul, smul_smul, inv_mul_cancel₀ hc, one_smul,
      Matrix.nonsing_inv_mul _ hY]
  rw [hinv, Matrix.smul_mul, Matrix.mul_smul, smul_smul, inv_mul_cancel₀ hc, one_smul]

theorem scaled_frame_coordinates_invertible {m : Type} [Fintype m] [DecidableEq m]
    (Y : Matrix m m ℂ) (c : ℂ) (hc : c ≠ 0) (hY : IsUnit Y.det) :
    IsUnit (c • Y).det := by
  rw [Matrix.det_smul]
  exact (isUnit_iff_ne_zero.mpr hc).pow _ |>.mul hY

/-- The right hand side of the sharp lattice estimate, moved to a lower bound. -/
noncomputable def lower (s u H δ c : ℝ) :=
  s - (1 - δ)⁻¹ * (4 * u * Real.log (1 + H / u) + c * H)

/-- The tangent used in the global error estimate charges only t/(1+X) for extra height. -/
theorem phi_bound_with_increment {u H X b U t : ℝ} (hu : 0 ≤ u) (hH : 0 ≤ H)
    (hb : 0 ≤ b) (hX : 0 < X) (huU : u ≤ U) (ht : 0 ≤ t) (hHX : H ≤ X * b + t) :
    u * Real.log (1 + H / u) ≤ Real.log (1 + X) * (U + b) + t / (1 + X) := by
  have hXp : 0 < 1 + X := by linarith
  have hL := (Real.log_pos (show 1 < 1 + X by linarith)).le
  rcases hu.eq_or_lt with h0 | hp
  · have hU : 0 ≤ U := by linarith
    rw [← h0, zero_mul]
    positivity
  have hY : 0 < 1 + H / u := by positivity
  have hlog := Real.log_le_sub_one_of_pos (div_pos hY hXp)
  rw [Real.log_div hY.ne' hXp.ne'] at hlog
  have hmul := mul_le_mul_of_nonneg_left hlog hu
  have heq : u * ((1 + H / u) / (1 + X) - 1) =
      (H - X * u) / (1 + X) := by
    field_simp
    ring
  rw [mul_sub, heq] at hmul
  have hH' : (H - X * u) / (1 + X) ≤ (X * b + t) / (1 + X) :=
    div_le_div_of_nonneg_right (by nlinarith) hXp.le
  have hcoef : X / (1 + X) ≤ Real.log (1 + X) := by
    have h := Real.one_sub_inv_le_log_of_pos hXp
    have he : X / (1 + X) = 1 - (1 + X)⁻¹ := by field_simp; ring
    rwa [← he] at h
  rw [add_div, mul_comm X b, mul_div_assoc] at hH'
  have hb' := mul_le_mul_of_nonneg_left hcoef hb
  have hu' := mul_le_mul_of_nonneg_right huU hL
  rw [mul_add]
  nlinarith only [hmul, hH', hb', hu']

/-- The final scalar comparison underlying Ga_bound5 retains at least half the height saving. -/
theorem global_loss_saves_half {G M s μ W u H X b U δ c t : ℝ}
    (hu : 0 ≤ u) (hH : 0 ≤ H) (hb : 0 ≤ b) (hX : 40 ≤ X) (huU : u ≤ U)
    (ht : 0 ≤ t) (hHX : H ≤ X * b + t) (hδ : δ ≤ 1 / 2)
    (hc : 0 ≤ c) (hcX : c ≤ 6 / X)
    (hs : G + μ - M ≤ s)
    (hframe : lower (s + t) u H δ c - W ≤ μ) :
    G ≤ M + W + (1 - δ)⁻¹ * (4 * Real.log (1 + X) * (U + b) + c * (X * b)) -
      t / 2 := by
  have hXp : 0 < X := by linarith
  have hδp : 0 < 1 - δ := by linarith
  have hphi := phi_bound_with_increment hu hH hb hXp huU ht hHX
  have hC := mul_le_mul_of_nonneg_left hHX hc
  have hterm : 4 / (1 + X) + c ≤ (1 - δ) / 2 := by
    have h4 : 4 / (1 + X) ≤ (1 : ℝ) / 10 := (div_le_iff₀ (by linarith)).2 (by linarith)
    have h6 : 6 / X ≤ (3 : ℝ) / 20 := (div_le_iff₀ hXp).2 (by linarith)
    linarith
  have ht' := mul_le_mul_of_nonneg_right hterm ht
  have hcost : 4 * u * Real.log (1 + H / u) + c * H ≤
      4 * Real.log (1 + X) * (U + b) + c * (X * b) + (1 - δ) * (t / 2) := by
    have he : 4 * (t / (1 + X)) + c * t = (4 / (1 + X) + c) * t := by ring
    nlinarith only [hphi, hC, ht', he]
  have hcost' := mul_le_mul_of_nonneg_left hcost (inv_nonneg.mpr hδp.le)
  have hcancel : (1 - δ)⁻¹ * ((1 - δ) * (t / 2)) = t / 2 := by
    rw [← mul_assoc, inv_mul_cancel₀ hδp.ne', one_mul]
  rw [mul_add _ _ ((1 - δ) * (t / 2)), hcancel] at hcost'
  unfold lower at hframe
  linarith only [hcost', hframe, hs]

section Height

open NumberField Module Formalism.HN

variable {K V W ι κ : Type} [Field K] [NumberField K]
  [AddCommGroup V] [Module K V]
  [AddCommGroup W] [Module K W]
  [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ]

omit [NumberField K] in
theorem opNormAt_scale_map (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ)
    (b' : Basis κ K W) (X' : InfinitePlace K → Matrix κ κ ℂ)
    (v : InfinitePlace K) (B : V →ₗ[K] W) (a : K) :
    opNormAt b X b' X' v (a • B) = ‖v.embedding a‖ * opNormAt b X b' X' v B := by
  have hmap := Matrix.map_smul' v.embedding a (LinearMap.toMatrix b b' B) v.embedding.map_mul
  simp only [opNormAt, map_smul, hmap, Matrix.mul_smul, Matrix.smul_mul, norm_smul]

theorem htMap_inverse_nat (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ)
    (b' : Basis κ K W) (X' : InfinitePlace K → Matrix κ κ ℂ)
    (B : V →ₗ[K] W) (d : ℕ) (hd : 0 < d)
    (hB : ∀ v, 0 < opNormAt b X b' X' v B) (hpl : 0 < nPl K) :
    htMap b X b' X' ((d : K)⁻¹ • B) = htMap b X b' X' B - 2 * Real.log (d : ℝ) := by
  have hd' : 0 < (d : ℝ) := by exact_mod_cast hd
  have hlocal (v : InfinitePlace K) :
      Real.log (opNormAt b X b' X' v ((d : K)⁻¹ • B) ^ 2) =
        Real.log (opNormAt b X b' X' v B ^ 2) - 2 * Real.log (d : ℝ) := by
    rw [opNormAt_scale_map, map_inv₀, map_natCast, norm_inv, Complex.norm_natCast, mul_pow,
      Real.log_mul (pow_ne_zero _ (inv_ne_zero hd'.ne')) (pow_ne_zero _ (hB v).ne'), inv_pow, Real.log_inv, Real.log_pow]
    ring
  simp only [htMap, hlocal, Finset.sum_sub_distrib, Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  rw [← nPl]
  have hpl' : (nPl K : ℝ) ≠ 0 := by exact_mod_cast hpl.ne'
  field_simp

end Height

end ThetaNormalizedFrame

namespace Formalism.LFunctionChainParameters.WeightedSlopeBounds

open Formalism.RankGapBounds.WeightedMeanData

theorem Ga_bound5_with_discriminant_gain
    {U0 : Type} [Fintype U0] {W : U0 → Type} [∀ u0, Fintype (W u0)]
    [∀ u0, Nonempty (W u0)] {Top : Type} [Fintype Top] {m f : ℕ}
    (D : Data U0 W Top m f) (C : Consts) (Xpp : ℝ) (u0 : U0) {d : ℕ}
    (hS : D.HidaSetting C) (hDIV : D.DIV C) (hE : EComp5 D C)
    (hH : D.HComp C) (hCount : Count5 D C) (hSl : D.Slopes C)
    (hSN : QuotientSlopeBoundsWith D C Xpp)
    (hd : 1 ≤ d) (hX : 40 ≤ D.x ^ C.cHH) (hδ : D.delBar ≤ 1 / 2)
    (hc : D.etaBar + 4 * Real.sqrt D.eBar ≤ 6 / D.x ^ C.cHH)
    (H : ℝ) (hH0 : 0 ≤ H) (hHX : H ≤ D.x ^ C.cHH * D.b + 2 * Real.log (d : ℝ))
    (hframe : ThetaNormalizedFrame.lower (D.s u0 + 2 * Real.log (d : ℝ))
      (D.uF u0) H D.delBar (D.etaBar + 4 * Real.sqrt D.eBar)
        - Real.log (Fintype.card (W u0) : ℝ) ≤ D.muCC u0) :
    D.Ga u0 ≤ D.Main u0 + Real.log (Fintype.card (W u0) : ℝ) + K0v5 D C
      + wmean (D.d u0) (Lo5 D C Xpp u0)
      + (1 - D.delBar)⁻¹ * (4 * Real.log (1 + D.x ^ C.cHH)
          * (D.K3 C + wmean (D.d u0) (Lo5 D C Xpp u0) + D.b)
        + (D.etaBar + 4 * Real.sqrt D.eBar) * (D.x ^ C.cHH * D.b)) -
      Real.log (d : ℝ) := by
  have hsl := s_lower5 D C Xpp hS hDIV hE hCount hSl hSN u0
  have huF0 := D.uF_nonneg C hS u0
  have huF := u_function_le_mean D C Xpp hS hE hH hCount hSl hSN u0
  obtain ⟨_, hb, -, -, -, hv, hf, -, hw, -, -, -, -, _, hetaBar, _, _⟩ := hS
  have hid := key_identity5 D C hv hf u0 (hw u0)
  have hs : D.Ga u0 + D.muCC u0 -
      (D.Main u0 + K0v5 D C + wmean (D.d u0) (Lo5 D C Xpp u0)) ≤ D.s u0 := by
    unfold K0v5
    unfold K5v5 at hsl
    linarith
  have ht : 0 ≤ 2 * Real.log (d : ℝ) :=
    mul_nonneg (by norm_num) (Real.log_nonneg (by exact_mod_cast hd))
  have hc0 : 0 ≤ D.etaBar + 4 * Real.sqrt D.eBar :=
    add_nonneg hetaBar (mul_nonneg (by norm_num) (Real.sqrt_nonneg _))
  have h := ThetaNormalizedFrame.global_loss_saves_half huF0 hH0 hb.le hX huF ht hHX hδ
    hc0 hc hs hframe
  linarith only [h]

/-- The strengthened Ga estimate also lowers the pointwise ASK error. -/
theorem each_unit_bound_with_discriminant_gain
    {U0 : Type} [Fintype U0] {W : U0 → Type} [∀ u0, Fintype (W u0)]
    [∀ u0, Nonempty (W u0)] {Top : Type} [Fintype Top] {m f : ℕ}
    (D : Data U0 W Top m f) (C : Consts) (Xpp : ℝ) (u0 : U0) {d : ℕ}
    (hS : D.HidaSetting C) (hCount : Count5 D C) (hLoss : LossBounds D C)
    (hGa : D.Ga u0 ≤ D.Main u0 + Real.log (Fintype.card (W u0) : ℝ) + K0v5 D C
      + wmean (D.d u0) (Lo5 D C Xpp u0)
      + (1 - D.delBar)⁻¹ * (4 * Real.log (1 + D.x ^ C.cHH)
          * (D.K3 C + wmean (D.d u0) (Lo5 D C Xpp u0) + D.b)
        + (D.etaBar + 4 * Real.sqrt D.eBar) * (D.x ^ C.cHH * D.b)) -
      Real.log (d : ℝ)) :
    D.ASK u0 ≤ D.Main u0 + ErrX5at D C Xpp u0 - Real.log (d : ℝ) := by
  have hx : 0 < D.x := hS.1
  have hdelBar : D.delBar < 1 := hS.2.2.2.2.2.2.2.2.2.2.2.2.2.1
  have hcSl1 : 0 ≤ C.cSl1 := hS.2.2.2.2.2.2.2.2.2.2.2.2.1
  have hinv0 : 0 ≤ (1 - D.delBar)⁻¹ := inv_nonneg.mpr (by linarith)
  have hX : 0 < D.x ^ C.cHH := Real.rpow_pos_of_pos hx _
  have hLX : 0 ≤ Real.log (1 + D.x ^ C.cHH) := Real.log_nonneg (by linarith)
  have hc4 : 0 ≤ (1 - D.delBar)⁻¹ * (4 * Real.log (1 + D.x ^ C.cHH)) :=
    mul_nonneg hinv0 (mul_nonneg (by norm_num) hLX)
  have h2 := weighted_mean_lower_bound_le D C Xpp hS hCount u0
  have hIO := mul_le_mul_of_nonneg_left (hLoss u0).2 hcSl1
  have hML : wmean (D.d u0) (Lo5 D C Xpp u0) ≤ MLo5 D C Xpp := by
    unfold MLo5 K7v5 at *
    linarith
  have h3 := mul_le_mul_of_nonneg_left hML hc4
  have h4 := (hLoss u0).1
  unfold Data.K3 K0v5 Data.EDiv at hGa
  unfold ErrX5at UBar5
  linarith

end Formalism.LFunctionChainParameters.WeightedSlopeBounds
