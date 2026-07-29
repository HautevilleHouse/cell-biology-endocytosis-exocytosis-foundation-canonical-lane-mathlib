import CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean.MembraneTrafficking

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure ExocytosisMechanismPackage {V : VesicleFormationPackage} {M : MembraneTraffickingPackage V} where
  snareComplexAssembly : Prop
  vesicleFusionPore : Prop
  secretagogueTrigger : Prop
  cargoRelease : Prop

structure ExocytosisMechanismEvidence {V : VesicleFormationPackage} {M : MembraneTraffickingPackage V} (E : ExocytosisMechanismPackage M) where
  snareComplexAssemblyClosed : E.snareComplexAssembly
  vesicleFusionPoreClosed : E.vesicleFusionPore
  secretagogueTriggerClosed : E.secretagogueTrigger
  cargoReleaseClosed : E.cargoRelease

def ExocytosisMechanismClosed {V : VesicleFormationPackage} {M : MembraneTraffickingPackage V} (E : ExocytosisMechanismPackage M) : Prop :=
  E.snareComplexAssembly ∧ E.vesicleFusionPore ∧ E.secretagogueTrigger ∧ E.cargoRelease

theorem exocytosis_mechanism_closed_from_evidence {V : VesicleFormationPackage} {M : MembraneTraffickingPackage V} (E : ExocytosisMechanismPackage M) (Ev : ExocytosisMechanismEvidence E) :
    ExocytosisMechanismClosed E :=
  And.intro Ev.snareComplexAssemblyClosed (And.intro Ev.vesicleFusionPoreClosed (And.intro Ev.secretagogueTriggerClosed Ev.cargoReleaseClosed))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse