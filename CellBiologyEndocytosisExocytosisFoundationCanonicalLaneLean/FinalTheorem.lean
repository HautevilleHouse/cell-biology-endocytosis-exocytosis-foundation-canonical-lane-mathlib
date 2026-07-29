import canonicalLaneMathlib.AdmissibleClass
import CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean.EndocytosisPathway
import CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean.ExocytosisMachinery
import CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean.VesicleTrafficking

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

-- Domain-specific admissible object
structure AdmittedCellBiologyObject where
  endocytosisPathway : EndocytosisPathwayPackage
  endocytosisEvidence : EndocytosisEvidence endocytosisPathway
  exocytosisMachinery : ExocytosisMachineryPackage
  exocytosisEvidence : ExocytosisEvidence exocytosisMachinery
  vesicleTrafficking : VesicleTraffickingPackage
  vesicleTraffickingEvidence : VesicleTraffickingEvidence vesicleTrafficking
  conclusion : EndocytosisClosed endocytosisPathway ∧
               ExocytosisClosed exocytosisMachinery ∧
               VesicleTraffickingClosed vesicleTrafficking

structure AdmissibleClass where
  object : AdmittedCellBiologyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let o := A.object
  o.endocytosisEvidence.engulfmentCompleteClosed ∧
  o.exocytosisEvidence.membraneMergedClosed ∧
  o.vesicleTraffickingEvidence.vesicleFusionClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let o := A.object
  exact And.intro o.endocytosisEvidence.engulfmentCompleteClosed
    (And.intro o.exocytosisEvidence.membraneMergedClosed
      o.vesicleTraffickingEvidence.vesicleFusionClosed)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCellBiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem cell_biology_endgame (A : AdmissibleClass) : ConstrainedCellBiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse