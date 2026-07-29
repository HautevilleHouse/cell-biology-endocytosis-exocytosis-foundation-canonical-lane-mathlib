import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure ClathrinCoatedVesicleFormation where
  membraneInvaginationRate : ℝ
  coatAssemblyRate : ℝ
  cargoCaptureEfficiency : ℝ
  fissionMechanismActive : Prop
  dynaminRecruitment : Prop
  dynaminRecruitmentTerm : dynaminRecruitment
  fissionMechanismActiveTerm : fissionMechanismActive

structure ClathrinCoatedVesicleFormationEvidence (C : ClathrinCoatedVesicleFormation) where
  dynaminRecruitmentClosed : C.dynaminRecruitment
  fissionMechanismActiveClosed : C.fissionMechanismActive

def ClathrinCoatedVesicleFormationClosed (C : ClathrinCoatedVesicleFormation) : Prop :=
  C.dynaminRecruitment ∧ C.fissionMechanismActive

theorem clathrin_coated_vesicle_formation_closed_from_evidence
    (C : ClathrinCoatedVesicleFormation) (E : ClathrinCoatedVesicleFormationEvidence C) :
    ClathrinCoatedVesicleFormationClosed C := by
  exact And.intro E.dynaminRecruitmentClosed E.fissionMechanismActiveClosed

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse