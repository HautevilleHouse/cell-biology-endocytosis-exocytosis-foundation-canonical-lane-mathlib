import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure MembraneTraffickingPackage where
  vesicleFormation : Prop
  cargoLoading : Prop
  vesicleTransport : Prop
  membraneFusion : Prop
  membraneFission : Prop

structure MembraneTraffickingEvidence (M : MembraneTraffickingPackage) where
  vesicleFormationClosed : M.vesicleFormation
  cargoLoadingClosed : M.cargoLoading
  vesicleTransportClosed : M.vesicleTransport
  membraneFusionClosed : M.membraneFusion
  membraneFissionClosed : M.membraneFission

def MembraneTraffickingClosed (M : MembraneTraffickingPackage) : Prop :=
  M.vesicleFormation ∧ M.cargoLoading ∧ M.vesicleTransport ∧ M.membraneFusion ∧ M.membraneFission

theorem membrane_trafficking_closed_from_evidence
    (M : MembraneTraffickingPackage) (E : MembraneTraffickingEvidence M) :
    MembraneTraffickingClosed M := by
  exact And.intro E.vesicleFormationClosed
    (And.intro E.cargoLoadingClosed
      (And.intro E.vesicleTransportClosed
        (And.intro E.membraneFusionClosed E.membraneFissionClosed)))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse
