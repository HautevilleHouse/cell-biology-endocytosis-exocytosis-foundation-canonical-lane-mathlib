import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure SNAREComplexAssembly where
  vSNARELocalization : Prop
  tSNAREClusterFormation : Prop
  zipperingHelicalBundles : Prop
  calciumTriggeredFusion : Prop
  vSNARELocalizationTerm : vSNARELocalization
  tSNAREClusterFormationTerm : tSNAREClusterFormation
  zipperingHelicalBundlesTerm : zipperingHelicalBundles
  calciumTriggeredFusionTerm : calciumTriggeredFusion

structure SNAREComplexAssemblyEvidence (S : SNAREComplexAssembly) where
  vSNARELocalizationClosed : S.vSNARELocalization
  tSNAREClusterFormationClosed : S.tSNAREClusterFormation
  zipperingHelicalBundlesClosed : S.zipperingHelicalBundles
  calciumTriggeredFusionClosed : S.calciumTriggeredFusion

def SNAREComplexAssemblyClosed (S : SNAREComplexAssembly) : Prop :=
  S.vSNARELocalization ∧ S.tSNAREClusterFormation ∧
  S.zipperingHelicalBundles ∧ S.calciumTriggeredFusion

theorem snare_complex_assembly_closed_from_evidence
    (S : SNAREComplexAssembly) (E : SNAREComplexAssemblyEvidence S) :
    SNAREComplexAssemblyClosed S := by
  exact And.intro E.vSNARELocalizationClosed
    (And.intro E.tSNAREClusterFormationClosed
      (And.intro E.zipperingHelicalBundlesClosed E.calciumTriggeredFusionClosed))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse