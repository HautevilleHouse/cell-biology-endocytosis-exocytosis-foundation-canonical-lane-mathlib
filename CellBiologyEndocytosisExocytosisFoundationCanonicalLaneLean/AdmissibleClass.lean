import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure CellBiologyAdmittedObject where
  vesicleMembraneSystem : Prop
  traffickingPathway : Prop
  molecularMachineryPresent : Prop
  regulatorySignalsIdentified : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : CellBiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellBiologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CellBiologyWitnessClosed (O : CellBiologyAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse