module

public import Development.AbelianVarietyTheory.Definitions.Divisors.RankEqCardIffExistsFrameMatrixFirstColumnBlock
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PartialFourierInversion
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MeasurePreservingPiCurry
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.FourierTransformInversionLocalFieldPi
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.TwistedOperators.PartialColumnFourierMemSchwartzBruhat, Development.AbelianVarietyTheory.Proofs.TwistedOperators.PartialColumnFourierMemSchwartzBruhatStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.PartialColumnFourierMemSchwartzBruhat =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.PartialColumnFourierMemSchwartzBruhat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RankEqCardIffExistsFrameMatrixFirstColumnBlock\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PartialFourierInversion\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.FourierTransformInversionLocalFieldPi\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MeasurePreservingPiCurry\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory ValuativeRel Matrix GlobalTheory.SplitWeil GlobalTheory.SplitFlip GlobalTheory.ColFourier
open scoped Topology

noncomputable section
namespace GlobalTheory.ColFourier

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  {A C : Type} [Fintype A] [DecidableEq C]


omit [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [Fintype A] in
theorem setCols_eq_add_offBlock (P : Finset C) (Y Y' : Matrix A C k) (T : Matrix A P k) :
    setCols P Y' T = setCols P Y T + setCols P (Y' - Y) 0 := by
  ext i j; by_cases h : j ∈ P <;> simp [setCols, h]


omit [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [Fintype A] in
theorem setCols_of_add (P : Finset C) (Y : Matrix A C k) (x t : (Σ _ : A, P) → k) :
    setCols P Y (Matrix.of fun i j => (x + t) ⟨i, j⟩) =
      setCols P Y (Matrix.of fun i j => x ⟨i, j⟩) + setCols P 0 (Matrix.of fun i j => t ⟨i, j⟩) := by
  ext i j; by_cases h : j ∈ P <;> simp [setCols, h]

omit [ValuativeRel k] [IsNonarchimedeanLocalField k] [Fintype A] in
theorem continuous_setCols_left (P : Finset C) (T : Matrix A P k) :
    Continuous fun Y : Matrix A C k => setCols P Y T := by
  refine continuous_pi fun i => continuous_pi fun j => ?_
  by_cases h : j ∈ P
  · simp only [setCols, of_apply, dif_pos h]; exact continuous_const
  · simp only [setCols, of_apply, dif_neg h]
    exact continuous_id.matrix_elem i j

omit [ValuativeRel k] [IsNonarchimedeanLocalField k] [Fintype A] in
theorem continuous_setCols_pair (P : Finset C) :
    Continuous fun q : Matrix A C k × ((Σ _ : A, P) → k) =>
      setCols P q.1 (Matrix.of fun i j => q.2 ⟨i, j⟩) := by
  refine continuous_pi fun i => continuous_pi fun j => ?_
  by_cases h : j ∈ P
  · simp only [setCols, of_apply, dif_pos h]
    exact (continuous_apply (⟨i, ⟨j, h⟩⟩ : (Σ _ : A, P))).comp continuous_snd
  · simp only [setCols, of_apply, dif_neg h]
    exact continuous_fst.matrix_elem i j

omit [DecidableEq C] in
theorem continuous_pairCols_pair (P : Finset C) :
    Continuous fun q : Matrix A C k × Matrix A P k => pairCols P q.1 q.2 := by
  unfold pairCols
  refine continuous_finsetSum _ fun i _ => continuous_finsetSum _ fun j _ => ?_
  exact (continuous_snd.matrix_elem i j).mul (continuous_fst.matrix_elem i (j : C))

end GlobalTheory.ColFourier

theorem GlobalTheory.ColFourier.fourierInt_mem_SB : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [MeasurableSpace k] [BorelSpace k] (A C : Type) [Fintype A] [DecidableEq A] [DecidableEq C] (ψ : AddChar k Circle) (m : Measure k), HasConductor ψ 1 → IsUnitVol m → ∀ (P : Finset C), ∀ Ξ ∈ SB (Matrix A C k), fourierInt ψ m P Ξ ∈ SB (Matrix A C k) := by
  intro k _ _ _ _ _ _ A C _ _ _ ψ m hψ hm P Ξ hΞ
  haveI := secondCountable k
  haveI := t2Space k
  haveI := hm.1
  have hinv := GlobalTheory.LocFlat.PartialFourier.eventually_add_invariant hΞ
  refine ⟨(IsLocallyConstant.iff_eventually_eq _).mpr fun Y => ?_, ?_⟩
  · have hK : IsCompact (restrictCols P '' tsupport Ξ) := hΞ.2.image (continuous_restrictCols P)
    have h1 : ∀ᶠ Y' in 𝓝 Y, ∀ X, Ξ (X + setCols P (Y' - Y) 0) = Ξ X := by
      have hc : Continuous (fun Y' : Matrix A C k => setCols P (Y' - Y) 0) :=
        (continuous_setCols_left P 0).comp (continuous_id.sub continuous_const)
      have h0 : setCols P (Y - Y) (0 : Matrix A P k) = 0 := by
        ext i j; by_cases h : j ∈ P <;> simp [setCols, h]
      have ht : Filter.Tendsto (fun Y' : Matrix A C k => setCols P (Y' - Y) 0) (𝓝 Y) (𝓝 0) := by
        convert hc.tendsto Y using 2
        exact h0.symm
      exact ht.eventually hinv
    have h2 : ∀ᶠ Y' in 𝓝 Y, ∀ T ∈ restrictCols P '' tsupport Ξ,
        ψ (pairCols P Y' T) = ψ (pairCols P Y T) := by
      refine hK.eventually_forall_of_forall_eventually fun T _ => ?_
      have h3 : IsLocallyConstant fun q : Matrix A C k × Matrix A P k =>
          (ψ (pairCols P q.1 q.2), ψ (pairCols P Y q.2)) :=
        (hψ.isLocallyConstant.comp_continuous (continuous_pairCols_pair P)).prodMk
          (hψ.isLocallyConstant.comp_continuous
            ((continuous_pairCols_pair P).comp (continuous_const.prodMk continuous_snd)))
      filter_upwards [h3.eventually_eq (Y, T)] with q hq
      simp only [Prod.mk.injEq] at hq
      rw [hq.1, hq.2]
    filter_upwards [h1, h2] with Y' hY1 hY2
    unfold fourierInt
    congr 1
    funext T
    rw [setCols_eq_add_offBlock P Y Y' T, hY1]
    by_cases hT : setCols P Y T ∈ tsupport Ξ
    · rw [hY2 T ⟨_, hT, restrictCols_setCols P Y T⟩]
    · simp [image_eq_zero_of_notMem_tsupport hT]
  · have hc : Continuous fun t : (Σ _ : A, P) → k =>
        setCols P (0 : Matrix A C k) (Matrix.of fun i j => t ⟨i, j⟩) :=
      (continuous_setCols_pair P).comp (continuous_const.prodMk continuous_id)
    have h0 : setCols P (0 : Matrix A C k) (Matrix.of fun i j => (0 : (Σ _ : A, P) → k) ⟨i, j⟩) = 0 := by
      ext i j; by_cases h : j ∈ P <;> simp [setCols, h]
    have hU : {Z : Matrix A C k | ∀ X, Ξ (X + Z) = Ξ X} ∈
        𝓝 (setCols P (0 : Matrix A C k) (Matrix.of fun i j => (0 : (Σ _ : A, P) → k) ⟨i, j⟩)) := by
      rw [h0]; exact hinv
    obtain ⟨s, hs⟩ := FourierPi.exists_box_subset (hc.continuousAt.preimage_mem_nhds hU)
    refine HasCompactSupport.intro ((hΞ.2.prod (FourierPi.isCompact_box (1 * s⁻¹))).image
      (continuous_setCols_pair P)) fun Y hY => ?_
    rw [fourierInt_eq_pi]
    by_cases hy : (fun p : (Σ _ : A, P) => Y p.1 p.2) ∈ FourierPi.box (Σ _ : A, P) (1 * s⁻¹)
    · refine integral_eq_zero_of_ae (Filter.Eventually.of_forall fun x => ?_)
      have hback : setCols P (setCols P Y (Matrix.of fun i j => x ⟨i, j⟩))
          (Matrix.of fun i j => (fun p : (Σ _ : A, P) => Y p.1 p.2) ⟨i, j⟩) = Y := by
        ext i j; by_cases h : j ∈ P <;> simp [setCols, h]
      have hX : setCols P Y (Matrix.of fun i j => x ⟨i, j⟩) ∉ tsupport Ξ := fun hX =>
        hY ⟨(_, fun p => Y p.1 p.2), ⟨hX, hy⟩, hback⟩
      simp [image_eq_zero_of_notMem_tsupport hX]
    · refine FourierPi.fourier_eq_zero_pi (Measure.pi fun _ : (Σ _ : A, P) => m) hψ (s := s)
        (f := fun x => Ξ (setCols P Y (Matrix.of fun i j => x ⟨i, j⟩))) (fun t ht x => ?_) hy
      show Ξ (setCols P Y (Matrix.of fun i j => (x + t) ⟨i, j⟩)) = Ξ (setCols P Y (Matrix.of fun i j => x ⟨i, j⟩))
      rw [setCols_of_add]
      exact hs ht _
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.PartialColumnFourierMemSchwartzBruhat =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.PartialColumnFourierMemSchwartzBruhatStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.PartialColumnFourierMemSchwartzBruhatStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RankEqCardIffExistsFrameMatrixFirstColumnBlock\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PartialColumnFourierMemSchwartzBruhat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory ValuativeRel Matrix GlobalTheory.SplitWeil GlobalTheory.SplitFlip GlobalTheory.ColFourier

theorem _root_.GlobalTheory.T.partialColumnFourier_mem_schwartzBruhat : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [MeasurableSpace k] [BorelSpace k] (A C : Type) [Fintype A] [DecidableEq A] [DecidableEq C] (ψ : AddChar k Circle) (m : Measure k), HasConductor ψ 1 → IsUnitVol m → ∀ (P : Finset C), ∀ Ξ ∈ SB (Matrix A C k), fourierInt ψ m P Ξ ∈ SB (Matrix A C k) := by
  first | exact @GlobalTheory.ColFourier.fourierInt_mem_SB | exact GlobalTheory.ColFourier.fourierInt_mem_SB | (intros; apply GlobalTheory.ColFourier.fourierInt_mem_SB <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.PartialColumnFourierMemSchwartzBruhatStatement =====
