import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure ReceptorInternalizationSignaling where
  ligandBindingAffinity : ℝ
  receptorPhosphorylation : Prop
  adaptorProteinRecruitment : Prop
  ubiquitinationSignal : Prop
  receptorPhosphorylationTerm : receptorPhosphorylation
  adaptorProteinRecruitmentTerm : adaptorProteinRecruitment
  ubiquitinationSignalTerm : ubiquitinationSignal

structure ReceptorInternalizationSignalingEvidence (R : ReceptorInternalizationSignaling) where
  receptorPhosphorylationClosed : R.receptorPhosphorylation
  adaptorProteinRecruitmentClosed : R.adaptorProteinRecruitment
  ubiquitinationSignalClosed : R.ubiquitinationSignal

def ReceptorInternalizationSignalingClosed (R : ReceptorInternalizationSignaling) : Prop :=
  R.receptorPhosphorylation ∧ R.adaptorProteinRecruitment ∧ R.ubiquitinationSignal

theorem receptor_internalization_signaling_closed_from_evidence
    (R : ReceptorInternalizationSignaling) (E : ReceptorInternalizationSignalingEvidence R) :
    ReceptorInternalizationSignalingClosed R := by
  exact And.intro E.receptorPhosphorylationClosed
    (And.intro E.adaptorProteinRecruitmentClosed E.ubiquitinationSignalClosed)

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse