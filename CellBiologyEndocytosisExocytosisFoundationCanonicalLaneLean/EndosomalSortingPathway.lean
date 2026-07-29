import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure EarlyEndosomeMaturation where
  rab5ToRab7Conversion : Prop
  intraluminalVesicleFormation : Prop
  cargoSortingSignalRecognition : Prop
  retromerComplexRecruitment : Prop
  rab5ToRab7ConversionTerm : rab5ToRab7Conversion
  intraluminalVesicleFormationTerm : intraluminalVesicleFormation
  cargoSortingSignalRecognitionTerm : cargoSortingSignalRecognition
  retromerComplexRecruitmentTerm : retromerComplexRecruitment

structure EarlyEndosomeMaturationEvidence (E : EarlyEndosomeMaturation) where
  rab5ToRab7ConversionClosed : E.rab5ToRab7Conversion
  intraluminalVesicleFormationClosed : E.intraluminalVesicleFormation
  cargoSortingSignalRecognitionClosed : E.cargoSortingSignalRecognition
  retromerComplexRecruitmentClosed : E.retromerComplexRecruitment

def EarlyEndosomeMaturationClosed (E : EarlyEndosomeMaturation) : Prop :=
  E.rab5ToRab7Conversion ∧ E.intraluminalVesicleFormation ∧
  E.cargoSortingSignalRecognition ∧ E.retromerComplexRecruitment

theorem early_endosome_maturation_closed_from_evidence
    (E : EarlyEndosomeMaturation) (Ev : EarlyEndosomeMaturationEvidence E) :
    EarlyEndosomeMaturationClosed E := by
  exact And.intro Ev.rab5ToRab7ConversionClosed
    (And.intro Ev.intraluminalVesicleFormationClosed
      (And.intro Ev.cargoSortingSignalRecognitionClosed Ev.retromerComplexRecruitmentClosed))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse