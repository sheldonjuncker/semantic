module semantic.exception;
import std.exception;
import lexer.token;

/**
* Exception thrown when a variable is redeclared.
*/
class VarRedeclareException : Exception
{
	this(string name, TokenLocation location)
	{
		super("Cannot redeclare variable " ~ name ~ " at " ~ location.toString());
	}
}


/**
* Exception thrown when a variable is used but not declared.
*/
class VarUndeclaredException : Exception
{
	this(string name, TokenLocation location)
	{
		super("Cannot use undeclared " ~ name ~ " at " ~ location.toString());
	}
}


/**
* Exception thrown when a non-lvalue is used in assignment.
*/
class LvalueAssignmentException : Exception
{
	this(TokenLocation location)
	{
		super("Cannot assign to non-lvalue at " ~ location.toString());
	}
}


/**
* Exception thrown when a variable is used before assignment.
*/
class VarUninitException : Exception
{
	this(string name, TokenLocation location)
	{
		super("Use of uninitialized variable " ~ name ~ " at " ~ location.toString());
	}
}