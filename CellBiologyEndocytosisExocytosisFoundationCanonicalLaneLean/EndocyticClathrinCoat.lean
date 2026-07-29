import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundation

structure ClathrinCoatPackage where
  triskelionAssembly : Prop
  clathrinLatticeFormation : Prop
  membraneInvaginationInitiated : Prop

structure ClathrinCoatEvidence (C : ClathrinCoatPackage) where
  triskelionAssemblyClosed : C.triskelionAssembly
  clathrinLatticeFormationClosed : C.clathrinLatticeFormation
  membraneInvaginationInitiatedClosed : C.membraneInvaginationInitiated

def ClathrinCoatClosed (C : ClathrinCoatPackage) : Prop :=
  C.triskelionAssembly ∧ C.clathrinLatticeFormation ∧ C.membraneInvaginationInitiated

theorem clathrin_coat_closed_from_evidence (C : ClathrinCoatPackage) (E : ClathrinCoatEvidence C) :
    ClathrinCoatClosed C := by
  exact And.intro E.triskelionAssemblyClosed
    (And.intro E.clathrinLatticeFormationClosed E.membraneInvaginationInitiatedClosed)

end CellBiologyEndocytosisExocytosisFoundation
end HautevilleHouse