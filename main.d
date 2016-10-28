import std.stdio;
import semantic.analyzer;
import parser.j_parser;
import parser.all_nodes;

int main()
{
	//Create parser and generate AST
	Parser p = new Parser("code.txt");
	p.lex();
	p.parse();

	//Get AST
	Node ast = p.ast;

	//Print AST
	ast.print();

	//Initialize semantic analyzer with AST
	SemanticAnalyzer s = new SemanticAnalyzer(ast);

	return 0;
}