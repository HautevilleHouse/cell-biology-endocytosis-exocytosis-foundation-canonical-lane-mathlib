import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure EndocytosisPathwayPackage where
  clathrinMediated : Prop
  caveolaeMediated : Prop
  macropinocytosis : Prop
  phagocytosis : Prop
  receptorMediated : Prop
  engulfmentComplete : Prop
  vesicleFormation : Prop
  cargoEncapsulation : Prop

def ClathrinMediatedClosed : Prop := True

structure EndocytosisEvidence (P : EndocytosisPathwayPackage) where
  clathrinMediatedClosed : P.clathrinMediated
  caveolaeMediatedClosed : P.caveolaeMediated
  macropinocytosisClosed : P.macropinocytosis
  phagocytosisClosed : P.phagocytosis
  receptorMediatedClosed : P.receptorMediated
  engulfmentCompleteClosed : P.engulfmentComplete
  vesicleFormationClosed : P.vesicleFormation
  cargoEncapsulationClosed : P.cargoEncapsulation

def EndocytosisClosed (P : EndocytosisPathwayPackage) : Prop :=
  P.clathrinMediated ∧ P.caveolaeMediated ∧ P.macropinocytosis ∧ P.phagocytosis ∧
  P.receptorMediated ∧ P.engulfmentComplete ∧ P.vesicleFormation ∧ P.cargoEncapsulation

theorem endocytosis_closed_from_evidence (P : EndocytosisPathwayPackage) (E : EndocytosisEvidence P) :
    EndocytosisClosed P := by
  exact And.intro E.clathrinMediatedClosed
    (And.intro E.caveolaeMediatedClosed
      (And.intro E.macropinocytosisClosed
        (And.intro E.phagocytosisClosed
          (And.intro E.receptorMediatedClosed
            (And.intro E.engulfmentCompleteClosed
              (And.intro E.vesicleFormationClosed E.cargoEncapsulationClosed))))))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse