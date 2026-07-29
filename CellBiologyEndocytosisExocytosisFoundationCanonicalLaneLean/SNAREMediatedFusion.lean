import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundation

structure SNAREAssemblyPackage where
  vSNAREonVesicle : Prop
  tSNAREonTarget : Prop
  SNAREComplexFormation : Prop
  membraneFusion : Prop

structure SNAREAssemblyEvidence (S : SNAREAssemblyPackage) where
  vSNAREonVesicleClosed : S.vSNAREonVesicle
  tSNAREonTargetClosed : S.tSNAREonTarget
  SNAREComplexFormationClosed : S.SNAREComplexFormation
  membraneFusionClosed : S.membraneFusion

def SNAREAssemblyClosed (S : SNAREAssemblyPackage) : Prop :=
  S.vSNAREonVesicle ∧ S.tSNAREonTarget ∧ S.SNAREComplexFormation ∧ S.membraneFusion

theorem snare_assembly_closed_from_evidence (S : SNAREAssemblyPackage) (E : SNAREAssemblyEvidence S) :
    SNAREAssemblyClosed S := by
  exact And.intro E.vSNAREonVesicleClosed
    (And.intro E.tSNAREonTargetClosed
      (And.intro E.SNAREComplexFormationClosed E.membraneFusionClosed))

end CellBiologyEndocytosisExocytosisFoundation
end HautevilleHouse