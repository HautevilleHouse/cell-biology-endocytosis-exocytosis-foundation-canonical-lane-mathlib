import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure ExocytosisSNAREPackage where
  snareComplexAssembly : Prop
  vesicleDocking : Prop
  membranePriming : Prop
  calciumTriggeredFusion : Prop
  cargoRelease : Prop
  snareDisassembly : Prop

structure ExocytosisSNAREEvidence (E : ExocytosisSNAREPackage) where
  snareComplexAssemblyClosed : E.snareComplexAssembly
  vesicleDockingClosed : E.vesicleDocking
  membranePrimingClosed : E.membranePriming
  calciumTriggeredFusionClosed : E.calciumTriggeredFusion
  cargoReleaseClosed : E.cargoRelease
  snareDisassemblyClosed : E.snareDisassembly

def ExocytosisSNAREClosed (E : ExocytosisSNAREPackage) : Prop :=
  E.snareComplexAssembly ∧ E.vesicleDocking ∧ E.membranePriming ∧ E.calciumTriggeredFusion ∧ E.cargoRelease ∧ E.snareDisassembly

theorem exocytosis_snare_closed_from_evidence
    (E : ExocytosisSNAREPackage) (Ev : ExocytosisSNAREEvidence E) :
    ExocytosisSNAREClosed E := by
  exact And.intro Ev.snareComplexAssemblyClosed
    (And.intro Ev.vesicleDockingClosed
      (And.intro Ev.membranePrimingClosed
        (And.intro Ev.calciumTriggeredFusionClosed
          (And.intro Ev.cargoReleaseClosed Ev.snareDisassemblyClosed))))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse
