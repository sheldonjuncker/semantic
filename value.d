module semantic.value;
import semantic.type;

/**
* This union holds the possible values for an expression.
*/
union DataValue
{
	double num;
}

/**
* This class represents the value of a node.
* Only for nodes whose value can be computed statically.
* Used by optimization stage.
*/
class SemanticValue
{
	///The type of the value
	SemanticType type;

	///The low level value
	DataValue value;
}