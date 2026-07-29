import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure ExocytosisMachineryPackage where
  snareComplexFormation : Prop
  vesicleDocking : Prop
  vesiclePriming : Prop
  calciumTriggeredFusion : Prop
  membraneMerged : Prop
  cargoRelease : Prop
  snareRecycling : Prop

def SnareComplexClosed : Prop := True

structure ExocytosisEvidence (E : ExocytosisMachineryPackage) where
  snareComplexFormationClosed : E.snareComplexFormation
  vesicleDockingClosed : E.vesicleDocking
  vesiclePrimingClosed : E.vesiclePriming
  calciumTriggeredFusionClosed : E.calciumTriggeredFusion
  membraneMergedClosed : E.membraneMerged
  cargoReleaseClosed : E.cargoRelease
  snareRecyclingClosed : E.snareRecycling

def ExocytosisClosed (E : ExocytosisMachineryPackage) : Prop :=
  E.snareComplexFormation ∧ E.vesicleDocking ∧ E.vesiclePriming ∧
  E.calciumTriggeredFusion ∧ E.membraneMerged ∧ E.cargoRelease ∧ E.snareRecycling

theorem exocytosis_closed_from_evidence (E : ExocytosisMachineryPackage) (Ev : ExocytosisEvidence E) :
    ExocytosisClosed E := by
  exact And.intro Ev.snareComplexFormationClosed
    (And.intro Ev.vesicleDockingClosed
      (And.intro Ev.vesiclePrimingClosed
        (And.intro Ev.calciumTriggeredFusionClosed
          (And.intro Ev.membraneMergedClosed
            (And.intro Ev.cargoReleaseClosed Ev.snareRecyclingClosed)))))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse