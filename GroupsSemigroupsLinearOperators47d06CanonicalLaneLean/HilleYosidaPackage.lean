import GroupSemigroupsLinearOperators47d06CanonicalLaneLean.C0SemigroupPackage

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure HilleYosidaPackage {P : C0SemigroupPackage} where
  generator : P.space → P.space
  resolvent_set : ℂ → Prop
  resolvent_bounds : Prop
  domain_density : Prop

structure HilleYosidaEvidence {P : C0SemigroupPackage} (H : HilleYosidaPackage P) where
  resolvent_set_closed : H.resolvent_set
  resolvent_bounds_closed : H.resolvent_bounds
  domain_density_closed : H.domain_density

def HilleYosidaClosed {P : C0SemigroupPackage} (H : HilleYosidaPackage P) : Prop :=
  H.resolvent_set ∧ H.resolvent_bounds ∧ H.domain_density

theorem hille_yosida_closed_from_evidence {P : C0SemigroupPackage}
    (H : HilleYosidaPackage P) (E : HilleYosidaEvidence H) :
    HilleYosidaClosed H := by
  exact And.intro E.resolvent_set_closed (And.intro E.resolvent_bounds_closed E.domain_density_closed)

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
