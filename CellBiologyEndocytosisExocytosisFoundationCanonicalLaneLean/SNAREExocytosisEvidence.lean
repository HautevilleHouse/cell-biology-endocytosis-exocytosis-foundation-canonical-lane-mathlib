import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

open SNAREExocytosisPackage

structure SNAREExocytosisEvidence (S : SNAREExocytosisPackage) where
  vesicleTetheringClosed : S.vesicleTethering
  SNAREComplexFormationClosed : S.SNAREComplexFormation
  membraneFusionCoreClosed : S.membraneFusionCore
  fusionPoreOpeningClosed : S.fusionPoreOpening
  cargoReleaseClosed : S.cargoRelease

theorem snare_exocytosis_closed_from_evidence (S : SNAREExocytosisPackage) (E : SNAREExocytosisEvidence S) : SNAREExocytosisClosed S := by
  exact And.intro E.vesicleTetheringClosed (And.intro E.SNAREComplexFormationClosed (And.intro E.membraneFusionCoreClosed (And.intro E.fusionPoreOpeningClosed E.cargoReleaseClosed)))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse