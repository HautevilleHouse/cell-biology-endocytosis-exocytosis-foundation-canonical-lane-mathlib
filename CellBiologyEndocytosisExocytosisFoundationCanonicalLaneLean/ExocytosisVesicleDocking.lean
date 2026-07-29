import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure ExocytosisVesicleDockingPackage where
  vesicleTethering : Prop
  SNAREComplexAssembly : Prop
  membraneFusionPore : Prop
  cargoRelease : Prop

structure ExocytosisVesicleDockingEvidence (E : ExocytosisVesicleDockingPackage) where
  vesicleTetheringClosed : E.vesicleTethering
  SNAREComplexAssemblyClosed : E.SNAREComplexAssembly
  membraneFusionPoreClosed : E.membraneFusionPore
  cargoReleaseClosed : E.cargoRelease

def ExocytosisVesicleDockingClosed (E : ExocytosisVesicleDockingPackage) : Prop :=
  E.vesicleTethering ∧ E.SNAREComplexAssembly ∧
  E.membraneFusionPore ∧ E.cargoRelease

theorem exocytosis_vesicle_docking_closed_from_evidence
    (E : ExocytosisVesicleDockingPackage)
    (Ev : ExocytosisVesicleDockingEvidence E) : ExocytosisVesicleDockingClosed E := by
  exact And.intro Ev.vesicleTetheringClosed
    (And.intro Ev.SNAREComplexAssemblyClosed
      (And.intro Ev.membraneFusionPoreClosed Ev.cargoReleaseClosed))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse