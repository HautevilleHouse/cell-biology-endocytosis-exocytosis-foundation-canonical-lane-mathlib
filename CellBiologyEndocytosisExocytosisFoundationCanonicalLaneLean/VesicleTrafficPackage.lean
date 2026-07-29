import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure VesicleTrafficPackage where
  vesicleFormation : Prop
  cargoSorting : Prop
  vesicleMovement : Prop
  membraneFusion : Prop
  membraneFission : Prop

def VesicleTrafficClosed (V : VesicleTrafficPackage) : Prop :=
  V.vesicleFormation ∧ V.cargoSorting ∧ V.vesicleMovement ∧ V.membraneFusion ∧ V.membraneFission

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse