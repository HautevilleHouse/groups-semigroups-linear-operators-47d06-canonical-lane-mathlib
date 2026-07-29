import GroupSemigroupsLinearOperators47d06CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.gateWitness

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
