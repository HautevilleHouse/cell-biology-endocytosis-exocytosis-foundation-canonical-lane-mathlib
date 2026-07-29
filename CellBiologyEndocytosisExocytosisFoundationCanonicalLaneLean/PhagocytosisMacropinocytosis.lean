import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure PhagocytosisMacropinocytosisPackage where
  receptorMediatedPhagocytosis : Prop
  macropinosomeFormation : Prop
  actinDynamics : Prop
  pathogenUptake : Prop
  nutrientUptake : Prop
  immuneSurveillance : Prop

structure PhagocytosisMacropinocytosisEvidence (P : PhagocytosisMacropinocytosisPackage) where
  receptorMediatedPhagocytosisClosed : P.receptorMediatedPhagocytosis
  macropinosomeFormationClosed : P.macropinosomeFormation
  actinDynamicsClosed : P.actinDynamics
  pathogenUptakeClosed : P.pathogenUptake
  nutrientUptakeClosed : P.nutrientUptake
  immuneSurveillanceClosed : P.immuneSurveillance

def PhagocytosisMacropinocytosisClosed (P : PhagocytosisMacropinocytosisPackage) : Prop :=
  P.receptorMediatedPhagocytosis ∧ P.macropinosomeFormation ∧ P.actinDynamics ∧ P.pathogenUptake ∧ P.nutrientUptake ∧ P.immuneSurveillance

theorem phagocytosis_macropinocytosis_closed_from_evidence
    (P : PhagocytosisMacropinocytosisPackage)
    (E : PhagocytosisMacropinocytosisEvidence P) :
    PhagocytosisMacropinocytosisClosed P := by
  exact And.intro E.receptorMediatedPhagocytosisClosed
    (And.intro E.macropinosomeFormationClosed
      (And.intro E.actinDynamicsClosed
        (And.intro E.pathogenUptakeClosed
          (And.intro E.nutrientUptakeClosed E.immuneSurveillanceClosed))))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse
