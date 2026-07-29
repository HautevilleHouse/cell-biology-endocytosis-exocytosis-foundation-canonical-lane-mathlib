import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure GolgiTrafficRegulation where
  copiCoatBudding : Prop
  copiiCoatBudding : Prop
  cargoSortingAtTGN : Prop
  vesicleTetheringAtTarget : Prop
  copiCoatBuddingTerm : copiCoatBudding
  copiiCoatBuddingTerm : copiiCoatBudding
  cargoSortingAtTGN_m : cargoSortingAtTGN
  vesicleTetheringAtTargetTerm : vesicleTetheringAtTarget

structure GolgiTrafficRegulationEvidence (G : GolgiTrafficRegulation) where
  copiCoatBuddingClosed : G.copiCoatBudding
  copiiCoatBuddingClosed : G.copiiCoatBudding
  cargoSortingAtTGNClosed : G.cargoSortingAtTGN
  vesicleTetheringAtTargetClosed : G.vesicleTetheringAtTarget

def GolgiTrafficRegulationClosed (G : GolgiTrafficRegulation) : Prop :=
  G.copiCoatBudding ∧ G.copiiCoatBudding ∧
  G.cargoSortingAtTGN ∧ G.vesicleTetheringAtTarget

theorem golgi_traffic_regulation_closed_from_evidence
    (G : GolgiTrafficRegulation) (E : GolgiTrafficRegulationEvidence G) :
    GolgiTrafficRegulationClosed G := by
  exact And.intro E.copiCoatBuddingClosed
    (And.intro E.copiiCoatBuddingClosed
      (And.intro E.cargoSortingAtTGNClosed E.vesicleTetheringAtTargetClosed))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse