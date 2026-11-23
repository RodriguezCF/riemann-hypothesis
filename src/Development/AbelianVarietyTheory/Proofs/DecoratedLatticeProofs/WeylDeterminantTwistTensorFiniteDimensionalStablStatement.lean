module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.EvalAtOneExtremalMul
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.DelSqIrreducibleUnitary
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Topology.Sheaves.Init

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeylDeterminantTwistTensorFiniteDimensionalStabl, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeylDeterminantTwistTensorFiniteDimensionalStablStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeylDeterminantTwistTensorFiniteDimensionalStabl =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeylDeterminantTwistTensorFiniteDimensionalStabl", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.EvalAtOneExtremalMul\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.DelSqIrreducibleUnitary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Formalism.BasicNotions Formalism.L2.Forms Formalism.L2.Ker GlobalTheory.KJInf MeasureTheory
open scoped TensorProduct

noncomputable section
namespace GlobalTheory.KJInf.VnStable

variable {ι : Type} [Fintype ι] {a : ℕ}

theorem lft_rename (g : ι → Matrix (Fin a) (Fin a) ℂ) (τ : ι) (p : MvPolynomial (Fin a × Fin a) ℂ) :
    lft g (rename (Prod.mk τ) p) = rename (Prod.mk τ) (Formalism.GradedWeylDivisibility.rowAct ℂ (g τ) p) := by
  have : (lft g).comp (rename (Prod.mk τ)) = (rename (Prod.mk τ)).comp (Formalism.GradedWeylDivisibility.rowAct ℂ (n := a) (g τ)) := by
    apply MvPolynomial.algHom_ext
    intro v

    simp [lft, Formalism.GradedWeylDivisibility.rowAct, rename_X, aeval_X, map_sum]
  exact congrArg (fun φ : MvPolynomial (Fin a × Fin a) ℂ →ₐ[ℂ] PY ι a => φ p) this

theorem lft_ten (g : ι → Matrix (Fin a) (Fin a) ℂ) (f : ι → MvPolynomial (Fin a × Fin a) ℂ) :
    lft g (ten f) = ten (fun τ => Formalism.GradedWeylDivisibility.rowAct ℂ (g τ) (f τ)) := by
  simp only [ten, map_prod, lft_rename]

theorem lft_frDet (g : ι → Matrix (Fin a) (Fin a) ℂ) (τ : ι) :
    lft g (frDet ℂ a τ : PY ι a) = (g τ).det • (frDet ℂ a τ : PY ι a) := by
  unfold frDet
  rw [AlgHom.map_det]
  have hM : (lft g).mapMatrix (Matrix.of fun α s : Fin a => (X (τ, α, s) : PY ι a)) =
      (g τ).map C * Matrix.of fun α s : Fin a => (X (τ, α, s) : PY ι a) := by
    ext α s
    simp [lft, Matrix.mul_apply]
  rw [hM, Matrix.det_mul, smul_eq_C_mul]
  congr 1
  rw [← RingHom.mapMatrix_apply, ← RingHom.map_det]

theorem prod_mem_prodS {A : Type} [CommRing A] [Algebra ℂ A] (s : Finset ι) (M : ι → Submodule ℂ A) (x : ι → A)
    (h : ∀ τ ∈ s, x τ ∈ M τ) : ∏ τ ∈ s, x τ ∈ ∏ τ ∈ s, M τ := by
  classical
  induction s using Finset.induction_on with
  | empty => simp only [Finset.prod_empty]; exact Submodule.one_le.mp le_rfl
  | insert i s hi ih =>
    rw [Finset.prod_insert hi, Finset.prod_insert hi]
    exact Submodule.mul_mem_mul (h i (Finset.mem_insert_self _ _))
      (ih fun τ hτ => h τ (Finset.mem_insert_of_mem hτ))

theorem fg_prodS {A : Type} [CommRing A] [Algebra ℂ A] (s : Finset ι) (M : ι → Submodule ℂ A)
    (h : ∀ τ, (M τ).FG) : (∏ τ ∈ s, M τ).FG := by
  classical
  induction s using Finset.induction_on with
  | empty => simp only [Finset.prod_empty]; rw [Submodule.one_eq_span]; exact Submodule.fg_span_singleton _
  | insert i s hi ih => rw [Finset.prod_insert hi]; exact (h i).mul ih

theorem ten_mem_prod (lam : ι → DomWeight a) (f : ι → MvPolynomial (Fin a × Fin a) ℂ)
    (hf : ∀ τ, f τ ∈ delSq ℂ a (lam τ)) :
    ten f ∈ ∏ τ, (delSq ℂ a (lam τ)).map (rename (Prod.mk τ)).toLinearMap := by
  unfold ten
  exact prod_mem_prodS _ _ _ (fun τ _ => Submodule.mem_map_of_mem (hf τ))

theorem cspan_fd (lam : ι → DomWeight a) : FiniteDimensional ℂ (CSpan lam) := by
  have hP : (∏ τ, (delSq ℂ a (lam τ)).map (rename (Prod.mk τ)).toLinearMap).FG := by
    apply fg_prodS
    intro τ
    apply Submodule.FG.map
    haveI := (GlobalTheory.WeylUnitary.delSq_irreducible_unitary a (lam τ)).1
    exact (Submodule.fg_iff_finiteDimensional _).mpr inferInstance
  have hle : CSpan lam ≤ ∏ τ, (delSq ℂ a (lam τ)).map (rename (Prod.mk τ)).toLinearMap := by
    unfold CSpan
    rw [Submodule.span_le]
    rintro p ⟨f, hf, rfl⟩
    exact ten_mem_prod lam f hf
  haveI : FiniteDimensional ℂ ↥(∏ τ, ((delSq ℂ a (lam τ)).map (rename (Prod.mk τ)).toLinearMap : Submodule ℂ (PY ι a))) :=
    (Submodule.fg_iff_finiteDimensional _).mp hP
  exact Submodule.finiteDimensional_of_le hle

theorem lft_cspan (lam : ι → DomWeight a) (g : ι → Matrix (Fin a) (Fin a) ℂ) :
    ∀ p ∈ CSpan lam, lft g p ∈ CSpan lam := by
  intro p hp
  unfold CSpan at hp ⊢
  induction hp using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨f, hf, rfl⟩ := hx
    rw [lft_ten]
    exact Submodule.subset_span ⟨_, fun τ => (GlobalTheory.WeylUnitary.delSq_irreducible_unitary a (lam τ)).2.2.1 (g τ) (f τ) (hf τ), rfl⟩
  | zero => simp
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
  | smul c x _ hx => rw [map_smul]; exact Submodule.smul_mem _ c hx

end GlobalTheory.KJInf.VnStable


open GlobalTheory.KJInf.VnStable in
theorem GlobalTheory.KJInf.vn_finiteDimensional_and_lft_mem : ∀ (ι : Type) [Fintype ι] (a : ℕ) (lam : ι → DomWeight a) (n : ι → ℕ),
    FiniteDimensional ℂ (Vn lam n) ∧ ∀ (g : ι → Matrix (Fin a) (Fin a) ℂ), ∀ F ∈ Vn lam n, lft g F ∈ Vn lam n := by
  intro ι _ a lam n
  haveI := cspan_fd lam
  refine ⟨?_, ?_⟩
  · unfold Vn; infer_instance
  · intro g F hF
    unfold Vn at hF ⊢
    obtain ⟨p, hp, rfl⟩ := hF
    have hD : lft g (∏ τ, (frDet ℂ a τ : PY ι a) ^ n τ) = C (∏ τ, (g τ).det ^ n τ) * ∏ τ, (frDet ℂ a τ : PY ι a) ^ n τ := by
      rw [map_prod, map_prod, ← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun τ _ => ?_
      rw [map_pow, lft_frDet, smul_eq_C_mul, mul_pow, map_pow]
    refine ⟨(∏ τ, (g τ).det ^ n τ) • lft g p, Submodule.smul_mem _ _ (lft_cspan lam g p hp), ?_⟩
    simp only [LinearMap.mulRight_apply, map_mul, hD, smul_eq_C_mul]; ring
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeylDeterminantTwistTensorFiniteDimensionalStabl =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeylDeterminantTwistTensorFiniteDimensionalStablStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeylDeterminantTwistTensorFiniteDimensionalStablStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.EvalAtOneExtremalMul\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeylDeterminantTwistTensorFiniteDimensionalStabl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Formalism.BasicNotions Formalism.L2.Forms Formalism.L2.Ker GlobalTheory.KJInf MeasureTheory
open scoped TensorProduct

theorem _root_.GlobalTheory.T.weylDeterminantTwistTensor_finiteDimensional_stable : ∀ (ι : Type) [Fintype ι] (a : ℕ) (lam : ι → DomWeight a) (n : ι → ℕ), FiniteDimensional ℂ (Vn lam n) ∧ ∀ (g : ι → Matrix (Fin a) (Fin a) ℂ), ∀ F ∈ Vn lam n, lft g F ∈ Vn lam n := by
  first | exact @GlobalTheory.KJInf.vn_finiteDimensional_and_lft_mem | exact GlobalTheory.KJInf.vn_finiteDimensional_and_lft_mem | (intros; apply GlobalTheory.KJInf.vn_finiteDimensional_and_lft_mem <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.WeylDeterminantTwistTensorFiniteDimensionalStablStatement =====
