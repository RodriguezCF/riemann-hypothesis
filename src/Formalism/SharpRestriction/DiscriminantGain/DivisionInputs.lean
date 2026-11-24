import Formalism.SharpRestriction.DiscriminantGain.Division
import Formalism.SharpRestriction.DiscriminantGain.FamilyFrames

open Module NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.BasicNotions.DV Formalism.MainNotions.G
open Formalism.DivisionValues Formalism.L2.DIV Formalism.L2.G.ServJoint
open Formalism.MainNotions Formalism.MainNotions.OrbitPlaces Formalism.FrobeniusOrbits PI.EntAtD.W
open Formalism.MainNotions.WeilJacquetShalikaLaw Formalism.MainNotions.WeightDegreeSizes
open Formalism.L2.G.Adm2InU
open Classical

namespace ThetaConcreteDivision

/-- The local inputs used by the existing division and ramified-period proofs on one realisation. -/
structure RealizedInputs (D : D7) (L : SizeData₂ D) where
  rows : DivisionRowsFace L
  C : ℝ
  Cabs : ℝ
  package : DivisionPackageFace rows C Cabs
  X : Inst D L
  K : Formalism.MainNotions.G.Consts
  Dx : DivX D
  T : TwForms D
  E : Ent D
  lev : LevelData D
  Xe : ErrX D
  ce : ErrC
  kernel : KForm E Dx T 1
  composition : ValuationComposition D T
  prime_separation : TypePrimeNotDiscriminant D
  shape : ThetaKernelShapeAtD E Dx
  definition : L.FDef
  error_defs : ErrDefs D L Xe lev K ce
  gain : GainLe X K
  into_model : NuInM D L
  member_chain : MemberChainIntegral D
  point_integral : TwistedPointIntegral D T
  period_sum : PeriodClassSumWeyl D
  period_admissible : TwistedPeriodAdmissible D Dx T
  periods : Formalism.MainNotions.LocalQuadraticParts.adm2 D L
  cut : ∀ μ, Used D μ → CutUp D μ
  lattice_definition : NprimeDef D L
  window : L.sc.w'' D.R.n + L.etaSz + (L.Cc + 1) * L.Sc ≤ L.sc.b' + L.sc.b' / L.sc.x

theorem RealizedInputs.integral_at_uncovered_top {D : D7} {L : SizeData₂ D}
    (I : RealizedInputs D L) (t : D.host.TT)
    (ht : (t : HH D) ∉ D.host.T2.image (fun s : ℕ => D.R.dig s + D.host.u0)) :
    ∀ u : D.what₂.Word,
      (D.div.Nu u).L.map (((D.host.d : D.what₂.LL)⁻¹ • D.div.Bk u).restrictScalars
        (𝓞 D.what₂.LL)) ≤ D.div.RR.dualL :=
  normalized_Bk_integral_of_uncovered_top I.package I.kernel I.composition I.prime_separation I.shape
    I.definition I.error_defs I.gain I.into_model I.member_chain I.point_integral I.period_sum
    I.period_admissible I.periods I.cut I.lattice_definition t ht I.window

end ThetaConcreteDivision
