import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundation

structure ExocystTetheringPackage where
  vesicleTransportToPM : Prop
  exocystComplexAssembly : Prop
  vesicleTethering : Prop

structure ExocystTetheringEvidence (E : ExocystTetheringPackage) where
  vesicleTransportToPMClosed : E.vesicleTransportToPM
  exocystComplexAssemblyClosed : E.exocystComplexAssembly
  vesicleTetheringClosed : E.vesicleTethering

def ExocystTetheringClosed (E : ExocystTetheringPackage) : Prop :=
  E.vesicleTransportToPM ∧ E.exocystComplexAssembly ∧ E.vesicleTethering

theorem exocyst_tethering_closed_from_evidence (E : ExocystTetheringPackage) (Ev : ExocystTetheringEvidence E) :
    ExocystTetheringClosed E := by
  exact And.intro Ev.vesicleTransportToPMClosed
    (And.intro Ev.exocystComplexAssemblyClosed Ev.vesicleTetheringClosed)

end CellBiologyEndocytosisExocytosisFoundation
end HautevilleHouse