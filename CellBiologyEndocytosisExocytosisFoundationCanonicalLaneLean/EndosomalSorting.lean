import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure EndosomalSortingPackage where
  earlyEndosomeFormation : Prop
  recyclingEndosomePathway : Prop
  multivesicularBodyFormation : Prop
  lysosomalDegradation : Prop

structure EndosomalSortingEvidence (E : EndosomalSortingPackage) where
  earlyEndosomeFormationClosed : E.earlyEndosomeFormation
  recyclingEndosomePathwayClosed : E.recyclingEndosomePathway
  multivesicularBodyFormationClosed : E.multivesicularBodyFormation
  lysosomalDegradationClosed : E.lysosomalDegradation

def EndosomalSortingClosed (E : EndosomalSortingPackage) : Prop :=
  E.earlyEndosomeFormation ∧ E.recyclingEndosomePathway ∧
  E.multivesicularBodyFormation ∧ E.lysosomalDegradation

theorem endosomal_sorting_closed_from_evidence (E : EndosomalSortingPackage)
    (Ev : EndosomalSortingEvidence E) : EndosomalSortingClosed E := by
  exact And.intro Ev.earlyEndosomeFormationClosed
    (And.intro Ev.recyclingEndosomePathwayClosed
      (And.intro Ev.multivesicularBodyFormationClosed Ev.lysosomalDegradationClosed))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse