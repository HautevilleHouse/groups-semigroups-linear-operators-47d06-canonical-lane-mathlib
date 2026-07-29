import GroupSemigroupsLinearOperators47d06CanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse
