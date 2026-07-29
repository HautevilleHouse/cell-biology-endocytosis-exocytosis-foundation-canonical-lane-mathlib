import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

open ClathrinMediatedEndocytosisPackage

structure ClathrinMediatedEndocytosisEvidence (C : ClathrinMediatedEndocytosisPackage) where
  clathrinCoatAssemblyClosed : C.clathrinCoatAssembly
  adaptorProteinRecruitmentClosed : C.adaptorProteinRecruitment
  cargoSelectionClosed : C.cargoSelection
  membraneInvaginationClosed : C.membraneInvagination
  dynaminScissionClosed : C.dynaminScission
  uncoatingClosed : C.uncoating

theorem clathrin_mediated_endocytosis_closed_from_evidence (C : ClathrinMediatedEndocytosisPackage) (E : ClathrinMediatedEndocytosisEvidence C) : ClathrinMediatedEndocytosisClosed C := by
  exact And.intro E.clathrinCoatAssemblyClosed (And.intro E.adaptorProteinRecruitmentClosed (And.intro E.cargoSelectionClosed (And.intro E.membraneInvaginationClosed (And.intro E.dynaminScissionClosed E.uncoatingClosed))))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse