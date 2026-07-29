import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure ClathrinMediatedEndocytosisPackage where
  clathrinCoatedPitFormation : Prop
  adaptorProteinRecruitment : Prop
  dynaminScission : Prop
  uncoatingRegulation : Prop

structure ClathrinMediatedEndocytosisEvidence (C : ClathrinMediatedEndocytosisPackage) where
  clathrinCoatedPitFormationClosed : C.clathrinCoatedPitFormation
  adaptorProteinRecruitmentClosed : C.adaptorProteinRecruitment
  dynaminScissionClosed : C.dynaminScission
  uncoatingRegulationClosed : C.uncoatingRegulation

def ClathrinMediatedEndocytosisClosed (C : ClathrinMediatedEndocytosisPackage) : Prop :=
  C.clathrinCoatedPitFormation ∧ C.adaptorProteinRecruitment ∧
  C.dynaminScission ∧ C.uncoatingRegulation

theorem clathrin_mediated_endocytosis_closed_from_evidence
    (C : ClathrinMediatedEndocytosisPackage)
    (E : ClathrinMediatedEndocytosisEvidence C) : ClathrinMediatedEndocytosisClosed C := by
  exact And.intro E.clathrinCoatedPitFormationClosed
    (And.intro E.adaptorProteinRecruitmentClosed
      (And.intro E.dynaminScissionClosed E.uncoatingRegulationClosed))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse