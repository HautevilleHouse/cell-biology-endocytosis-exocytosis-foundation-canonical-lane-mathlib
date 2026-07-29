import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure MembraneTraffickingPackage where
  lipidBilayerStructure : Prop
  membraneProteinMachinery : Prop
  vesicleFormationMechanism : Prop
  cargoLoadingSignal : Prop

structure MembraneTraffickingEvidence (M : MembraneTraffickingPackage) where
  lipidBilayerStructureClosed : M.lipidBilayerStructure
  membraneProteinMachineryClosed : M.membraneProteinMachinery
  vesicleFormationMechanismClosed : M.vesicleFormationMechanism
  cargoLoadingSignalClosed : M.cargoLoadingSignal

def MembraneTraffickingClosed (M : MembraneTraffickingPackage) : Prop :=
  M.lipidBilayerStructure ∧ M.membraneProteinMachinery ∧
  M.vesicleFormationMechanism ∧ M.cargoLoadingSignal

theorem membrane_trafficking_closed_from_evidence (M : MembraneTraffickingPackage)
    (E : MembraneTraffickingEvidence M) : MembraneTraffickingClosed M := by
  exact And.intro E.lipidBilayerStructureClosed
    (And.intro E.membraneProteinMachineryClosed
      (And.intro E.vesicleFormationMechanismClosed E.cargoLoadingSignalClosed))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse