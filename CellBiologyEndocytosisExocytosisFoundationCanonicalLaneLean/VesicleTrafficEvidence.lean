import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

open VesicleTrafficPackage

structure VesicleTrafficEvidence (V : VesicleTrafficPackage) where
  vesicleFormationClosed : V.vesicleFormation
  cargoSortingClosed : V.cargoSorting
  vesicleMovementClosed : V.vesicleMovement
  membraneFusionClosed : V.membraneFusion
  membraneFissionClosed : V.membraneFission

theorem vesicle_traffic_closed_from_evidence (V : VesicleTrafficPackage) (E : VesicleTrafficEvidence V) : VesicleTrafficClosed V := by
  exact And.intro E.vesicleFormationClosed (And.intro E.cargoSortingClosed (And.intro E.vesicleMovementClosed (And.intro E.membraneFusionClosed E.membraneFissionClosed)))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse