module

public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.LeftEqIffLieVecSmul
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HomBaseChangeBijectiveOfLeNilradical
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicTopology.FundamentalGroupoid.SimplyConnected
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
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
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TorusExtensionModuleStructure, Development.AutomorphicSpectrum.Proofs.GeometryProofs.TorusExtensionModuleStructureStatement

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TorusExtensionModuleStructure =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.TorusExtensionModuleStructure", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.LeftEqIffLieVecSmul\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.HomBaseChangeBijectiveOfLeNilradical\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicTopology.FundamentalGroupoid.SimplyConnected\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj

namespace GlobalTheory.CompanionTheory.TorusAct

theorem isMonHom_of_comp_mono {C : Type*} [Category C] [CartesianMonoidalCategory C] {T G : C}
    [MonObj T] [MonObj G] (i : T ⟶ G) [IsMonHom i] [Mono i] (f : G ⟶ G) [IsMonHom f] (u : T ⟶ T)
    (h : u ≫ i = i ≫ f) : IsMonHom u := by
  constructor
  · rw [← cancel_mono i, Category.assoc, h, IsMonHom.one_hom_assoc, IsMonHom.one_hom, IsMonHom.one_hom]
  · apply (cancel_mono i).1
    simp only [Category.assoc, h, IsMonHom.mul_hom, tensorHom_comp_tensorHom_assoc]

theorem diagMap_eq_torusMap {S : Scheme.{0}} {X Y : Type} [AddCommGroup X] [AddCommGroup Y] (u : Y →+ X) :
    GlobalTheory.Diag.diagMap S u = GlobalTheory.SplitTorus.torusMap S u :=
  (GlobalTheory.SplitTorus.eq_torusMap_iff _ _).2 (GlobalTheory.Diag.diagMap_chi S u)

variable {K : Type} [Field K] {G : Over (Sp K)} [GrpObj G]

theorem mono_i (τ : TorusExtension G) : letI := τ.addCommGroup; letI := τ.grpB; Mono τ.i := by
  letI := τ.addCommGroup
  letI := τ.grpB
  exact ⟨fun g h e => τ.isKernel.hom_ext e (toUnit_unique _ _)⟩

theorem exists_restrict (τ : TorusExtension G) (f : G ⟶ G) [IsMonHom f] :
    letI := τ.addCommGroup; letI := τ.grpB; ∀ (b : τ.B ⟶ τ.B), IsMonHom b → f ≫ τ.q = τ.q ≫ b →
      ∃ φ : τ.X →+ τ.X, GlobalTheory.SplitTorus.torusMap (Sp K) φ ≫ τ.i = τ.i ≫ f := by
  letI := τ.addCommGroup
  letI := τ.grpB
  intro b hb hq
  haveI := mono_i τ
  haveI := τ.i_hom
  have w : (τ.i ≫ f) ≫ τ.q = toUnit _ ≫ η := by
    rw [Category.assoc, hq, ← Category.assoc, τ.isKernel.w, Category.assoc, IsMonHom.one_hom]
  let u := τ.isKernel.lift (τ.i ≫ f) (toUnit _) w
  have hu : u ≫ τ.i = τ.i ≫ f := τ.isKernel.lift_fst _ _ _
  haveI : IsMonHom u := isMonHom_of_comp_mono τ.i f u hu
  obtain ⟨φ, hφ⟩ := GlobalTheory.SplitTorus.exists_eq_torusMap u
  exact ⟨φ, hφ ▸ hu⟩

theorem exists_module_diagAct : ∀ (K : Type) [Field K] (G : Over (Sp K)) [GrpObj G] (τ : TorusExtension G)
    (O : Type) [CommRing O] (act : OAct O G), letI := τ.addCommGroup; letI := τ.grpB;
    (∀ a, ∃ b : τ.B ⟶ τ.B, IsMonHom b ∧ act.act a ≫ τ.q = τ.q ≫ b) →
      ∃ m : Module O τ.X, letI := m;
        ∀ a, (GlobalTheory.Diag.diagAct (Sp K) O τ.X).act a ≫ τ.i = τ.i ≫ act.act a := by
  intro K _ G _ τ O _ act
  letI := τ.addCommGroup
  letI := τ.grpB
  intro hb
  haveI := mono_i τ
  haveI := τ.i_hom
  have ex : ∀ a, ∃ φ : τ.X →+ τ.X, GlobalTheory.SplitTorus.torusMap (Sp K) φ ≫ τ.i = τ.i ≫ act.act a := fun a => by
    obtain ⟨b, h1, h2⟩ := hb a
    haveI := act.hom a
    exact exists_restrict τ _ b h1 h2
  choose φ hφ using ex
  have inj : ∀ {α β : τ.X →+ τ.X}, GlobalTheory.SplitTorus.torusMap (Sp K) α ≫ τ.i =
      GlobalTheory.SplitTorus.torusMap (Sp K) β ≫ τ.i → α = β := fun h =>
    GlobalTheory.SplitTorus.torusMap_injective ((cancel_mono _).1 h)
  have h1 : φ 1 = AddMonoidHom.id τ.X := inj (by
    rw [hφ, act.one, GlobalTheory.SplitTorus.torusMap_id, Category.comp_id, Category.id_comp])
  have hm : ∀ a b, φ (a * b) = (φ a).comp (φ b) := fun a b => inj (by
    rw [hφ, act.mul, GlobalTheory.SplitTorus.torusMap_comp, Category.assoc, hφ,
      ← Category.assoc _ τ.i, hφ, Category.assoc])
  have ha : ∀ a b, φ (a + b) = φ a + φ b := fun a b => inj (by
    rw [hφ, act.add, GlobalTheory.SplitTorus.torusMap_add, MonObj.mul_comp, hφ, hφ, MonObj.comp_mul])
  let ρ : O →+* AddMonoid.End τ.X := RingHom.mk' ⟨⟨φ, h1⟩, hm⟩ ha
  letI m : Module O τ.X := Module.compHom τ.X ρ
  refine ⟨m, fun a => ?_⟩
  have e : DistribSMul.toAddMonoidHom τ.X a = φ a := rfl
  rw [GlobalTheory.Diag.diagAct_act, e, diagMap_eq_torusMap, hφ]

end GlobalTheory.CompanionTheory.TorusAct
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TorusExtensionModuleStructure =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TorusExtensionModuleStructureStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.TorusExtensionModuleStructureStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.LeftEqIffLieVecSmul\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TorusExtensionModuleStructure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor

theorem _root_.GlobalTheory.T.torus_extension_module_structure : ∀ (K : Type) [Field K] (G : Over (Sp K)) [GrpObj G] (τ : TorusExtension G) (O : Type) [CommRing O] (act : OAct O G), letI := τ.addCommGroup; letI := τ.grpB; (∀ a, ∃ b : τ.B ⟶ τ.B, IsMonHom b ∧ act.act a ≫ τ.q = τ.q ≫ b) → ∃ m : Module O τ.X, letI := m; ∀ a, (GlobalTheory.Diag.diagAct (Sp K) O τ.X).act a ≫ τ.i = τ.i ≫ act.act a := by
  first | exact @GlobalTheory.CompanionTheory.TorusAct.exists_module_diagAct | exact GlobalTheory.CompanionTheory.TorusAct.exists_module_diagAct | (intros; apply GlobalTheory.CompanionTheory.TorusAct.exists_module_diagAct <;> assumption)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TorusExtensionModuleStructureStatement =====
