import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure RegulatedSecretionPackage where
  secretoryVesicleFormation : Prop
  granuleMaturation : Prop
  fusionCompetenceAcquisition : Prop
  calciumTriggeredMembraneFusion : Prop
  kissAndRunFusion : Prop
  fullCollapseFusion : Prop

def RegulatedSecretionClosed (R : RegulatedSecretionPackage) : Prop :=
  R.secretoryVesicleFormation ∧ R.granuleMaturation ∧ R.fusionCompetenceAcquisition ∧ R.calciumTriggeredMembraneFusion ∧ R.kissAndRunFusion ∧ R.fullCollapseFusion

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse