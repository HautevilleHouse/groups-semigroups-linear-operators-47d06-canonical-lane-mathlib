import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsSemigroupsLinearOperators47d06CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GroupsSemigroupsLinearOperators47d06CanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  semigroupConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "GroupsSemigroupsLinearOperators47d06CanonicalLaneLean",
    theoremName := "Hille-Yosida Theorem",
    theoremObject := "Strongly continuous semigroups of bounded linear operators on Banach spaces",
    classicalBoundary := "Fully classical functional analysis statement, unrestricted",
    semigroupConstrainedStatement := "semigroup-constrained theorem certificate internalized through admissible class, bridge, and gate",
    certificateLane := "semigroup_constrained",
    carriedRemainder := "classical source boundary carried outside constrained closure"
  }

end GroupsSemigroupsLinearOperators47d06CanonicalLaneLean
end HautevilleHouse