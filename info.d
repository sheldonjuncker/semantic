module semantic.info;
import semantic.type;
import semantic.value;

/**
* Stores all of the semantic information for a node.
*/
class SemanticInfo
{
	///The data type of the node when evaluated
	SemanticType type;

	///The value of the node if known statically
	SemanticValue value;

	///The number of uses of the node
	///For variables and functions
	///Used by the optimizer to remove unnecessary nodes
	int uses;

	///The variable's index in the frame
	int varIndex;
}