import CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure VesicleFormationPackage where
  clathrinCoatAssembly : Prop
  cargoSelection : Prop
  membraneInvagination : Prop
  dynaminScission : Prop

structure VesicleFormationEvidence (V : VesicleFormationPackage) where
  clathrinCoatAssemblyClosed : V.clathrinCoatAssembly
  cargoSelectionClosed : V.cargoSelection
  membraneInvaginationClosed : V.membraneInvagination
  dynaminScissionClosed : V.dynaminScission

def VesicleFormationClosed (V : VesicleFormationPackage) : Prop :=
  V.clathrinCoatAssembly ∧ V.cargoSelection ∧ V.membraneInvagination ∧ V.dynaminScission

theorem vesicle_formation_closed_from_evidence (V : VesicleFormationPackage) (E : VesicleFormationEvidence V) :
    VesicleFormationClosed V :=
  And.intro E.clathrinCoatAssemblyClosed (And.intro E.cargoSelectionClosed (And.intro E.membraneInvaginationClosed E.dynaminScissionClosed))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse