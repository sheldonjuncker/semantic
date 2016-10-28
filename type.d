module semantic.type;

/**
* Low level type of an object.
*/
enum DataType
{
	Num,	//Numbers
	Void,	//Type for anything that doesn't return a value
	Error,	//Type for expressions resulting in an error
}

/**
* This class represents the type of an expression/variable.
*/
class SemanticType
{
	///Constant type
	bool constantType;

	///Immutable
	bool immutableType;

	///Low level data type
	DataType type;
}