module

public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.DivStatementPfLA
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLieBase
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExtFormAdjEqNegSecondForm
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetBlockChangeOfBasisViaTwoFamiliesImplicit
public import Mathlib.Analysis.Complex.ExponentialBounds
public import Mathlib.LinearAlgebra.Matrix.AbsoluteValue
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundCongrGermGramStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HodgeChartBoundsOfSchurLemW
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsHodgeMetricPeriodChartAtBoundaryPointStatement
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InvHodgeMetricGramMumfordGoodGrowthBoundaryChartStatement
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.HodgePeriodGram
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HolomorphicFrameChangeLocalBounds, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HolomorphicFrameChangeLocalBoundsStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpNormLeOpNormBlockDiagonal, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundBlocksOfBlockDiagonal, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundBlocksOfBlockDiagonalStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundHolomorphicFrameChange, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundHolomorphicFrameChangeStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundFrameChangeOrthogonalSumma, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundFrameChangeOrthogonalSummaStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HodgeMetricLieGramIsGoodMumford, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HodgeMetricLieGramIsGoodMumfordStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HolomorphicFrameChangeLocalBounds =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HolomorphicFrameChangeLocalBounds", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.DivStatementPfLA\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLieBase\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ProjVar GlobalTheory.FlagBundle GlobalTheory.GoodMetric GlobalTheory.LieBase
open Classical
open Matrix
open scoped ComplexOrder Topology

namespace GlobalTheory.HermFrame

theorem holo_contDiffOn {n : ℕ} {U : Set (ReciprocityTheory.L2DbarEstimates.V n)} (hU : IsOpen U)
    {g : ReciprocityTheory.L2DbarEstimates.V n → ℂ} (hg : DifferentiableOn ℂ g U) {m : WithTop ℕ∞} :
    ContDiffOn ℂ m g U := by
  have ha : AnalyticOnNhd ℂ g U := fun z hz =>
    ReciprocityTheory.ChartRestriction.G.AR.Up.DivLA.analyticAt_of_diffOn hU hg hz
  exact ha.contDiffOn hU.uniqueDiffOn

theorem holo_fderiv_apply_on {n : ℕ} {U : Set (ReciprocityTheory.L2DbarEstimates.V n)} (hU : IsOpen U)
    {g : ReciprocityTheory.L2DbarEstimates.V n → ℂ} (hg : DifferentiableOn ℂ g U) (w : ReciprocityTheory.L2DbarEstimates.V n) :
    DifferentiableOn ℂ (fun u => fderiv ℂ g u w) U := by
  have h2 : ContDiffOn ℂ 2 g U := holo_contDiffOn hU hg
  have h1 : ContDiffOn ℂ 1 (fun u => fderiv ℂ g u) U := h2.fderiv_of_isOpen hU (by norm_num)
  exact (h1.clm_apply contDiffOn_const).differentiableOn (by norm_num)

theorem holo_del_eq_on {n : ℕ} {U : Set (ReciprocityTheory.L2DbarEstimates.V n)} (hU : IsOpen U)
    {g : ReciprocityTheory.L2DbarEstimates.V n → ℂ} (hg : DifferentiableOn ℂ g U) {u : ReciprocityTheory.L2DbarEstimates.V n}
    (hu : u ∈ U) (w : ReciprocityTheory.L2DbarEstimates.V n) : GlobalTheory.del g u w = fderiv ℂ g u w := by
  rw [GlobalTheory.del_eq_fderiv (hg.differentiableAt (hU.mem_nhds hu))]

end GlobalTheory.HermFrame

namespace GlobalTheory.HermFrame

theorem holo_mdel_entry {n : ℕ} {K : Type} {P : ReciprocityTheory.L2DbarEstimates.V n → Matrix K K ℂ}
    {U : Set (ReciprocityTheory.L2DbarEstimates.V n)} (hU : IsOpen U) (hP : ∀ i k, DifferentiableOn ℂ (fun u => P u i k) U)
    {u : ReciprocityTheory.L2DbarEstimates.V n} (hu : u ∈ U) (w : ReciprocityTheory.L2DbarEstimates.V n) (i k : K) :
    mdel P u w i k = fderiv ℂ (fun x => P x i k) u w :=
  holo_del_eq_on hU (hP i k) hu w

theorem holo_mdel_mdel_entry {n : ℕ} {K : Type} {P : ReciprocityTheory.L2DbarEstimates.V n → Matrix K K ℂ}
    {U : Set (ReciprocityTheory.L2DbarEstimates.V n)} (hU : IsOpen U) (hP : ∀ i k, DifferentiableOn ℂ (fun u => P u i k) U)
    {u : ReciprocityTheory.L2DbarEstimates.V n} (hu : u ∈ U) (w w' : ReciprocityTheory.L2DbarEstimates.V n) (i k : K) :
    mdel (fun x => mdel P x w') u w i k =
      fderiv ℂ (fun x => fderiv ℂ (fun y => P y i k) x w') u w := by
  change GlobalTheory.del (fun x => GlobalTheory.del (fun y => P y i k) x w') u w = _
  have hev : (fun x => GlobalTheory.del (fun y => P y i k) x w') =ᶠ[𝓝 u]
      (fun x => fderiv ℂ (fun y => P y i k) x w') := by
    filter_upwards [hU.mem_nhds hu] with x hx
    exact holo_del_eq_on hU (hP i k) hx w'
  rw [GlobalTheory.del_congr hev]
  exact holo_del_eq_on hU (holo_fderiv_apply_on hU (hP i k) w') hu w

theorem holoFrame_local_bounds : ∀ (n : ℕ) (K : Type) [Fintype K] [DecidableEq K] (P : ReciprocityTheory.L2DbarEstimates.V n → Matrix K K ℂ) (r : ℝ), 0 < r → (∀ i k, DifferentiableOn ℂ (fun u => P u i k) (Metric.ball 0 r)) → IsUnit (P 0).det → ∃ r' : ℝ, 0 < r' ∧ r' ≤ r ∧ ∃ B : ℝ, ∀ v : ReciprocityTheory.L2DbarEstimates.V n, ‖v‖ < r' → IsUnit (P v).det ∧ (∀ i k, ContDiffAt ℝ 2 (fun u => P u i k) v) ∧ (∀ᶠ u in nhds v, ∀ η, GlobalTheory.HermFrame.mdbar P u η = 0) ∧ (∀ i k, ‖P v i k‖ ≤ B) ∧ (∀ i k, ‖(P v)⁻¹ i k‖ ≤ B) ∧ (∀ a i k, ‖GlobalTheory.HermFrame.mdel P v (GlobalTheory.GoodMetric.coordVec a) i k‖ ≤ B) ∧ (∀ a b i k, ‖GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.mdel P u (GlobalTheory.GoodMetric.coordVec b)) v (GlobalTheory.GoodMetric.coordVec a) i k‖ ≤ B) := by
  intro n K _ _ P r hr hP h0
  set U : Set (ReciprocityTheory.L2DbarEstimates.V n) := Metric.ball 0 r with hUdef
  have hU : IsOpen U := Metric.isOpen_ball
  have hPc : ContinuousOn P U :=
    continuousOn_pi.2 fun i => continuousOn_pi.2 fun k => (hP i k).continuousOn
  have hdetc : ContinuousOn (fun u => (P u).det) U :=
    (continuous_id.matrix_det).comp_continuousOn hPc
  have hadjc : ∀ i k, ContinuousOn (fun u => (P u).adjugate i k) U := fun i k =>
    ((continuous_id.matrix_adjugate).matrix_elem i k).comp_continuousOn hPc
  have h0U : (0 : ReciprocityTheory.L2DbarEstimates.V n) ∈ U := Metric.mem_ball_self hr
  have hev : ∀ᶠ u in 𝓝 (0 : ReciprocityTheory.L2DbarEstimates.V n), (P u).det ≠ 0 :=
    (hdetc.continuousAt (hU.mem_nhds h0U)).eventually_ne h0.ne_zero
  obtain ⟨ε, hε, hball⟩ := Metric.eventually_nhds_iff_ball.1 hev
  have hm : 0 < min ε r := lt_min hε hr
  set ρ := min ε r / 2 with hρ
  have hρpos : 0 < ρ := by rw [hρ]; linarith
  have hρε : ρ < ε := by have := min_le_left ε r; rw [hρ]; linarith
  have hρr : ρ < r := by have := min_le_right ε r; rw [hρ]; linarith
  set S := Metric.closedBall (0 : ReciprocityTheory.L2DbarEstimates.V n) ρ with hSdef
  have hSU : S ⊆ U := Metric.closedBall_subset_ball hρr
  have hSdet : ∀ u ∈ S, (P u).det ≠ 0 := fun u hu =>
    hball u (Metric.closedBall_subset_ball hρε hu)
  have hSc : IsCompact S := isCompact_closedBall 0 ρ

  let G1 : ReciprocityTheory.L2DbarEstimates.V n → (K → K → ℂ) := fun u i k => P u i k
  let G2 : ReciprocityTheory.L2DbarEstimates.V n → (K → K → ℂ) := fun u i k => (P u)⁻¹ i k
  let G3 : ReciprocityTheory.L2DbarEstimates.V n → (Fin n → K → K → ℂ) := fun u a i k =>
    mdel P u (GlobalTheory.GoodMetric.coordVec a) i k
  let G4 : ReciprocityTheory.L2DbarEstimates.V n → (Fin n → Fin n → K → K → ℂ) := fun u a b i k =>
    mdel (fun u => mdel P u (GlobalTheory.GoodMetric.coordVec b)) u (GlobalTheory.GoodMetric.coordVec a) i k
  have hG1 : ContinuousOn G1 S :=
    continuousOn_pi.2 fun i => continuousOn_pi.2 fun k => ((hP i k).continuousOn).mono hSU
  have hG2 : ContinuousOn G2 S := by
    refine continuousOn_pi.2 fun i => continuousOn_pi.2 fun k => ?_
    refine (((hdetc.mono hSU).inv₀ hSdet).mul ((hadjc i k).mono hSU)).congr fun u _ => ?_
    simp [G2, Matrix.inv_def, Ring.inverse_eq_inv']
  have hG3 : ContinuousOn G3 S := by
    refine continuousOn_pi.2 fun a => continuousOn_pi.2 fun i => continuousOn_pi.2 fun k => ?_
    refine ((holo_fderiv_apply_on hU (hP i k) (GlobalTheory.GoodMetric.coordVec a)).continuousOn.mono
      hSU).congr fun u hu => ?_
    exact holo_mdel_entry hU hP (hSU hu) _ i k
  have hG4 : ContinuousOn G4 S := by
    refine continuousOn_pi.2 fun a => continuousOn_pi.2 fun b => continuousOn_pi.2 fun i =>
      continuousOn_pi.2 fun k => ?_
    refine ((holo_fderiv_apply_on hU (holo_fderiv_apply_on hU (hP i k)
      (GlobalTheory.GoodMetric.coordVec b)) (GlobalTheory.GoodMetric.coordVec a)).continuousOn.mono hSU).congr
      fun u hu => ?_
    exact holo_mdel_mdel_entry hU hP (hSU hu) _ _ i k
  obtain ⟨C1, hC1⟩ := hSc.exists_bound_of_continuousOn hG1
  obtain ⟨C2, hC2⟩ := hSc.exists_bound_of_continuousOn hG2
  obtain ⟨C3, hC3⟩ := hSc.exists_bound_of_continuousOn hG3
  obtain ⟨C4, hC4⟩ := hSc.exists_bound_of_continuousOn hG4
  refine ⟨ρ, hρpos, hρr.le, max (max C1 C2) (max C3 C4), fun v hv => ?_⟩
  have hvS : v ∈ S := by
    rw [hSdef, Metric.mem_closedBall, dist_zero_right]; exact hv.le
  have hvU : v ∈ U := hSU hvS
  refine ⟨isUnit_iff_ne_zero.2 (hSdet v hvS), fun i k => ?_, ?_, fun i k => ?_, fun i k => ?_,
    fun a i k => ?_, fun a b i k => ?_⟩
  · exact ((holo_contDiffOn hU (hP i k)).contDiffAt (hU.mem_nhds hvU)).restrict_scalars ℝ
  · filter_upwards [hU.mem_nhds hvU] with u hu η
    ext i k
    simp [GlobalTheory.dbar_eq_zero ((hP i k).differentiableAt (hU.mem_nhds hu))]
  · have h := (norm_le_pi_norm (G1 v i) k).trans ((norm_le_pi_norm (G1 v) i).trans (hC1 v hvS))
    exact h.trans ((le_max_left _ _).trans (le_max_left _ _))
  · have h := (norm_le_pi_norm (G2 v i) k).trans ((norm_le_pi_norm (G2 v) i).trans (hC2 v hvS))
    exact h.trans ((le_max_right _ _).trans (le_max_left _ _))
  · have h := (norm_le_pi_norm (G3 v a i) k).trans ((norm_le_pi_norm (G3 v a) i).trans
      ((norm_le_pi_norm (G3 v) a).trans (hC3 v hvS)))
    exact h.trans ((le_max_left _ _).trans (le_max_right _ _))
  · have h := (norm_le_pi_norm (G4 v a b i) k).trans ((norm_le_pi_norm (G4 v a b) i).trans
      ((norm_le_pi_norm (G4 v a) b).trans ((norm_le_pi_norm (G4 v) a).trans (hC4 v hvS))))
    exact h.trans ((le_max_right _ _).trans (le_max_right _ _))

end GlobalTheory.HermFrame
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HolomorphicFrameChangeLocalBounds =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HolomorphicFrameChangeLocalBoundsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HolomorphicFrameChangeLocalBoundsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HolomorphicFrameChangeLocalBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLieBase\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ProjVar GlobalTheory.FlagBundle GlobalTheory.GoodMetric GlobalTheory.LieBase
open Classical
open Matrix
open scoped ComplexOrder Topology


theorem _root_.GlobalTheory.T.holomorphicFrameChange_local_bounds : ∀ (n : ℕ) (K : Type) [Fintype K] [DecidableEq K] (P : ReciprocityTheory.L2DbarEstimates.V n → Matrix K K ℂ) (r : ℝ), 0 < r → (∀ i k, DifferentiableOn ℂ (fun u => P u i k) (Metric.ball 0 r)) → IsUnit (P 0).det → ∃ r' : ℝ, 0 < r' ∧ r' ≤ r ∧ ∃ B : ℝ, ∀ v : ReciprocityTheory.L2DbarEstimates.V n, ‖v‖ < r' → IsUnit (P v).det ∧ (∀ i k, ContDiffAt ℝ 2 (fun u => P u i k) v) ∧ (∀ᶠ u in nhds v, ∀ η, GlobalTheory.HermFrame.mdbar P u η = 0) ∧ (∀ i k, ‖P v i k‖ ≤ B) ∧ (∀ i k, ‖(P v)⁻¹ i k‖ ≤ B) ∧ (∀ a i k, ‖GlobalTheory.HermFrame.mdel P v (GlobalTheory.GoodMetric.coordVec a) i k‖ ≤ B) ∧ (∀ a b i k, ‖GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.mdel P u (GlobalTheory.GoodMetric.coordVec b)) v (GlobalTheory.GoodMetric.coordVec a) i k‖ ≤ B) := by
  first | exact @GlobalTheory.HermFrame.holoFrame_local_bounds | exact GlobalTheory.HermFrame.holoFrame_local_bounds | (intros; apply GlobalTheory.HermFrame.holoFrame_local_bounds <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HolomorphicFrameChangeLocalBoundsStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpNormLeOpNormBlockDiagonal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpNormLeOpNormBlockDiagonal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExtFormAdjEqNegSecondForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Complex ComplexConjugate Filter Topology
open scoped ComplexOrder ContDiff

noncomputable section

namespace GlobalTheory.HermFrame

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [NormedSpace ℝ E]
  [IsScalarTower ℝ ℂ E]

section Two

variable {m l m' l' : Type*}

variable [Fintype m] [Fintype l] [Fintype m'] [Fintype l']

variable [DecidableEq m] [DecidableEq l] {H₁ : E → Matrix m m ℂ} {H₂ : E → Matrix l l ℂ} {z : E}

end Two

section Family

variable {o : Type*} [DecidableEq o] {m m' : o → Type*}

theorem mdel_blockDiagonal' (A : ∀ i, E → Matrix (m i) (m' i) ℂ) (z ξ : E) :
    mdel (fun x => blockDiagonal' fun i => A i x) z ξ = blockDiagonal' fun i => mdel (A i) z ξ := by
  ext ⟨i, a⟩ ⟨j, b⟩
  by_cases h : i = j
  · subst h; simp
  · simp [blockDiagonal'_apply_ne _ _ _ h]

theorem mdbar_blockDiagonal' (A : ∀ i, E → Matrix (m i) (m' i) ℂ) (z ξ : E) :
    mdbar (fun x => blockDiagonal' fun i => A i x) z ξ =
      blockDiagonal' fun i => mdbar (A i) z ξ := by
  ext ⟨i, a⟩ ⟨j, b⟩
  by_cases h : i = j
  · subst h; simp
  · simp [blockDiagonal'_apply_ne _ _ _ h]


variable [Fintype o] [∀ i, Fintype (m i)] [∀ i, Fintype (m' i)]


variable [∀ i, DecidableEq (m i)] {H : ∀ i, E → Matrix (m i) (m i) ℂ} {z : E}

theorem isUnit_det_blockDiagonal' {A : ∀ i, Matrix (m i) (m i) ℂ} (h : ∀ i, IsUnit (A i).det) :
    IsUnit (blockDiagonal' A).det := by
  refine isUnit_det_of_right_inverse (B := blockDiagonal' fun i => (A i)⁻¹) ?_
  rw [← blockDiagonal'_mul, ← blockDiagonal'_one]
  congr 1
  funext i
  exact mul_nonsing_inv _ (h i)

theorem conn_blockDiagonal' (h : ∀ i, IsUnit (H i z).det) (ξ : E) :
    conn (fun x => blockDiagonal' fun i => H i x) z ξ = blockDiagonal' fun i => conn (H i) z ξ := by
  refine (eq_conn_of_compatible (H := fun x => blockDiagonal' fun i => H i x)
    (isUnit_det_blockDiagonal' h) ?_).symm
  rw [mdel_blockDiagonal', blockDiagonal'_transpose, ← blockDiagonal'_mul]
  congr 1
  funext i
  exact conn_transpose_mul (h i) ξ

theorem curv_blockDiagonal' {k : WithTop ℕ∞} (d : ∀ i, MContDiffAt k (H i) z)
    (h : ∀ i, IsUnit (H i z).det) (ξ η : E) :
    curv (fun x => blockDiagonal' fun i => H i x) z ξ η =
      blockDiagonal' fun i => curv (H i) z ξ η := by
  have he : (fun x => conn (fun x => blockDiagonal' fun i => H i x) x ξ) =ᶠ[𝓝 z]
      fun x => blockDiagonal' fun i => conn (H i) x ξ :=
    (eventually_all.2 fun i => (d i).eventually_isUnit (h i)).mono
      fun x hx => conn_blockDiagonal' hx ξ
  rw [curv, mdbar_congr he, mdbar_blockDiagonal' fun i x => conn (H i) x ξ, ← blockDiagonal'_neg]
  rfl


end Family

end GlobalTheory.HermFrame
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpNormLeOpNormBlockDiagonal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundBlocksOfBlockDiagonal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundBlocksOfBlockDiagonal", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetBlockChangeOfBasisViaTwoFamiliesImplicit\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpNormLeOpNormBlockDiagonal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Matrix.AbsoluteValue\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLieBase\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ProjVar GlobalTheory.FlagBundle GlobalTheory.GoodMetric GlobalTheory.LieBase
open Classical
open Matrix
open scoped ComplexOrder Topology

namespace GlobalTheory.GoodMetric

theorem pow_le_logTwo_mul_pow {L : ℝ} {N N' k : ℕ} (hN' : N = 0 → N' = 0) (hL : N = 0 ∨ Real.log 2 ≤ L)
    (hk : k ≤ N') : L ^ k ≤ (Real.log 2)⁻¹ ^ N' * L ^ N' := by
  have h2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  have h2' : Real.log 2 < 1 := by have := Real.log_two_lt_d9; linarith
  have hD : 1 ≤ (Real.log 2)⁻¹ ^ N' := one_le_pow₀ (one_le_inv₀ h2 |>.2 h2'.le)
  rcases hL with hN | hL
  · have : N' = 0 := hN' hN
    subst this
    have : k = 0 := by omega
    subst this
    simp
  · have hL0 : 0 < L := h2.trans_le hL
    rcases le_or_gt 1 L with h1 | h1
    · calc L ^ k ≤ L ^ N' := pow_le_pow_right₀ h1 hk
        _ = 1 * L ^ N' := (one_mul _).symm
        _ ≤ _ := mul_le_mul_of_nonneg_right hD (by positivity)
    · calc L ^ k ≤ 1 := pow_le_one₀ hL0.le h1.le
        _ ≤ (L * (Real.log 2)⁻¹) ^ N' := one_le_pow₀ (by rw [← div_eq_mul_inv, one_le_div h2]; exact hL)
        _ = _ := by rw [mul_pow, mul_comm]

theorem sum_abs_log_eq_zero_or_ge {n : ℕ} (S : Finset (Fin n)) (v : ReciprocityTheory.L2DbarEstimates.V n)
    (hS : ∀ a ∈ S, ‖v a‖ < 1 / 2) :
    ∑ a ∈ S, |Real.log ‖v a‖| = 0 ∨ Real.log 2 ≤ ∑ a ∈ S, |Real.log ‖v a‖| := by
  by_cases h : ∀ a ∈ S, |Real.log ‖v a‖| = 0
  · exact Or.inl (Finset.sum_eq_zero h)
  · push_neg at h
    obtain ⟨a, ha, hne⟩ := h
    right
    have hv : ‖v a‖ ≠ 0 := fun h0 => hne (by rw [h0]; simp)
    have hpos : 0 < ‖v a‖ := lt_of_le_of_ne (norm_nonneg _) (Ne.symm hv)
    have hlt : Real.log ‖v a‖ < Real.log (1 / 2) := Real.log_lt_log hpos (hS a ha)
    have hl : Real.log 2 ≤ |Real.log ‖v a‖| := by
      rw [one_div, Real.log_inv] at hlt
      rw [abs_of_neg (by linarith [Real.log_pos one_lt_two])]
      linarith
    exact hl.trans (Finset.single_le_sum (f := fun a => |Real.log ‖v a‖|) (fun _ _ => abs_nonneg _) ha)

end GlobalTheory.GoodMetric

namespace GlobalTheory.GoodMetric

theorem goodBound_of_blockDiagonal' : ∀ (n : ℕ) (S : Finset (Fin n)) (ι : Type) [Fintype ι] [DecidableEq ι] (m : ι → ℕ) (G : ∀ τ : ι, ReciprocityTheory.L2DbarEstimates.V n → Matrix (Fin (m τ)) (Fin (m τ)) ℂ) (c : ℝ) (N : ℕ), ∃ (c' : ℝ) (N' : ℕ), ∀ v : ReciprocityTheory.L2DbarEstimates.V n, (∀ a ∈ S, ‖v a‖ < 1 / 2) → (Matrix.blockDiagonal' fun τ => G τ v).det ≠ 0 → (∀ p q, ContDiffAt ℝ 2 (fun u => (Matrix.blockDiagonal' fun τ => G τ u) p q) v) → GlobalTheory.GoodMetric.GoodBound S c N (fun u => Matrix.blockDiagonal' fun τ => G τ u) v → ∀ τ, GlobalTheory.GoodMetric.GoodBound S c' N' (G τ) v := by
  intro n S ι _ _ m G c N
  set K := ∑ τ, m τ
  set N' := N * (K + 1)
  set F : ℝ := ∏ τ, ((m τ).factorial : ℝ)
  set D : ℝ := (Real.log 2)⁻¹ ^ N'
  refine ⟨F * (max 1 c) ^ (K + 1) * D, N', ?_⟩
  intro v hS hdet hC hG τ
  set L := ∑ a ∈ S, |Real.log ‖v a‖| with hLdef
  have hL0 : 0 ≤ L := Finset.sum_nonneg fun _ _ => abs_nonneg _
  have hdp : 0 < ‖(Matrix.blockDiagonal' fun τ => G τ v).det‖⁻¹ := inv_pos.2 (norm_pos_iff.2 hdet)
  have hcY : 0 < c * L ^ N := hdp.trans_le hG.det
  have hY : 0 < L ^ N := by
    rcases (pow_nonneg hL0 N).lt_or_eq with h | h
    · exact h
    · rw [← h, mul_zero] at hcY; exact absurd hcY (lt_irrefl 0)
  have hc : 0 < c := pos_of_mul_pos_left hcY hY.le
  have hLN : N = 0 ∨ Real.log 2 ≤ L := by
    rcases sum_abs_log_eq_zero_or_ge S v hS with h | h
    · left
      by_contra hN
      rw [← hLdef] at h
      rw [h, zero_pow hN] at hY
      exact lt_irrefl 0 hY
    · exact Or.inr h
  have hN' : N = 0 → N' = 0 := fun h => by simp [N', h]
  have key : ∀ k ≤ N', L ^ k ≤ D * L ^ N' := fun k hk => pow_le_logTwo_mul_pow hN' hLN hk
  have hF : 1 ≤ F := by
    have : F = ((∏ τ, (m τ).factorial : ℕ) : ℝ) := by simp [F]
    rw [this]
    exact_mod_cast Nat.one_le_iff_ne_zero.2 (Finset.prod_ne_zero_iff.2 fun _ _ => Nat.factorial_ne_zero _)
  have hD : 1 ≤ D := one_le_pow₀ ((one_le_inv₀ (Real.log_pos one_lt_two)).2
    (by have := Real.log_two_lt_d9; linarith))
  have hM1 : 1 ≤ max 1 c := le_max_left _ _
  have hcF : c ≤ F * (max 1 c) ^ (K + 1) :=
    calc c ≤ max 1 c := le_max_right _ _
      _ ≤ (max 1 c) ^ (K + 1) := le_self_pow₀ hM1 (by omega)
      _ = 1 * (max 1 c) ^ (K + 1) := (one_mul _).symm
      _ ≤ _ := mul_le_mul_of_nonneg_right hF (by positivity)
  have hcc' : c ≤ F * (max 1 c) ^ (K + 1) * D :=
    hcF.trans (le_mul_of_one_le_right (by positivity) hD)

  have hent : ∀ τ' (i j : Fin (m τ')), ‖G τ' v i j‖ ≤ c * L ^ N := fun τ' i j => by
    have := hG.entry ⟨τ', i⟩ ⟨τ', j⟩
    simpa [Matrix.blockDiagonal'_apply_eq] using this
  have hprod : (Matrix.blockDiagonal' fun τ => G τ v).det = ∏ τ', (G τ' v).det :=
    GlobalTheory.Div.BlockChangeDet.det_blockDiagonal'_eq_prod _
  have hunit : ∀ τ', IsUnit (G τ' v).det := fun τ' => by
    rw [hprod] at hdet
    exact (Finset.prod_ne_zero_iff.1 hdet τ' (Finset.mem_univ _)).isUnit
  have hCτ : ∀ τ', GlobalTheory.HermFrame.MContDiffAt 2 (G τ') v := fun τ' i j => by
    have := hC ⟨τ', i⟩ ⟨τ', j⟩
    simpa [Matrix.blockDiagonal'_apply_eq] using this
  have hconn : ∀ ξ, GlobalTheory.HermFrame.conn (fun u => Matrix.blockDiagonal' fun τ => G τ u) v ξ =
      Matrix.blockDiagonal' fun τ => GlobalTheory.HermFrame.conn (G τ) v ξ := fun ξ =>
    GlobalTheory.HermFrame.conn_blockDiagonal' hunit ξ
  have hcurv : ∀ ξ η, GlobalTheory.HermFrame.curv (fun u => Matrix.blockDiagonal' fun τ => G τ u) v ξ η =
      Matrix.blockDiagonal' fun τ => GlobalTheory.HermFrame.curv (G τ) v ξ η := fun ξ η =>
    GlobalTheory.HermFrame.curv_blockDiagonal' hCτ hunit ξ η
  have hdel : ∀ ξ η, GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.conn
      (fun u => Matrix.blockDiagonal' fun τ => G τ u) u ξ) v η =
      Matrix.blockDiagonal' fun τ => GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.conn (G τ) u ξ) v η := by
    intro ξ η
    have he : (fun u => GlobalTheory.HermFrame.conn (fun u => Matrix.blockDiagonal' fun τ => G τ u) u ξ) =ᶠ[𝓝 v]
        fun u => Matrix.blockDiagonal' fun τ => GlobalTheory.HermFrame.conn (G τ) u ξ :=
      (Filter.eventually_all.2 fun i => (hCτ i).eventually_isUnit (hunit i)).mono
        fun x hx => GlobalTheory.HermFrame.conn_blockDiagonal' hx ξ
    rw [GlobalTheory.HermFrame.mdel_congr he, GlobalTheory.HermFrame.mdel_blockDiagonal']

  set e := c * L ^ N
  set M := max 1 e
  have hM : 1 ≤ M := le_max_left _ _
  have hdetle : ∀ τ', ‖(G τ' v).det‖ ≤ ((m τ').factorial : ℝ) * M ^ m τ' := fun τ' => by
    have := Matrix.det_le (abv := NormedField.toAbsoluteValue ℂ) (A := G τ' v) (x := M)
      fun i j => (hent τ' i j).trans (le_max_right _ _)
    calc ‖(G τ' v).det‖ = (NormedField.toAbsoluteValue ℂ) (G τ' v).det := rfl
      _ ≤ _ := this
      _ = _ := by simp [Fintype.card_fin, nsmul_eq_mul]
  set P := ∏ τ' ∈ Finset.univ.erase τ, ‖(G τ' v).det‖
  have hnorm : ‖(Matrix.blockDiagonal' fun τ => G τ v).det‖ = ‖(G τ v).det‖ * P := by
    rw [hprod, norm_prod, ← Finset.mul_prod_erase _ _ (Finset.mem_univ τ)]
  have hP0 : 0 < P := Finset.prod_pos fun τ' _ => norm_pos_iff.2 (hunit τ').ne_zero
  have hinv : ‖(G τ v).det‖⁻¹ = ‖(Matrix.blockDiagonal' fun τ => G τ v).det‖⁻¹ * P := by
    rw [hnorm, mul_inv, mul_assoc, inv_mul_cancel₀ hP0.ne', mul_one]
  have hPle : P ≤ F * M ^ K := by
    have h1 : P ≤ ∏ τ' ∈ Finset.univ.erase τ, ((m τ').factorial : ℝ) * M ^ m τ' :=
      Finset.prod_le_prod₀ (fun _ _ => norm_nonneg _) fun τ' _ => hdetle τ'
    have h2 : ∏ τ' ∈ Finset.univ.erase τ, ((m τ').factorial : ℝ) * M ^ m τ' ≤
        ∏ τ', ((m τ').factorial : ℝ) * M ^ m τ' := by
      rw [← Finset.mul_prod_erase _ _ (Finset.mem_univ τ)]
      refine le_mul_of_one_le_left (Finset.prod_nonneg fun _ _ => by positivity) ?_
      exact one_le_mul_of_one_le_of_one_le
        (by exact_mod_cast Nat.one_le_iff_ne_zero.2 (Nat.factorial_ne_zero _)) (one_le_pow₀ hM)
    have h3 : ∏ τ', ((m τ').factorial : ℝ) * M ^ m τ' = F * M ^ K := by
      rw [Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum]
    linarith
  have hMle : M ≤ max 1 c * max 1 (L ^ N) :=
    max_le (one_le_mul_of_one_le_of_one_le hM1 (le_max_left _ _))
      (mul_le_mul (le_max_right _ _) (le_max_right _ _) hY.le (by positivity))
  have hMY : (max 1 (L ^ N)) ^ (K + 1) ≤ D * L ^ N' := by
    rcases le_total 1 (L ^ N) with h | h
    · rw [max_eq_right h, ← pow_mul]; exact key _ le_rfl
    · rw [max_eq_left h, one_pow]; simpa using key 0 (Nat.zero_le _)
  refine ⟨fun i j => ?_, ?_, fun a i j => ?_, fun a b i j => ?_, fun a b i j => ?_⟩
  · calc ‖G τ v i j‖ ≤ c * L ^ N := hent τ i j
      _ ≤ c * (D * L ^ N') := mul_le_mul_of_nonneg_left (key N (by simp [N']; exact Nat.le_mul_of_pos_right _ (by omega))) hc.le
      _ = c * D * L ^ N' := by ring
      _ ≤ F * (max 1 c) ^ (K + 1) * D * L ^ N' :=
        mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hcF (by positivity)) (by positivity)
  · rw [hinv]
    calc ‖(Matrix.blockDiagonal' fun τ => G τ v).det‖⁻¹ * P ≤ e * (F * M ^ K) :=
          mul_le_mul hG.det hPle hP0.le hcY.le
      _ ≤ M * (F * M ^ K) := mul_le_mul_of_nonneg_right (le_max_right _ _) (by positivity)
      _ = F * M ^ (K + 1) := by ring
      _ ≤ F * (max 1 c * max 1 (L ^ N)) ^ (K + 1) :=
          mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by positivity) hMle _) (by positivity)
      _ = F * (max 1 c) ^ (K + 1) * (max 1 (L ^ N)) ^ (K + 1) := by ring
      _ ≤ F * (max 1 c) ^ (K + 1) * (D * L ^ N') := mul_le_mul_of_nonneg_left hMY (by positivity)
      _ = _ := by ring
  · have := hG.form a ⟨τ, i⟩ ⟨τ, j⟩
    rw [hconn, Matrix.blockDiagonal'_apply_eq] at this
    exact this.trans hcc'
  · have := hG.dbar a b ⟨τ, i⟩ ⟨τ, j⟩
    rw [hcurv, Matrix.blockDiagonal'_apply_eq] at this
    exact this.trans hcc'
  · have := hG.del a b ⟨τ, i⟩ ⟨τ, j⟩
    rw [hdel, hdel, Matrix.sub_apply, Matrix.blockDiagonal'_apply_eq, Matrix.blockDiagonal'_apply_eq,
      ← Matrix.sub_apply] at this
    exact this.trans hcc'

end GlobalTheory.GoodMetric
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundBlocksOfBlockDiagonal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundBlocksOfBlockDiagonalStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundBlocksOfBlockDiagonalStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundBlocksOfBlockDiagonal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLieBase\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ProjVar GlobalTheory.FlagBundle GlobalTheory.GoodMetric GlobalTheory.LieBase
open Classical
open Matrix
open scoped ComplexOrder Topology


theorem _root_.GlobalTheory.T.mumfordGoodGrowthBound_blocks_of_blockDiagonal : ∀ (n : ℕ) (S : Finset (Fin n)) (ι : Type) [Fintype ι] [DecidableEq ι] (m : ι → ℕ) (G : ∀ τ : ι, ReciprocityTheory.L2DbarEstimates.V n → Matrix (Fin (m τ)) (Fin (m τ)) ℂ) (c : ℝ) (N : ℕ), ∃ (c' : ℝ) (N' : ℕ), ∀ v : ReciprocityTheory.L2DbarEstimates.V n, (∀ a ∈ S, ‖v a‖ < 1 / 2) → (Matrix.blockDiagonal' fun τ => G τ v).det ≠ 0 → (∀ p q, ContDiffAt ℝ 2 (fun u => (Matrix.blockDiagonal' fun τ => G τ u) p q) v) → GlobalTheory.GoodMetric.GoodBound S c N (fun u => Matrix.blockDiagonal' fun τ => G τ u) v → ∀ τ, GlobalTheory.GoodMetric.GoodBound S c' N' (G τ) v := by
  first | exact @GlobalTheory.GoodMetric.goodBound_of_blockDiagonal' | exact GlobalTheory.GoodMetric.goodBound_of_blockDiagonal' | (intros; apply GlobalTheory.GoodMetric.goodBound_of_blockDiagonal' <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundBlocksOfBlockDiagonalStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundHolomorphicFrameChange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundHolomorphicFrameChange", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLieBase\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ProjVar GlobalTheory.FlagBundle GlobalTheory.GoodMetric GlobalTheory.LieBase
open Classical
open Matrix
open scoped ComplexOrder Topology

set_option autoImplicit false

noncomputable section

namespace GlobalTheory.GoodMetric.FrameChange

variable {K : Type} [Fintype K]

def EntryLe (M : Matrix K K ℂ) (x : ℝ) : Prop := ∀ i j, ‖M i j‖ ≤ x

variable {M N : Matrix K K ℂ} {x y : ℝ}

theorem EntryLe.mono (h : EntryLe M x) (hxy : x ≤ y) : EntryLe M y := fun i j => (h i j).trans hxy

theorem EntryLe.add (h : EntryLe M x) (h' : EntryLe N y) : EntryLe (M + N) (x + y) :=
  fun i j => (norm_add_le _ _).trans (add_le_add (h i j) (h' i j))

theorem EntryLe.sub (h : EntryLe M x) (h' : EntryLe N y) : EntryLe (M - N) (x + y) :=
  fun i j => (norm_sub_le _ _).trans (add_le_add (h i j) (h' i j))

theorem EntryLe.mul (hx : 0 ≤ x) (h : EntryLe M x) (h' : EntryLe N y) :
    EntryLe (M * N) (Fintype.card K * x * y) := by
  intro i j
  rw [Matrix.mul_apply]
  calc ‖∑ l, M i l * N l j‖ ≤ ∑ l, ‖M i l * N l j‖ := norm_sum_le _ _
    _ ≤ ∑ _l : K, x * y := Finset.sum_le_sum fun l _ => by
        rw [norm_mul]; exact mul_le_mul (h i l) (h' l j) (norm_nonneg _) hx
    _ = Fintype.card K * x * y := by
        rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul, mul_assoc]

theorem EntryLe.smul {w : ℝ} (hw : 0 ≤ w) (h : EntryLe M x) : EntryLe ((w : ℂ) • M) (w * x) :=
  fun i j => by
    rw [Matrix.smul_apply, smul_eq_mul, norm_mul, Complex.norm_real, Real.norm_of_nonneg hw]
    exact mul_le_mul_of_nonneg_left (h i j) hw

theorem entryLe_smul_of {w c : ℝ} (hw : 0 ≤ w) (h : ∀ i j, ‖M i j‖ * w ≤ c) :
    EntryLe ((w : ℂ) • M) c := fun i j => by
  rw [Matrix.smul_apply, smul_eq_mul, norm_mul, Complex.norm_real, Real.norm_of_nonneg hw, mul_comm]
  exact h i j

theorem EntryLe.of_smul {w : ℝ} (hw : 0 ≤ w) (h : EntryLe ((w : ℂ) • M) x) (i j : K) :
    ‖M i j‖ * w ≤ x := by
  have := h i j
  rwa [Matrix.smul_apply, smul_eq_mul, norm_mul, Complex.norm_real, Real.norm_of_nonneg hw,
    mul_comm] at this

theorem EntryLe.transpose (h : EntryLe M x) : EntryLe Mᵀ x := fun i j => h j i

theorem EntryLe.conjTranspose (h : EntryLe M x) : EntryLe Mᴴ x := fun i j => by
  rw [conjTranspose_apply, norm_star]; exact h j i

theorem EntryLe.norm_det_le [DecidableEq K] (h : EntryLe M x) :
    ‖M.det‖ ≤ (Fintype.card K).factorial * x ^ Fintype.card K := by
  rw [det_apply]
  calc ‖∑ σ : Equiv.Perm K, Equiv.Perm.sign σ • ∏ i, M (σ i) i‖
      ≤ ∑ σ : Equiv.Perm K, ‖Equiv.Perm.sign σ • ∏ i, M (σ i) i‖ := norm_sum_le _ _
    _ ≤ ∑ _σ : Equiv.Perm K, x ^ Fintype.card K := Finset.sum_le_sum fun σ _ => by
        have hs : ‖Equiv.Perm.sign σ • ∏ i, M (σ i) i‖ = ∏ i, ‖M (σ i) i‖ := by
          rcases Int.units_eq_one_or (Equiv.Perm.sign σ) with hσ | hσ <;> simp [hσ, norm_prod]
        rw [hs]
        calc ∏ i, ‖M (σ i) i‖ ≤ ∏ _i : K, x :=
              Finset.prod_le_prod₀ (fun i _ => norm_nonneg _) fun i _ => h _ _
          _ = x ^ Fintype.card K := by rw [Finset.prod_const, Finset.card_univ]
    _ = _ := by rw [Finset.sum_const, Finset.card_univ, Fintype.card_perm, nsmul_eq_mul]

theorem mdel_conn_changeFrame : ∀ (n : ℕ) (K : Type) [Fintype K] [DecidableEq K] (G₀ A : ReciprocityTheory.L2DbarEstimates.V n → Matrix K K ℂ) (v : ReciprocityTheory.L2DbarEstimates.V n), GlobalTheory.HermFrame.MContDiffAt 2 G₀ v → IsUnit (G₀ v).det → GlobalTheory.HermFrame.MContDiffAt 2 A v → IsUnit (A v).det → (∀ᶠ u in nhds v, ∀ η, GlobalTheory.HermFrame.mdbar A u η = 0) → ∀ ξ ζ : ReciprocityTheory.L2DbarEstimates.V n, GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.conn (fun x => (A x)ᵀ * G₀ x * (A x)ᴴᵀ) u ζ) v ξ = (A v)⁻¹ * (GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.conn G₀ u ζ) v ξ * A v + GlobalTheory.HermFrame.conn G₀ v ζ * GlobalTheory.HermFrame.mdel A v ξ + GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.mdel A u ζ) v ξ) - (A v)⁻¹ * GlobalTheory.HermFrame.mdel A v ξ * (A v)⁻¹ * (GlobalTheory.HermFrame.conn G₀ v ζ * A v + GlobalTheory.HermFrame.mdel A v ζ) := by
  intro n K _ _ G₀ A v hG hGu hA hAu hA0 ξ ζ
  have hA1 : GlobalTheory.HermFrame.MContDiffAt 1 A v := hA.of_le one_le_two
  have hc : GlobalTheory.HermFrame.MContDiffAt 1 (fun x => GlobalTheory.HermFrame.conn G₀ x ζ) v :=
    hG.conn hGu (by norm_num) ζ
  have hd : GlobalTheory.HermFrame.MContDiffAt 1 (fun x => GlobalTheory.HermFrame.mdel A x ζ) v := hA.mdel (by norm_num) ζ
  have he : (fun x => GlobalTheory.HermFrame.conn (fun x => (A x)ᵀ * G₀ x * (A x)ᴴᵀ) x ζ) =ᶠ[nhds v]
      fun x => (A x)⁻¹ * (GlobalTheory.HermFrame.conn G₀ x ζ * A x + GlobalTheory.HermFrame.mdel A x ζ) := by
    filter_upwards [hG.eventually_two, hG.eventually_isUnit hGu, hA.eventually_two,
      hA.eventually_isUnit hAu, hA0] with x h1 h2 h3 h4 h5
    exact GlobalTheory.HermFrame.conn_changeFrame (h1.of_le one_le_two) h2 (h3.of_le one_le_two) h4 h5 ζ
  rw [GlobalTheory.HermFrame.mdel_congr he, GlobalTheory.HermFrame.mdel_mul (hA1.inv hAu) ((hc.mul hA1).add hd),
    GlobalTheory.HermFrame.mdel_inv hA1 hAu, GlobalTheory.HermFrame.mdel_add (hc.mul hA1) hd,
    GlobalTheory.HermFrame.mdel_mul hc hA1]
  noncomm_ring

theorem entryLe_antisymm_del : ∀ (K : Type) [Fintype K] (X A Ta Tb Dab Dba dAa dAb ddAab ddAba : Matrix K K ℂ) (wa wb b c : ℝ), 0 ≤ wa → wa ≤ 1 → 0 ≤ wb → wb ≤ 1 → 0 ≤ b → 0 ≤ c → GlobalTheory.GoodMetric.FrameChange.EntryLe X b → GlobalTheory.GoodMetric.FrameChange.EntryLe A b → GlobalTheory.GoodMetric.FrameChange.EntryLe dAa b → GlobalTheory.GoodMetric.FrameChange.EntryLe dAb b → GlobalTheory.GoodMetric.FrameChange.EntryLe ddAab b → GlobalTheory.GoodMetric.FrameChange.EntryLe ddAba b → GlobalTheory.GoodMetric.FrameChange.EntryLe ((wa : ℂ) • Ta) c → GlobalTheory.GoodMetric.FrameChange.EntryLe ((wb : ℂ) • Tb) c → GlobalTheory.GoodMetric.FrameChange.EntryLe (((wa * wb : ℝ) : ℂ) • (Dab - Dba)) c → GlobalTheory.GoodMetric.FrameChange.EntryLe (((wa * wb : ℝ) : ℂ) • ((X * (Dab * A + Tb * dAa + ddAab) - X * dAa * X * (Tb * A + dAb)) - (X * (Dba * A + Ta * dAb + ddAba) - X * dAb * X * (Ta * A + dAa)))) (3 * (Fintype.card K : ℝ) ^ 2 * b ^ 2 * c + 2 * (Fintype.card K : ℝ) ^ 4 * b ^ 4 * c + 2 * (Fintype.card K : ℝ) ^ 3 * b ^ 4 + 2 * (Fintype.card K : ℝ) * b ^ 2) := by
  intro K _ X A Ta Tb Dab Dba dAa dAb ddAab ddAba wa wb b c hwa0 hwa1 hwb0 hwb1 hb hc hX hA hdAa hdAb hddab hddba hTa hTb hD
  set k : ℝ := (Fintype.card K : ℝ) with hk
  have hk0 : 0 ≤ k := Nat.cast_nonneg _
  have e : (((wa * wb : ℝ) : ℂ) • ((X * (Dab * A + Tb * dAa + ddAab) - X * dAa * X * (Tb * A + dAb)) -
      (X * (Dba * A + Ta * dAb + ddAba) - X * dAb * X * (Ta * A + dAa)))) =
      X * (((wa * wb : ℝ) : ℂ) • (Dab - Dba)) * A + X * ((wb : ℂ) • Tb) * ((wa : ℂ) • dAa)
        - X * ((wa : ℂ) • Ta) * ((wb : ℂ) • dAb)
        - X * ((wa : ℂ) • dAa) * X * ((wb : ℂ) • Tb) * A + X * ((wb : ℂ) • dAb) * X * ((wa : ℂ) • Ta) * A
        - ((wa * wb : ℝ) : ℂ) • (X * dAa * X * dAb) + ((wa * wb : ℝ) : ℂ) • (X * dAb * X * dAa)
        + ((wa * wb : ℝ) : ℂ) • (X * (ddAab - ddAba)) := by
    push_cast
    simp only [Matrix.smul_mul, Matrix.mul_smul, smul_smul, smul_sub, smul_add, Matrix.mul_add,
      Matrix.add_mul, Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_assoc, mul_comm (wb : ℂ) (wa : ℂ)]
    abel
  have hwa : wa * b ≤ b := by nlinarith
  have hwb : wb * b ≤ b := by nlinarith
  have hw0 : 0 ≤ wa * wb := mul_nonneg hwa0 hwb0
  have hw1 : wa * wb ≤ 1 := by nlinarith
  have hkb : 0 ≤ k * b * b := by positivity
  have t1 : GlobalTheory.GoodMetric.FrameChange.EntryLe (X * (((wa * wb : ℝ) : ℂ) • (Dab - Dba)) * A) (k ^ 2 * b ^ 2 * c) :=
    ((hX.mul hb hD).mul (by positivity) hA).mono (le_of_eq (by ring))
  have t2 : GlobalTheory.GoodMetric.FrameChange.EntryLe (X * ((wb : ℂ) • Tb) * ((wa : ℂ) • dAa)) (k ^ 2 * b ^ 2 * c) :=
    ((hX.mul hb hTb).mul (by positivity) (hdAa.smul hwa0)).mono (by
      have := mul_le_mul_of_nonneg_left hwa (by positivity : 0 ≤ k * (k * b * c))
      nlinarith)
  have t3 : GlobalTheory.GoodMetric.FrameChange.EntryLe (X * ((wa : ℂ) • Ta) * ((wb : ℂ) • dAb)) (k ^ 2 * b ^ 2 * c) :=
    ((hX.mul hb hTa).mul (by positivity) (hdAb.smul hwb0)).mono (by
      have := mul_le_mul_of_nonneg_left hwb (by positivity : 0 ≤ k * (k * b * c))
      nlinarith)
  have t4 : GlobalTheory.GoodMetric.FrameChange.EntryLe (X * ((wa : ℂ) • dAa) * X * ((wb : ℂ) • Tb) * A) (k ^ 4 * b ^ 4 * c) := by
    have h := ((((hX.mul hb (hdAa.smul hwa0)).mul (by positivity) hX).mul (by positivity) hTb).mul
      (by positivity) hA)
    refine h.mono ?_
    have := mul_le_mul_of_nonneg_left hwa (by positivity : 0 ≤ k ^ 4 * b ^ 2 * c)
    nlinarith
  have t5 : GlobalTheory.GoodMetric.FrameChange.EntryLe (X * ((wb : ℂ) • dAb) * X * ((wa : ℂ) • Ta) * A) (k ^ 4 * b ^ 4 * c) := by
    have h := ((((hX.mul hb (hdAb.smul hwb0)).mul (by positivity) hX).mul (by positivity) hTa).mul
      (by positivity) hA)
    refine h.mono ?_
    have := mul_le_mul_of_nonneg_left hwb (by positivity : 0 ≤ k ^ 4 * b ^ 2 * c)
    nlinarith
  have t6 : GlobalTheory.GoodMetric.FrameChange.EntryLe (((wa * wb : ℝ) : ℂ) • (X * dAa * X * dAb)) (k ^ 3 * b ^ 4) := by
    refine ((((hX.mul hb hdAa).mul (by positivity) hX).mul (by positivity) hdAb).smul hw0).mono ?_
    have := mul_le_mul_of_nonneg_right hw1 (by positivity : 0 ≤ k ^ 3 * b ^ 4)
    nlinarith
  have t7 : GlobalTheory.GoodMetric.FrameChange.EntryLe (((wa * wb : ℝ) : ℂ) • (X * dAb * X * dAa)) (k ^ 3 * b ^ 4) := by
    refine ((((hX.mul hb hdAb).mul (by positivity) hX).mul (by positivity) hdAa).smul hw0).mono ?_
    have := mul_le_mul_of_nonneg_right hw1 (by positivity : 0 ≤ k ^ 3 * b ^ 4)
    nlinarith
  have t8 : GlobalTheory.GoodMetric.FrameChange.EntryLe (((wa * wb : ℝ) : ℂ) • (X * (ddAab - ddAba))) (2 * k * b ^ 2) := by
    refine ((hX.mul hb (hddab.sub hddba)).smul hw0).mono ?_
    have := mul_le_mul_of_nonneg_right hw1 (by positivity : 0 ≤ 2 * k * b ^ 2)
    nlinarith
  rw [e]
  refine (((((((t1.add t2).sub t3).sub t4).add t5).sub t6).add t7).add t8).mono (le_of_eq ?_)
  ring

theorem poinWt_mem {n : ℕ} (S : Finset (Fin n)) {v : ReciprocityTheory.L2DbarEstimates.V n} (hv : ‖v‖ < 1) (a : Fin n) :
    0 ≤ poinWt S v a ∧ poinWt S v a ≤ 1 := by
  unfold poinWt
  split_ifs with ha
  · have h1 : ‖v a‖ < 1 := (PiLp.norm_apply_le v a).trans_lt hv
    refine ⟨by positivity, ?_⟩
    rcases (norm_nonneg (v a)).eq_or_lt with h0 | h0
    · rw [← h0]; simp
    · have := Real.abs_log_mul_self_lt ‖v a‖ h0 h1.le
      rw [abs_mul, abs_of_pos h0] at this
      linarith
  · exact ⟨zero_le_one, le_rfl⟩

theorem goodBound_changeFrame : ∀ (n : ℕ) (K : Type) [Fintype K] [DecidableEq K] (S : Finset (Fin n)) (c : ℝ) (N : ℕ) (B : ℝ), ∃ c' : ℝ, ∀ (G₀ P : ReciprocityTheory.L2DbarEstimates.V n → Matrix K K ℂ) (v : ReciprocityTheory.L2DbarEstimates.V n), ‖v‖ < 1 → (G₀ v).det ≠ 0 → (∀ i k, ContDiffAt ℝ 2 (fun u => G₀ u i k) v) → (∀ i k, ContDiffAt ℝ 2 (fun u => P u i k) v) → (∀ᶠ u in nhds v, ∀ η, GlobalTheory.HermFrame.mdbar P u η = 0) → IsUnit (P v).det → (∀ i k, ‖P v i k‖ ≤ B) → (∀ i k, ‖(P v)⁻¹ i k‖ ≤ B) → (∀ a i k, ‖GlobalTheory.HermFrame.mdel P v (GlobalTheory.GoodMetric.coordVec a) i k‖ ≤ B) → (∀ a b i k, ‖GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.mdel P u (GlobalTheory.GoodMetric.coordVec b)) v (GlobalTheory.GoodMetric.coordVec a) i k‖ ≤ B) → GlobalTheory.GoodMetric.GoodBound S c N G₀ v → (P v * G₀ v * (P v)ᴴ).det ≠ 0 ∧ (∀ i k, ContDiffAt ℝ 2 (fun u => (P u * G₀ u * (P u)ᴴ) i k) v) ∧ GlobalTheory.GoodMetric.GoodBound S c' N (fun u => P u * G₀ u * (P u)ᴴ) v := by
  intro n K _ _ S c N B
  set k : ℝ := (Fintype.card K : ℝ) with hk
  set b : ℝ := |B| with hb
  set D : ℝ := ((Fintype.card K).factorial : ℝ) * b ^ Fintype.card K with hD
  refine ⟨D ^ 2 * c + k ^ 2 * b ^ 2 * c + (k ^ 2 * b ^ 2 * c + k * b ^ 2) + k ^ 2 * b ^ 2 * c +
    (3 * k ^ 2 * b ^ 2 * c + 2 * k ^ 4 * b ^ 4 * c + 2 * k ^ 3 * b ^ 4 + 2 * k * b ^ 2), ?_⟩
  intro G₀ P v hv hdet hG hP hhol hPu hPb hPib hdPb hddPb hgb
  have hk0 : 0 ≤ k := Nat.cast_nonneg _
  have hb0 : 0 ≤ b := abs_nonneg _
  have hD0 : 0 ≤ D := by positivity
  set s : ℝ := ∑ a ∈ S, |Real.log ‖v a‖| with hs
  have hs0 : 0 ≤ s ^ N := pow_nonneg (Finset.sum_nonneg fun _ _ => abs_nonneg _) _
  have hcpos : 0 < c := by
    have h1 := hgb.det
    have h2 : 0 < ‖(G₀ v).det‖⁻¹ := inv_pos.2 (norm_pos_iff.2 hdet)
    by_contra hc
    push_neg at hc
    nlinarith [mul_nonpos_of_nonpos_of_nonneg hc hs0]
  have hc0 := hcpos.le

  set A : ReciprocityTheory.L2DbarEstimates.V n → Matrix K K ℂ := fun u => (P u)ᵀ with hA
  have hGA : (fun u => P u * G₀ u * (P u)ᴴ) = fun x => (A x)ᵀ * G₀ x * (A x)ᴴᵀ := rfl
  have hG2 : GlobalTheory.HermFrame.MContDiffAt 2 G₀ v := hG
  have hP2 : GlobalTheory.HermFrame.MContDiffAt 2 P v := hP
  have hA2 : GlobalTheory.HermFrame.MContDiffAt 2 A v := hP2.transpose
  have hG1 : GlobalTheory.HermFrame.MContDiffAt 1 G₀ v := hG2.of_le one_le_two
  have hA1 : GlobalTheory.HermFrame.MContDiffAt 1 A v := hA2.of_le one_le_two
  have hGu : IsUnit (G₀ v).det := hdet.isUnit
  have hAu : IsUnit (A v).det := by simpa [hA, det_transpose] using hPu
  have hAhol : ∀ᶠ u in nhds v, ∀ η, GlobalTheory.HermFrame.mdbar A u η = 0 :=
    hhol.mono fun u hu η => by
      rw [hA, GlobalTheory.HermFrame.mdbar_transpose, hu η, transpose_zero]

  have eB : ∀ (M : Matrix K K ℂ), (∀ i j, ‖M i j‖ ≤ B) → EntryLe M b :=
    fun M h i j => (h i j).trans (le_abs_self B)
  have hX : EntryLe (A v)⁻¹ b := by
    intro i j
    have := (eB _ hPib) j i
    show ‖((P v)ᵀ)⁻¹ i j‖ ≤ b
    rw [← transpose_nonsing_inv]; exact this
  have hAb : EntryLe (A v) b := (eB _ hPb).transpose
  have hdA : ∀ a, EntryLe (GlobalTheory.HermFrame.mdel A v (coordVec a)) b := fun a =>
    (eB _ (hdPb a)).transpose
  have hddA : ∀ a b', EntryLe (GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.mdel A u (coordVec b')) v
      (coordVec a)) b := fun a b' => (eB _ (hddPb a b')).transpose
  have hw := poinWt_mem S hv
  have hconn : ∀ ξ, GlobalTheory.HermFrame.conn (fun u => P u * G₀ u * (P u)ᴴ) v ξ =
      (A v)⁻¹ * (GlobalTheory.HermFrame.conn G₀ v ξ * A v + GlobalTheory.HermFrame.mdel A v ξ) := fun ξ => by
    rw [hGA]
    exact GlobalTheory.HermFrame.conn_changeFrame hG1 hGu hA1 hAu hAhol.self_of_nhds ξ
  refine ⟨?_, ?_, ?_⟩
  · rw [det_mul, det_mul, det_conjTranspose]
    exact mul_ne_zero (mul_ne_zero hPu.ne_zero hdet) (star_ne_zero.2 hPu.ne_zero)
  · exact (hP2.mul hG2).mul hP2.conjTranspose
  constructor
  ·
    intro i j
    have hG0e : EntryLe (G₀ v) (c * s ^ N) := hgb.entry
    have h1 := ((eB _ hPb).mul hb0 hG0e).mul (by positivity) (eB _ hPb).conjTranspose
    refine (h1 i j).trans ?_
    have e : k * (k * b * (c * s ^ N)) * b = (k ^ 2 * b ^ 2 * c) * s ^ N := by ring
    rw [← hk, e]
    refine mul_le_mul_of_nonneg_right ?_ hs0
    have : 0 ≤ D ^ 2 * c := by positivity
    have : 0 ≤ k ^ 2 * b ^ 2 * c + k * b ^ 2 := by positivity
    have : 0 ≤ k ^ 2 * b ^ 2 * c := by positivity
    have : 0 ≤ 3 * k ^ 2 * b ^ 2 * c + 2 * k ^ 4 * b ^ 4 * c + 2 * k ^ 3 * b ^ 4 + 2 * k * b ^ 2 := by
      positivity
    linarith
  ·
    have hPi : ‖(P v).det‖⁻¹ ≤ D := by
      have h1 := (eB _ hPib).norm_det_le
      rw [det_nonsing_inv, Ring.inverse_eq_inv', norm_inv] at h1
      exact h1
    have e : ‖(P v * G₀ v * (P v)ᴴ).det‖⁻¹ = ‖(P v).det‖⁻¹ ^ 2 * ‖(G₀ v).det‖⁻¹ := by
      rw [det_mul, det_mul, det_conjTranspose, norm_mul, norm_mul, norm_star]
      rw [mul_inv, mul_inv]; ring
    rw [e]
    calc ‖(P v).det‖⁻¹ ^ 2 * ‖(G₀ v).det‖⁻¹ ≤ D ^ 2 * (c * s ^ N) :=
          mul_le_mul (pow_le_pow_left₀ (by positivity) hPi 2) hgb.det (by positivity) (by positivity)
      _ ≤ _ := by
        rw [← mul_assoc]
        refine mul_le_mul_of_nonneg_right ?_ hs0
        have : 0 ≤ k ^ 2 * b ^ 2 * c + k * b ^ 2 := by positivity
        have : 0 ≤ k ^ 2 * b ^ 2 * c := by positivity
        have : 0 ≤ 3 * k ^ 2 * b ^ 2 * c + 2 * k ^ 4 * b ^ 4 * c + 2 * k ^ 3 * b ^ 4 + 2 * k * b ^ 2 := by
          positivity
        linarith
  ·
    intro a i j
    set w := poinWt S v a
    have hT : EntryLe ((w : ℂ) • GlobalTheory.HermFrame.conn G₀ v (coordVec a)) c :=
      entryLe_smul_of (hw a).1 (hgb.form a)
    have e : (w : ℂ) • GlobalTheory.HermFrame.conn (fun u => P u * G₀ u * (P u)ᴴ) v (coordVec a) =
        (A v)⁻¹ * (((w : ℂ) • GlobalTheory.HermFrame.conn G₀ v (coordVec a)) * A v) +
          (w : ℂ) • ((A v)⁻¹ * GlobalTheory.HermFrame.mdel A v (coordVec a)) := by
      rw [hconn, Matrix.mul_add, smul_add, Matrix.smul_mul, Matrix.mul_smul]
    have h1 : EntryLe ((w : ℂ) • GlobalTheory.HermFrame.conn (fun u => P u * G₀ u * (P u)ᴴ) v (coordVec a))
        (k ^ 2 * b ^ 2 * c + k * b ^ 2) := by
      rw [e]
      refine ((hX.mul hb0 (hT.mul hc0 hAb)).add ((hX.mul hb0 (hdA a)).smul (hw a).1)).mono ?_
      rw [← hk]
      have : (w * (k * b * b)) ≤ k * b ^ 2 := by
        have := mul_le_mul_of_nonneg_right (hw a).2 (by positivity : 0 ≤ k * b * b)
        nlinarith
      nlinarith
    refine (h1.of_smul (hw a).1 i j).trans ?_
    have : 0 ≤ D ^ 2 * c := by positivity
    have : 0 ≤ k ^ 2 * b ^ 2 * c := by positivity
    have : 0 ≤ 3 * k ^ 2 * b ^ 2 * c + 2 * k ^ 4 * b ^ 4 * c + 2 * k ^ 3 * b ^ 4 + 2 * k * b ^ 2 := by
      positivity
    linarith
  ·
    intro a b' i j
    set w := poinWt S v a * poinWt S v b'
    have hw0 : 0 ≤ w := mul_nonneg (hw a).1 (hw b').1
    have hF : EntryLe ((w : ℂ) • GlobalTheory.HermFrame.curv G₀ v (coordVec a) (coordVec b')) c :=
      entryLe_smul_of hw0 (hgb.dbar a b')
    have e : GlobalTheory.HermFrame.curv (fun u => P u * G₀ u * (P u)ᴴ) v (coordVec a) (coordVec b') =
        (A v)⁻¹ * GlobalTheory.HermFrame.curv G₀ v (coordVec a) (coordVec b') * A v := by
      rw [hGA]
      exact GlobalTheory.HermFrame.curv_changeFrame hG2 hGu hA2 hAu hAhol _ _
    have h1 : EntryLe ((w : ℂ) • GlobalTheory.HermFrame.curv (fun u => P u * G₀ u * (P u)ᴴ) v (coordVec a)
        (coordVec b')) (k ^ 2 * b ^ 2 * c) := by
      rw [e, Matrix.mul_assoc, ← Matrix.mul_smul, ← Matrix.smul_mul]
      refine (hX.mul hb0 (hF.mul hc0 hAb)).mono (le_of_eq ?_)
      rw [← hk]; ring
    refine (h1.of_smul hw0 i j).trans ?_
    have : 0 ≤ k ^ 2 * b ^ 2 * c := by positivity
    have : 0 ≤ D ^ 2 * c := by positivity
    have : 0 ≤ k ^ 2 * b ^ 2 * c + k * b ^ 2 := by positivity
    have : 0 ≤ 3 * k ^ 2 * b ^ 2 * c + 2 * k ^ 4 * b ^ 4 * c + 2 * k ^ 3 * b ^ 4 + 2 * k * b ^ 2 := by
      positivity
    linarith
  ·
    intro a b' i j
    set wa := poinWt S v a
    set wb := poinWt S v b'
    have hw0 : 0 ≤ wa * wb := mul_nonneg (hw a).1 (hw b').1
    have e1 := mdel_conn_changeFrame n K G₀ A v hG2 hGu hA2 hAu hAhol (coordVec a) (coordVec b')
    have e2 := mdel_conn_changeFrame n K G₀ A v hG2 hGu hA2 hAu hAhol (coordVec b') (coordVec a)
    rw [← hGA] at e1 e2
    have h1 := entryLe_antisymm_del K (A v)⁻¹ (A v) (GlobalTheory.HermFrame.conn G₀ v (coordVec a))
      (GlobalTheory.HermFrame.conn G₀ v (coordVec b'))
      (GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.conn G₀ u (coordVec b')) v (coordVec a))
      (GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.conn G₀ u (coordVec a)) v (coordVec b'))
      (GlobalTheory.HermFrame.mdel A v (coordVec a)) (GlobalTheory.HermFrame.mdel A v (coordVec b'))
      (GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.mdel A u (coordVec b')) v (coordVec a))
      (GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.mdel A u (coordVec a)) v (coordVec b'))
      wa wb b c (hw a).1 (hw a).2 (hw b').1 (hw b').2 hb0 hc0 hX hAb (hdA a) (hdA b') (hddA a b')
      (hddA b' a) (entryLe_smul_of (hw a).1 (hgb.form a)) (entryLe_smul_of (hw b').1 (hgb.form b'))
      (entryLe_smul_of hw0 (hgb.del a b'))
    rw [← e1, ← e2] at h1
    refine (h1.of_smul hw0 i j).trans ?_
    rw [← hk]
    have : 0 ≤ D ^ 2 * c := by positivity
    have : 0 ≤ k ^ 2 * b ^ 2 * c + k * b ^ 2 := by positivity
    have : 0 ≤ k ^ 2 * b ^ 2 * c := by positivity
    linarith

end GlobalTheory.GoodMetric.FrameChange
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundHolomorphicFrameChange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundHolomorphicFrameChangeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundHolomorphicFrameChangeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundHolomorphicFrameChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLieBase\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ProjVar GlobalTheory.FlagBundle GlobalTheory.GoodMetric GlobalTheory.LieBase
open Classical
open Matrix
open scoped ComplexOrder Topology


theorem _root_.GlobalTheory.T.mumfordGoodGrowthBound_holomorphic_frameChange : ∀ (n : ℕ) (K : Type) [Fintype K] [DecidableEq K] (S : Finset (Fin n)) (c : ℝ) (N : ℕ) (B : ℝ), ∃ c' : ℝ, ∀ (G₀ P : ReciprocityTheory.L2DbarEstimates.V n → Matrix K K ℂ) (v : ReciprocityTheory.L2DbarEstimates.V n), ‖v‖ < 1 → (G₀ v).det ≠ 0 → (∀ i k, ContDiffAt ℝ 2 (fun u => G₀ u i k) v) → (∀ i k, ContDiffAt ℝ 2 (fun u => P u i k) v) → (∀ᶠ u in nhds v, ∀ η, GlobalTheory.HermFrame.mdbar P u η = 0) → IsUnit (P v).det → (∀ i k, ‖P v i k‖ ≤ B) → (∀ i k, ‖(P v)⁻¹ i k‖ ≤ B) → (∀ a i k, ‖GlobalTheory.HermFrame.mdel P v (GlobalTheory.GoodMetric.coordVec a) i k‖ ≤ B) → (∀ a b i k, ‖GlobalTheory.HermFrame.mdel (fun u => GlobalTheory.HermFrame.mdel P u (GlobalTheory.GoodMetric.coordVec b)) v (GlobalTheory.GoodMetric.coordVec a) i k‖ ≤ B) → GlobalTheory.GoodMetric.GoodBound S c N G₀ v → (P v * G₀ v * (P v)ᴴ).det ≠ 0 ∧ (∀ i k, ContDiffAt ℝ 2 (fun u => (P u * G₀ u * (P u)ᴴ) i k) v) ∧ GlobalTheory.GoodMetric.GoodBound S c' N (fun u => P u * G₀ u * (P u)ᴴ) v := by
  first | exact @GlobalTheory.GoodMetric.FrameChange.goodBound_changeFrame | exact GlobalTheory.GoodMetric.FrameChange.goodBound_changeFrame | (intros; apply GlobalTheory.GoodMetric.FrameChange.goodBound_changeFrame <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundHolomorphicFrameChangeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundFrameChangeOrthogonalSumma =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundFrameChangeOrthogonalSumma", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HolomorphicFrameChangeLocalBoundsStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundBlocksOfBlockDiagonalStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundCongrGermGramStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundHolomorphicFrameChangeStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLieBase\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ProjVar GlobalTheory.FlagBundle GlobalTheory.GoodMetric GlobalTheory.LieBase
open Classical
open Matrix
open scoped ComplexOrder Topology

set_option autoImplicit false
noncomputable section
namespace GlobalTheory.FrameGood
open ReciprocityTheory.L2DbarEstimates (V)

theorem goodBound_submatrix {n : ℕ} {K L : Type} [Fintype K] [DecidableEq K] [Fintype L] [DecidableEq L]
    (e : K ≃ L) {S : Finset (Fin n)} {c : ℝ} {N : ℕ} {G : V n → Matrix L L ℂ} {v : V n}
    (h : GoodBound S c N G v) : GoodBound S c N (fun u => (G u).submatrix e e) v := by
  refine ⟨fun i j => h.entry (e i) (e j), ?_, ?_, ?_, ?_⟩
  · simpa only [det_submatrix_equiv_self] using h.det
  · intro a i j
    simpa only [GlobalTheory.HermFrame.conn_submatrix_equiv, Matrix.submatrix_apply]
      using h.form a (e i) (e j)
  · intro a b i j
    simpa only [GlobalTheory.HermFrame.curv_submatrix_equiv, Matrix.submatrix_apply]
      using h.dbar a b (e i) (e j)
  · intro a b i j
    have h1 : ∀ ξ, (fun u => GlobalTheory.HermFrame.conn (fun x => (G x).submatrix e e) u ξ) =
        fun u => (GlobalTheory.HermFrame.conn G u ξ).submatrix e e :=
      fun ξ => funext fun u => GlobalTheory.HermFrame.conn_submatrix_equiv G e u ξ
    simp only [h1]
    exact h.del a b (e i) (e j)

theorem frame_summands_goodBound : ∀ (n g : ℕ) (S : Finset (Fin n)) (W : Set (ReciprocityTheory.L2DbarEstimates.V n)) (G₀ : ReciprocityTheory.L2DbarEstimates.V n → Matrix (Fin g) (Fin g) ℂ) (c : ℝ) (N : ℕ) (ι : Type) [Fintype ι] [DecidableEq ι] (m : ι → ℕ) (Q : ∀ τ : ι, ReciprocityTheory.L2DbarEstimates.V n → Matrix (Fin (m τ)) (Fin g) ℂ) (r : ℝ), IsOpen W → 0 < r → (∀ τ i k, DifferentiableOn ℂ (fun u => Q τ u i k) (Metric.ball 0 r)) → Fintype.card (Σ τ, Fin (m τ)) = g → LinearIndependent ℂ (fun p : Σ τ, Fin (m τ) => Q p.1 0 p.2) → (∀ v ∈ W, (G₀ v).det ≠ 0 ∧ (∀ i k, ContDiffAt ℝ 2 (fun u => G₀ u i k) v) ∧ GlobalTheory.GoodMetric.GoodBound S c N G₀ v) → (∀ v ∈ W, ∀ τ τ', τ ≠ τ' → Q τ v * G₀ v * (Q τ' v)ᴴ = 0) → ∃ r' : ℝ, 0 < r' ∧ ∃ (c' : ℝ) (N' : ℕ), ∀ v ∈ W, ‖v‖ < r' → ∀ τ, GlobalTheory.GoodMetric.GoodBound S c' N' (fun u => Q τ u * G₀ u * (Q τ u)ᴴ) v := by
  intro n g S W G₀ c N ι _ _ m Q r hW hr hQ hcard hind hG₀ horth
  let K := Σ τ, Fin (m τ)
  let e : K ≃ Fin g := Fintype.equivFinOfCardEq hcard
  let P : V n → Matrix K K ℂ := fun u => Matrix.of fun p k => Q p.1 u p.2 (e k)
  let G₁ : V n → Matrix K K ℂ := fun u => (G₀ u).submatrix e e
  have hP : ∀ i k, DifferentiableOn ℂ (fun u => P u i k) (Metric.ball 0 r) := fun i k => hQ i.1 i.2 (e k)
  have hP0 : IsUnit (P 0).det := by
    rw [← isUnit_iff_isUnit_det, ← linearIndependent_row_iff_isUnit]
    have h2 := hind.map' _ (LinearEquiv.ker (LinearEquiv.funCongrLeft ℂ ℂ e))
    have h3 : (P 0).row = ⇑(LinearEquiv.funCongrLeft ℂ ℂ e) ∘ fun p => Q p.1 0 p.2 := by
      funext p k; rfl
    rw [h3]; exact h2
  have hG₁ : ∀ v ∈ W, (G₁ v).det ≠ 0 ∧ (∀ i k, ContDiffAt ℝ 2 (fun u => G₁ u i k) v) ∧
      GoodBound S c N G₁ v := by
    intro v hv
    obtain ⟨h1, h2, h3⟩ := hG₀ v hv
    exact ⟨by simpa [G₁, det_submatrix_equiv_self] using h1, fun i k => h2 (e i) (e k),
      goodBound_submatrix e h3⟩
  obtain ⟨r₁, hr₁, -, B, hB⟩ := GlobalTheory.T.holomorphicFrameChange_local_bounds n K P r hr hP hP0
  obtain ⟨c₁, hc₁⟩ := GlobalTheory.T.mumfordGoodGrowthBound_holomorphic_frameChange n K S c N B
  let Gb : V n → Matrix K K ℂ := fun u => blockDiagonal' fun τ => Q τ u * G₀ u * (Q τ u)ᴴ
  obtain ⟨c', N', h3⟩ := GlobalTheory.T.mumfordGoodGrowthBound_blocks_of_blockDiagonal n S ι m (fun τ u => Q τ u * G₀ u * (Q τ u)ᴴ) c₁ N
  refine ⟨min r₁ (1 / 2), by positivity, c', N', fun v hv hvr τ => ?_⟩
  have hv1 : ‖v‖ < r₁ := hvr.trans_le (min_le_left _ _)
  have hv2 : ‖v‖ < 1 / 2 := hvr.trans_le (min_le_right _ _)
  obtain ⟨hPu, hPc, hPd, hPb, hPib, hPdb, hPddb⟩ := hB v hv1
  obtain ⟨hdet, hC, hgb⟩ := hG₁ v hv
  obtain ⟨d1, c1, g1⟩ := hc₁ G₁ P v (by linarith) hdet hC hPc hPd hPu hPb hPib hPdb hPddb hgb
  have heq : ∀ u ∈ W, P u * G₁ u * (P u)ᴴ = Gb u := by
    intro u hu
    ext ⟨τ, i⟩ ⟨τ', j⟩
    have key : (P u * G₁ u * (P u)ᴴ) ⟨τ, i⟩ ⟨τ', j⟩ = (Q τ u * G₀ u * (Q τ' u)ᴴ) i j := by
      simp only [P, G₁, Matrix.mul_apply, conjTranspose_apply, of_apply, submatrix_apply]
      exact Fintype.sum_equiv e _ _ fun l => by
        congr 1
        exact Fintype.sum_equiv e _ _ fun k => rfl
    by_cases hτ : τ = τ'
    · subst hτ
      rw [key]
      simp only [Gb, blockDiagonal'_apply_eq]
    · rw [key, horth u hu τ τ' hτ]
      simp only [Gb, blockDiagonal'_apply_ne _ _ _ hτ, Matrix.zero_apply]
  have hev : (fun u => P u * G₁ u * (P u)ᴴ) =ᶠ[𝓝 v] Gb :=
    Filter.eventually_of_mem (hW.mem_nhds hv) heq
  refine h3 v (fun a _ => (PiLp.norm_apply_le v a).trans_lt hv2) ?_ ?_ ?_ τ
  · change (Gb v).det ≠ 0
    rw [← heq v hv]; exact d1
  · intro p q
    exact (c1 p q).congr_of_eventuallyEq (hev.mono fun u hu => by
      exact (congrFun (congrFun hu p) q).symm)
  · exact GlobalTheory.T.mumfordGoodGrowthBound_congr_germ_gram n K S c₁ N _ Gb v hev g1

end GlobalTheory.FrameGood
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundFrameChangeOrthogonalSumma =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundFrameChangeOrthogonalSummaStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundFrameChangeOrthogonalSummaStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundFrameChangeOrthogonalSumma\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FnAlgClosedOfFixedPoints\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLieBase\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ProjVar GlobalTheory.FlagBundle GlobalTheory.GoodMetric GlobalTheory.LieBase
open Classical
open Matrix
open scoped ComplexOrder Topology

theorem _root_.GlobalTheory.T.mumfordGoodGrowthBound_frameChange_orthogonalSummands : ∀ (n g : ℕ) (S : Finset (Fin n)) (W : Set (ReciprocityTheory.L2DbarEstimates.V n)) (G₀ : ReciprocityTheory.L2DbarEstimates.V n → Matrix (Fin g) (Fin g) ℂ) (c : ℝ) (N : ℕ) (ι : Type) [Fintype ι] [DecidableEq ι] (m : ι → ℕ) (Q : ∀ τ : ι, ReciprocityTheory.L2DbarEstimates.V n → Matrix (Fin (m τ)) (Fin g) ℂ) (r : ℝ), IsOpen W → 0 < r → (∀ τ i k, DifferentiableOn ℂ (fun u => Q τ u i k) (Metric.ball 0 r)) → Fintype.card (Σ τ, Fin (m τ)) = g → LinearIndependent ℂ (fun p : Σ τ, Fin (m τ) => Q p.1 0 p.2) → (∀ v ∈ W, (G₀ v).det ≠ 0 ∧ (∀ i k, ContDiffAt ℝ 2 (fun u => G₀ u i k) v) ∧ GlobalTheory.GoodMetric.GoodBound S c N G₀ v) → (∀ v ∈ W, ∀ τ τ', τ ≠ τ' → Q τ v * G₀ v * (Q τ' v)ᴴ = 0) → ∃ r' : ℝ, 0 < r' ∧ ∃ (c' : ℝ) (N' : ℕ), ∀ v ∈ W, ‖v‖ < r' → ∀ τ, GlobalTheory.GoodMetric.GoodBound S c' N' (fun u => Q τ u * G₀ u * (Q τ u)ᴴ) v := by
  first | exact @GlobalTheory.FrameGood.frame_summands_goodBound | exact GlobalTheory.FrameGood.frame_summands_goodBound | (intros; apply GlobalTheory.FrameGood.frame_summands_goodBound <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundFrameChangeOrthogonalSummaStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HodgeMetricLieGramIsGoodMumford =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HodgeMetricLieGramIsGoodMumford", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLieBase\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HodgeChartBoundsOfSchurLemW\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsHodgeMetricPeriodChartAtBoundaryPointStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InvHodgeMetricGramMumfordGoodGrowthBoundaryChartStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundCongrGermGramStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.MumfordGoodGrowthBoundFrameChangeOrthogonalSummaStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.HodgePeriodGram\n\n"}
section -- clump:auto
@[expose] public section

set_option autoImplicit false

open AlgebraicGeometry CategoryTheory MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ProjVar GlobalTheory.FlagBundle GlobalTheory.GoodMetric GlobalTheory.LieBase
open Classical
open Matrix
open scoped ComplexOrder Topology

namespace GlobalTheory.LieBaseGood

theorem lieGram_isGood : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Y : Model Xo c β) (T : TorModel Y) (F : Type) [Field F] (e : F ≃+* c.F) (σ : c.F →+* ℂ) (U : Formalism.L2.PjFree.Unf Xo c σ (Dw.p + Dw.q)), Formalism.L2.PjFree.GoodEmb c σ → Formalism.L2.PjFree.IsUnf U → ∀ (C : FlagCpt T.Z e), ∀ (X : Var F) (j : X.X ⟶ gen T.Z) (f : C.Y.X ⟶ X.X) (f₀ : EigFrame T.Z (constF e X) (genericPt X ≫ j ≫ genι T.Z)) (Eb : Fr (ratOf X) Dw.mult 0) (A₀ : Mat Dw.mult X.Fn) (hj : j ≫ genStr T.Z ≫ spMap e.toRingHom = X.str), IsLieBase e C X j f f₀ Eb A₀ → IsGood Eb (openPart j) (lieGram e U hj f₀ A₀) := by
  intro E _ _ _ H Dw l Xo c O _ β Y T F _ e σ U hσ hU C X j f f₀ Eb A₀ hj hL y hy
  obtain ⟨ch, a, ha, g, rk, τ₀, B, hP, hHolo, hys, hy0, hpoly, hbd, A, hA, Q, hQ, hcard, hind, hform, horth⟩ :=
    GlobalTheory.T.exists_hodgeMetric_periodChart_at_boundaryPoint E H Dw l Xo c O β Y T F e σ U hσ hU C X j f f₀ Eb A₀ hj hL y hy
  obtain ⟨ρ, hρ, hρ2, c₀, N₀, hb⟩ := GlobalTheory.T.inv_hodgeMetricGram_mumfordGoodGrowth_boundaryChart X.dim a ha g rk τ₀ B hP
  let W : Set (ReciprocityTheory.L2DbarEstimates.V X.dim) :=
    (ch.target ∩ ch.symm ⁻¹' GlobalTheory.CxPts.ptsIn X.str (σ.comp e.toRingHom) (openPart j)) ∩
      WithLp.ofLp ⁻¹' GlobalTheory.IndefiniteRowSideFullHecke.HodgePeriodGram.punctured ha ρ
  have hWo : IsOpen W := (ch.isOpen_inter_preimage_symm (GlobalTheory.CxPts.isOpen_ptsIn _)).inter
    ((GlobalTheory.HodgeChartRow.isOpen_punctured ha ρ).preimage (PiLp.continuous_ofLp 2 _))
  let G₀ : ReciprocityTheory.L2DbarEstimates.V X.dim → Matrix (Fin g) (Fin g) ℂ :=
    fun u => (GlobalTheory.IndefiniteRowSideFullHecke.HodgePeriodGram.hodgeGram ha τ₀ B u.ofLp)⁻¹
  let Q' : ∀ τ : E →+* ℂ, ReciprocityTheory.L2DbarEstimates.V X.dim → Matrix (Fin (Dw.mult τ)) (Fin g) ℂ := fun τ u => Q τ u.ofLp
  have hdo : Differentiable ℂ (WithLp.ofLp : ReciprocityTheory.L2DbarEstimates.V X.dim → Fin X.dim → ℂ) :=
    (EuclideanSpace.equiv (Fin X.dim) ℂ).differentiable
  have hQ' : ∀ τ i k, DifferentiableOn ℂ (fun u => Q' τ u i k) (Metric.ball 0 1) := by
    intro τ i k
    refine (hQ τ i k).comp hdo.differentiableOn fun u hu k' => ?_
    exact (PiLp.norm_apply_le u k').trans_lt (by simpa using hu)
  have hind' : LinearIndependent ℂ (fun p : Σ τ, Fin (Dw.mult τ) => Q' p.1 0 p.2) := by
    simpa [Q'] using hind
  have hG₀ : ∀ v ∈ W, (G₀ v).det ≠ 0 ∧ (∀ i k, ContDiffAt ℝ 2 (fun u => G₀ u i k) v) ∧
      GlobalTheory.GoodMetric.GoodBound (Finset.univ.map (Fin.castLEEmb ha)) c₀ N₀ G₀ v := by
    intro v hv
    obtain ⟨hpd, hcd, hgb⟩ := hb v hv.2
    refine ⟨?_, hcd, hgb⟩
    exact (Matrix.isUnit_nonsing_inv_det _ (isUnit_iff_ne_zero.2 hpd.det_pos.ne')).ne_zero
  have horth' : ∀ v ∈ W, ∀ τ τ', τ ≠ τ' → Q' τ v * G₀ v * (Q' τ' v)ᴴ = 0 := by
    intro v hv τ τ' hne
    have := horth (ch.symm v) (ch.map_target hv.1.1) hv.1.2 τ τ' hne
    rwa [ch.right_inv hv.1.1] at this
  obtain ⟨r', hr', c', N', hfr⟩ := GlobalTheory.T.mumfordGoodGrowthBound_frameChange_orthogonalSummands X.dim g (Finset.univ.map (Fin.castLEEmb ha)) W G₀ c₀ N₀ (E →+* ℂ)
    Dw.mult Q' 1 hWo one_pos hQ' hcard hind' hG₀ horth'
  refine ⟨ch, Finset.univ.map (Fin.castLEEmb ha), hHolo, hys, ?_, ?_, A, hA, c', N', ?_⟩
  · intro b _
    rw [hy0]
    rfl
  · intro z hz
    rw [hbd z hz]
    constructor
    · rintro ⟨i, hi⟩
      exact ⟨Fin.castLE ha i, by simp, hi⟩
    · rintro ⟨b, hb', hb0⟩
      obtain ⟨i, -, rfl⟩ := Finset.mem_map.1 hb'
      exact ⟨i, hb0⟩
  · have h1 : ∀ᶠ z in nhds y, z ∈ ch.source ∧ ch z ∈ Metric.ball (0 : ReciprocityTheory.L2DbarEstimates.V X.dim) (min r' ρ) :=
      Filter.Eventually.and (ch.open_source.mem_nhds hys) ((ch.continuousAt hys).preimage_mem_nhds
        (by rw [hy0]; exact Metric.ball_mem_nhds _ (lt_min hr' hρ)))
    filter_upwards [nhdsWithin_le_nhds h1, self_mem_nhdsWithin] with z hz hzO τ
    obtain ⟨hzs, hzb⟩ := hz
    rw [mem_ball_zero_iff] at hzb
    have hzW : ch z ∈ W := by
      refine ⟨⟨ch.map_source hzs, Set.mem_preimage.2 (by rw [ch.left_inv hzs]; exact hzO)⟩, ?_, ?_⟩
      · exact fun k => (PiLp.norm_apply_le _ k).trans_lt (hzb.trans_le (min_le_right _ _))
      · intro i hi
        exact (hbd z hzs).2 ⟨i, hi⟩ hzO
    have hGB := hfr (ch z) hzW (hzb.trans_le (min_le_left _ _)) τ
    refine GlobalTheory.T.mumfordGoodGrowthBound_congr_germ_gram X.dim _ _ c' N' _ _ (ch z) ?_ hGB
    filter_upwards [hWo.mem_nhds hzW] with u hu
    have := hform (ch.symm u) (ch.map_target hu.1.1) hu.1.2 τ
    rw [ch.right_inv hu.1.1] at this
    exact this.symm

end GlobalTheory.LieBaseGood
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HodgeMetricLieGramIsGoodMumford =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HodgeMetricLieGramIsGoodMumfordStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HodgeMetricLieGramIsGoodMumfordStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLieBase\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HodgeMetricLieGramIsGoodMumford\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory MvPolynomial NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj GlobalTheory.Toroidal GlobalTheory.ShFam GlobalTheory.ProjVar GlobalTheory.FlagBundle GlobalTheory.GoodMetric GlobalTheory.LieBase
open Classical


theorem _root_.GlobalTheory.T.hodgeMetric_lieGram_isGood_mumford : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (O : Type) [CommRing O] (β : O →+* c.F) (Y : Model Xo c β) (T : TorModel Y) (F : Type) [Field F] (e : F ≃+* c.F) (σ : c.F →+* ℂ) (U : Formalism.L2.PjFree.Unf Xo c σ (Dw.p + Dw.q)), Formalism.L2.PjFree.GoodEmb c σ → Formalism.L2.PjFree.IsUnf U → ∀ (C : FlagCpt T.Z e), ∀ (X : Var F) (j : X.X ⟶ gen T.Z) (f : C.Y.X ⟶ X.X) (f₀ : EigFrame T.Z (constF e X) (genericPt X ≫ j ≫ genι T.Z)) (Eb : Fr (ratOf X) Dw.mult 0) (A₀ : Mat Dw.mult X.Fn) (hj : j ≫ genStr T.Z ≫ spMap e.toRingHom = X.str), IsLieBase e C X j f f₀ Eb A₀ → IsGood Eb (openPart j) (lieGram e U hj f₀ A₀) := by
  exact @GlobalTheory.LieBaseGood.lieGram_isGood
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HodgeMetricLieGramIsGoodMumfordStatement =====
