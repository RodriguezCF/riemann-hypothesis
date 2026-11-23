module

public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ChartGen
public import Mathlib.Basic.ENNReal.Inv
public import Mathlib.Topology.Algebra.InfiniteSum.Basic
public import Mathlib.Topology.Algebra.InfiniteSum.ENNReal
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
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FlagMeasures.OrbitStabilizerMassProdEqMul, Development.AbelianVarietyTheory.Proofs.FlagMeasures.OrbitStabilizerMassProdEqMulStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.OrbitStabilizerMassProdEqMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.OrbitStabilizerMassProdEqMul", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ChartGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Basic.ENNReal.Inv\npublic import Mathlib.Topology.Algebra.InfiniteSum.Basic\npublic import Mathlib.Topology.Algebra.InfiniteSum.ENNReal\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix GlobalTheory.Mass Formalism.HermitianLatticesTheory
open scoped ENNReal Classical

namespace GlobalTheory.Mass.ProdMass

noncomputable def wt (G : Type) [Group G] {α : Type} [MulAction G α] (X : Set α) (x : α) : ℝ≥0∞ :=
  if x ∈ X then ((ENat.card (MulAction.stabilizer G x) : ℕ∞) : ℝ≥0∞)⁻¹ else 0

theorem orbMass_eq (G : Type) [Group G] {α : Type} [MulAction G α] (X : Set α) :
    orbMass G X = ∑' q : MulAction.orbitRel.Quotient G α, wt G X (Quotient.out q) := by
  unfold orbMass orbSum
  have := tsum_subtype {q : MulAction.orbitRel.Quotient G α | Quotient.out q ∈ X}
    (fun q => ((ENat.card (MulAction.stabilizer G (Quotient.out q)) : ℕ∞) : ℝ≥0∞)⁻¹ * 1)
  refine this.trans (tsum_congr fun q => ?_)
  simp [Set.indicator, wt]

theorem wt_rel (G : Type) [Group G] {α : Type} [MulAction G α] (X : Set α) (hX : Stable G X)
    {x y : α} (h : MulAction.orbitRel G α x y) : wt G X x = wt G X y := by
  have hc : ENat.card (MulAction.stabilizer G x) = ENat.card (MulAction.stabilizer G y) :=
    ENat.card_congr (MulAction.stabilizerEquivStabilizerOfOrbitRel h).toEquiv
  obtain ⟨g, hg⟩ := h
  simp only at hg
  have hm : x ∈ X ↔ y ∈ X := by
    constructor
    · intro hx
      have := hX g⁻¹ x hx
      rwa [← hg, inv_smul_smul] at this
    · intro hy
      rw [← hg]; exact hX g y hy
  unfold wt
  rw [hc]
  simp only [hm]

variable {Γ G G' α β : Type} [Group Γ] [Group G] [Group G'] [MulAction G α] [MulAction G' β]
  [MulAction Γ (α × β)] (φ : Γ ≃* G × G')
  (hφ : ∀ (γ : Γ) (p : α × β), γ • p = ((φ γ).1 • p.1, (φ γ).2 • p.2))

include hφ in
theorem rel_iff (p q : α × β) : MulAction.orbitRel Γ (α × β) p q ↔
    MulAction.orbitRel G α p.1 q.1 ∧ MulAction.orbitRel G' β p.2 q.2 := by
  simp only [MulAction.orbitRel_apply, MulAction.mem_orbit_iff]
  constructor
  · rintro ⟨γ, rfl⟩
    rw [hφ]
    exact ⟨⟨_, rfl⟩, ⟨_, rfl⟩⟩
  · rintro ⟨⟨g, hg⟩, ⟨g', hg'⟩⟩
    refine ⟨φ.symm (g, g'), ?_⟩
    rw [hφ]
    simp [hg, hg']

def stabEquiv (p : α × β) : MulAction.stabilizer Γ p ≃
    MulAction.stabilizer G p.1 × MulAction.stabilizer G' p.2 where
  toFun γ := (⟨(φ γ).1, by
      have := hφ γ p
      rw [γ.2] at this
      exact (congrArg Prod.fst this).symm⟩, ⟨(φ γ).2, by
      have := hφ γ p
      rw [γ.2] at this
      exact (congrArg Prod.snd this).symm⟩)
  invFun g := ⟨φ.symm (g.1, g.2), by
    rw [MulAction.mem_stabilizer_iff, hφ]
    have h1 : (g.1 : G) • p.1 = p.1 := g.1.2
    have h2 : (g.2 : G') • p.2 = p.2 := g.2.2
    simp [h1, h2]⟩
  left_inv γ := by simp
  right_inv g := by simp

include hφ in
theorem wt_prod (X : Set α) (Y : Set β) (p : α × β) :
    wt Γ (X ×ˢ Y) p = wt G X p.1 * wt G' Y p.2 := by
  unfold wt
  by_cases h1 : p.1 ∈ X <;> by_cases h2 : p.2 ∈ Y <;> simp only [Set.mem_prod, h1, h2, and_self,
    and_true, and_false, if_true, if_false, mul_zero, zero_mul]
  rw [ENat.card_congr (stabEquiv φ hφ p), ENat.card_prod, ENat.toENNReal_mul, ENNReal.mul_inv]
  · left
    exact_mod_cast (ENat.card_pos (α := MulAction.stabilizer G p.1)).ne'
  · right
    exact_mod_cast (ENat.card_pos (α := MulAction.stabilizer G' p.2)).ne'

noncomputable def orbEquiv : MulAction.orbitRel.Quotient Γ (α × β) ≃
    MulAction.orbitRel.Quotient G α × MulAction.orbitRel.Quotient G' β where
  toFun := Quotient.lift (fun p => (Quotient.mk _ p.1, Quotient.mk _ p.2)) fun p q h => by
    obtain ⟨h1, h2⟩ := (rel_iff φ hφ p q).1 h
    exact Prod.ext (Quotient.sound h1) (Quotient.sound h2)
  invFun q := Quotient.mk _ (Quotient.out q.1, Quotient.out q.2)
  left_inv q := by
    induction q using Quotient.inductionOn with
    | h p =>
      refine Quotient.sound ((rel_iff φ hφ _ _).2 ⟨?_, ?_⟩)
      · exact Quotient.mk_out (s := MulAction.orbitRel G α) p.1
      · exact Quotient.mk_out (s := MulAction.orbitRel G' β) p.2
  right_inv q := by
    simp

theorem orbMass_prod : ∀ (Γ G G' α β : Type) [Group Γ] [Group G] [Group G'] [MulAction G α]
    [MulAction G' β] [MulAction Γ (α × β)] (φ : Γ ≃* G × G') (X : Set α) (Y : Set β),
    (∀ (γ : Γ) (p : α × β), γ • p = ((φ γ).1 • p.1, (φ γ).2 • p.2)) → Stable G X → Stable G' Y →
    (∀ x ∈ X, Finite (MulAction.stabilizer G x)) → (∀ y ∈ Y, Finite (MulAction.stabilizer G' y)) →
    orbMass Γ (X ×ˢ Y) = orbMass G X * orbMass G' Y := by
  intro Γ G G' α β _ _ _ _ _ _ φ X Y hφ hX hY _ _
  have hXY : Stable Γ (X ×ˢ Y) := by
    intro γ p hp
    rw [hφ]
    exact ⟨hX _ _ hp.1, hY _ _ hp.2⟩
  rw [orbMass_eq, orbMass_eq, orbMass_eq, ← (orbEquiv φ hφ).symm.tsum_eq, ENNReal.tsum_prod',
    ← ENNReal.tsum_mul_right]
  refine tsum_congr fun a => ?_
  rw [← ENNReal.tsum_mul_left]
  refine tsum_congr fun b => ?_
  rw [← wt_prod φ hφ X Y (Quotient.out a, Quotient.out b)]
  exact wt_rel Γ _ hXY (Quotient.mk_out (s := MulAction.orbitRel Γ (α × β)) _)

end GlobalTheory.Mass.ProdMass
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.OrbitStabilizerMassProdEqMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.OrbitStabilizerMassProdEqMulStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.OrbitStabilizerMassProdEqMulStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ChartGen\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.OrbitStabilizerMassProdEqMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix GlobalTheory.Mass Formalism.HermitianLatticesTheory
open scoped ENNReal Classical

theorem _root_.GlobalTheory.T.orbitStabilizerMass_prod_eq_mul : ∀ (Γ G G' α β : Type) [Group Γ] [Group G] [Group G'] [MulAction G α] [MulAction G' β] [MulAction Γ (α × β)] (φ : Γ ≃* G × G') (X : Set α) (Y : Set β), (∀ (γ : Γ) (p : α × β), γ • p = ((φ γ).1 • p.1, (φ γ).2 • p.2)) → Stable G X → Stable G' Y → (∀ x ∈ X, Finite (MulAction.stabilizer G x)) → (∀ y ∈ Y, Finite (MulAction.stabilizer G' y)) → orbMass Γ (X ×ˢ Y) = orbMass G X * orbMass G' Y := by
  first | exact @GlobalTheory.Mass.ProdMass.orbMass_prod | exact GlobalTheory.Mass.ProdMass.orbMass_prod | (intros; apply GlobalTheory.Mass.ProdMass.orbMass_prod <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.OrbitStabilizerMassProdEqMulStatement =====
