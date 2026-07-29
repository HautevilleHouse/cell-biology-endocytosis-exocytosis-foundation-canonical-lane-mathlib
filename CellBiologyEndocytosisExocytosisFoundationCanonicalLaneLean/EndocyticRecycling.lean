import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure EndocyticRecyclingPackage where
  earlyEndosomeFormation : Prop
  sortingEndosome : Prop
  recyclingEndosome : Prop
  retromerComplex : Prop
  cargoRecycling : Prop
  degradationPathway : Prop

structure EndocyticRecyclingEvidence (E : EndocyticRecyclingPackage) where
  earlyEndosomeFormationClosed : E.earlyEndosomeFormation
  sortingEndosomeClosed : E.sortingEndosome
  recyclingEndosomeClosed : E.recyclingEndosome
  retromerComplexClosed : E.retromerComplex
  cargoRecyclingClosed : E.cargoRecycling
  degradationPathwayClosed : E.degradationPathway

def EndocyticRecyclingClosed (E : EndocyticRecyclingPackage) : Prop :=
  E.earlyEndosomeFormation ∧ E.sortingEndosome ∧ E.recyclingEndosome ∧ E.retromerComplex ∧ E.cargoRecycling ∧ E.degradationPathway

theorem endocytic_recycling_closed_from_evidence
    (E : EndocyticRecyclingPackage) (Ev : EndocyticRecyclingEvidence E) :
    EndocyticRecyclingClosed E := by
  exact And.intro Ev.earlyEndosomeFormationClosed
    (And.intro Ev.sortingEndosomeClosed
      (And.intro Ev.recyclingEndosomeClosed
        (And.intro Ev.retromerComplexClosed
          (And.intro Ev.cargoRecyclingClosed Ev.degradationPathwayClosed))))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse
