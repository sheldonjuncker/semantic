module semantic.variable;
import parser.nodes.IdentNode;

/**
* This class represents a variable used in semantic analysis.
*/
class SemanticVar
{
	///Reference to a variable declaration node
	IdentNode *var;

	/**
	* Constructs a new semantic variable.
	*/
	this(IdentNode *var)
	{
		this.var = var;
	}
}