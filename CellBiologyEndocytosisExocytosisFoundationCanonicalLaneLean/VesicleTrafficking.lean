import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean

structure VesicleTraffickingPackage where
  vesicleBuddingGolgi : Prop
  vesicleTransportCytoskeleton : Prop
  tetheringToTargetMembrane : Prop
  dockingFusion : Prop
  retrogradeTransport : Prop
  golgiReformation : Prop
  vesicleFormation : Prop
  vesicleFusion : Prop
  cargoSorting : Prop

def VesicleBuddingClosed : Prop := True

structure VesicleTraffickingEvidence (V : VesicleTraffickingPackage) where
  vesicleBuddingGolgiClosed : V.vesicleBuddingGolgi
  vesicleTransportCytoskeletonClosed : V.vesicleTransportCytoskeleton
  tetheringToTargetMembraneClosed : V.tetheringToTargetMembrane
  dockingFusionClosed : V.dockingFusion
  retrogradeTransportClosed : V.retrogradeTransport
  golgiReformationClosed : V.golgiReformation
  vesicleFormationClosed : V.vesicleFormation
  vesicleFusionClosed : V.vesicleFusion
  cargoSortingClosed : V.cargoSorting

def VesicleTraffickingClosed (V : VesicleTraffickingPackage) : Prop :=
  V.vesicleBuddingGolgi ∧ V.vesicleTransportCytoskeleton ∧
  V.tetheringToTargetMembrane ∧ V.dockingFusion ∧
  V.retrogradeTransport ∧ V.golgiReformation ∧
  V.vesicleFormation ∧ V.vesicleFusion ∧ V.cargoSorting

theorem vesicle_trafficking_closed_from_evidence (V : VesicleTraffickingPackage) (Ev : VesicleTraffickingEvidence V) :
    VesicleTraffickingClosed V := by
  exact And.intro Ev.vesicleBuddingGolgiClosed
    (And.intro Ev.vesicleTransportCytoskeletonClosed
      (And.intro Ev.tetheringToTargetMembraneClosed
        (And.intro Ev.dockingFusionClosed
          (And.intro Ev.retrogradeTransportClosed
            (And.intro Ev.golgiReformationClosed
              (And.intro Ev.vesicleFormationClosed
                (And.intro Ev.vesicleFusionClosed Ev.cargoSortingClosed)))))))

end CellBiologyEndocytosisExocytosisFoundationCanonicalLaneLean
end HautevilleHouse