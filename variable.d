module semantic.variable;
import parser.nodes.VarDeclareNode;

/**
* This class represents a variable used in semantic analysis.
*/
class SemanticVar
{
	///Reference to a variable declaration node
	VarDeclareNode var;
	
	/**
	* Constructs a new semantic variable.
	*/
	this(VarDeclareNode var)
	{
		this.var = var;
	}
}