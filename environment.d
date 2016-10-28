module semantic.environment;
import semantic.variable;
import std.exception;

/**
* The environment in which semantic analysis
* is performed on the AST
*/
class Environment
{
	///Storage for variables
	SemanticVar[string][] varScopes;

	/**
	* Determines if a variable exists.
	* @param currentScope Specifies whether or not to look in
	* only the current scope. Default = false
	*/
	bool varInScope(string name, bool currentScope = false)
	{
		foreach(SemanticVar[string] varScope; varScopes)
		{
			//Get semantic variable
			SemanticVar *var = (name in varScope);
			if(var !is null)
				return true;

			if(currentScope)
				break;
		}

		//Not found
		return false;
	}

	/**
	* Gets a variable that is known to exist.
	* @paran name The name of the variable.
	* @param currentScope Specifies whether or not to look in
	* only the current scope. Default = false
	*/
	SemanticVar getVar(string name, bool currentScope = false)
	{
		foreach(SemanticVar[string] varScope; varScopes)
		{
			//Get semantic variable
			if((name in varScope) !is null)
				return varScope[name];
			
			//Don't look at other scopes
			if(currentScope)
				break;
		}

		//Not found
		return null;
	}

	/**
	* Adds a variable to the current scope.
	* Throws an exception if the variable already exists.
	*/
	void addVar(string name, SemanticVar var)
	{
		//Get the current scope
		SemanticVar[string] current = varScopes[0];

		//Make sure it doesn't already exist
		if((name in current) !is null)
		{
			throw new Exception("Tried to add a variable that already existed.");
		}

		else
		{
			//Add the variable
			current[name] = var;
		}
	}

	/**
	* Adds a new level of variable scope.
	*/
	void addScope()
	{
		SemanticVar[string] newScope;

		varScopes = newScope ~ varScopes;
	}

	/**
	* Removes the current scope.
	*/
	void removeScope()
	{
		varScopes = varScopes[1..$];
	}
}