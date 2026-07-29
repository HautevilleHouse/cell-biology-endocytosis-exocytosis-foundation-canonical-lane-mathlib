import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure SNAREExocytosisPackage where
  vesicleTethering : Prop
  SNAREComplexFormation : Prop
  membraneFusionCore : Prop
  fusionPoreOpening : Prop
  cargoRelease : Prop

def SNAREExocytosisClosed (S : SNAREExocytosisPackage) : Prop :=
  S.vesicleTethering ∧ S.SNAREComplexFormation ∧ S.membraneFusionCore ∧ S.fusionPoreOpening ∧ S.cargoRelease

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse