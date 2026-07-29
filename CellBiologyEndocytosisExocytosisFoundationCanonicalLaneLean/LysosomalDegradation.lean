import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure LysosomalDegradationPackage where
  lateEndosomeFormation : Prop
  lysosomeBiogenesis : Prop
  hydrolaseDelivery : Prop
  acidification : Prop
  cargoDegradation : Prop
  lysosomeReformation : Prop

structure LysosomalDegradationEvidence (L : LysosomalDegradationPackage) where
  lateEndosomeFormationClosed : L.lateEndosomeFormation
  lysosomeBiogenesisClosed : L.lysosomeBiogenesis
  hydrolaseDeliveryClosed : L.hydrolaseDelivery
  acidificationClosed : L.acidification
  cargoDegradationClosed : L.cargoDegradation
  lysosomeReformationClosed : L.lysosomeReformation

def LysosomalDegradationClosed (L : LysosomalDegradationPackage) : Prop :=
  L.lateEndosomeFormation ∧ L.lysosomeBiogenesis ∧ L.hydrolaseDelivery ∧ L.acidification ∧ L.cargoDegradation ∧ L.lysosomeReformation

theorem lysosomal_degradation_closed_from_evidence
    (L : LysosomalDegradationPackage) (E : LysosomalDegradationEvidence L) :
    LysosomalDegradationClosed L := by
  exact And.intro E.lateEndosomeFormationClosed
    (And.intro E.lysosomeBiogenesisClosed
      (And.intro E.hydrolaseDeliveryClosed
        (And.intro E.acidificationClosed
          (And.intro E.cargoDegradationClosed E.lysosomeReformationClosed))))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse
