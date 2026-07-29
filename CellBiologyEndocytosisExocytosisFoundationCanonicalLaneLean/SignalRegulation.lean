import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure SignalRegulationPackage where
  receptorInternalization : Prop
  signalAttenuation : Prop
  growthFactorModulation : Prop
  synapticTransmissionControl : Prop

structure SignalRegulationEvidence (S : SignalRegulationPackage) where
  receptorInternalizationClosed : S.receptorInternalization
  signalAttenuationClosed : S.signalAttenuation
  growthFactorModulationClosed : S.growthFactorModulation
  synapticTransmissionControlClosed : S.synapticTransmissionControl

def SignalRegulationClosed (S : SignalRegulationPackage) : Prop :=
  S.receptorInternalization ∧ S.signalAttenuation ∧
  S.growthFactorModulation ∧ S.synapticTransmissionControl

theorem signal_regulation_closed_from_evidence (S : SignalRegulationPackage)
    (Ev : SignalRegulationEvidence S) : SignalRegulationClosed S := by
  exact And.intro Ev.receptorInternalizationClosed
    (And.intro Ev.signalAttenuationClosed
      (And.intro Ev.growthFactorModulationClosed Ev.synapticTransmissionControlClosed))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse