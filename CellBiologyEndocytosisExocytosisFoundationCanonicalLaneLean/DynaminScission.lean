import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundation

structure DynaminScissionPackage where
  dynaminRecruitment : Prop
  gtpHydrolysis : Prop
  membraneFission : Prop

structure DynaminScissionEvidence (D : DynaminScissionPackage) where
  dynaminRecruitmentClosed : D.dynaminRecruitment
  gtpHydrolysisClosed : D.gtpHydrolysis
  membraneFissionClosed : D.membraneFission

def DynaminScissionClosed (D : DynaminScissionPackage) : Prop :=
  D.dynaminRecruitment ∧ D.gtpHydrolysis ∧ D.membraneFission

theorem dynamin_scission_closed_from_evidence (D : DynaminScissionPackage) (E : DynaminScissionEvidence D) :
    DynaminScissionClosed D := by
  exact And.intro E.dynaminRecruitmentClosed
    (And.intro E.gtpHydrolysisClosed E.membraneFissionClosed)

end CellBiologyEndocytosisExocytosisFoundation
end HautevilleHouse