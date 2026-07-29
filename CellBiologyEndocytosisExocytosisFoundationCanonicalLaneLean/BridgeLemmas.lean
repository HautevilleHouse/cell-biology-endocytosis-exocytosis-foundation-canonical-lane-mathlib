import CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellBiologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse