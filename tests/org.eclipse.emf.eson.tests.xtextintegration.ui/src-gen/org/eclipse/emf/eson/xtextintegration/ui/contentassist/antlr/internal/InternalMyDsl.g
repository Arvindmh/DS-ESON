/*
* generated by Xtext
*/
grammar InternalMyDsl;

options {
	superClass=AbstractInternalContentAssistParser;
	
}

@lexer::header {
package org.eclipse.emf.eson.xtextintegration.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.emf.eson.xtextintegration.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import org.eclipse.emf.eson.xtextintegration.services.MyDslGrammarAccess;

}

@parser::members {
 
 	private MyDslGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(MyDslGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleModel
entryRuleModel 
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getModelAccess().getGroup()); }
(rule__Model__Group__0)
{ after(grammarAccess.getModelAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleGreeting
entryRuleGreeting 
:
{ before(grammarAccess.getGreetingRule()); }
	 ruleGreeting
{ after(grammarAccess.getGreetingRule()); } 
	 EOF 
;

// Rule Greeting
ruleGreeting
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getGreetingAccess().getGroup()); }
(rule__Greeting__Group__0)
{ after(grammarAccess.getGreetingAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Model__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__0__Impl
	rule__Model__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getGreetingsKeyword_0()); }

	'Greetings' 

{ after(grammarAccess.getModelAccess().getGreetingsKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__1__Impl
	rule__Model__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getNameAssignment_1()); }
(rule__Model__NameAssignment_1)
{ after(grammarAccess.getModelAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__2__Impl
	rule__Model__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getGroup_2()); }
(rule__Model__Group_2__0)?
{ after(grammarAccess.getModelAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__3__Impl
	rule__Model__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getGroup_3()); }
(rule__Model__Group_3__0)?
{ after(grammarAccess.getModelAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getGreetingsAssignment_4()); }
(rule__Model__GreetingsAssignment_4)*
{ after(grammarAccess.getModelAccess().getGreetingsAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__Model__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group_2__0__Impl
	rule__Model__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getREFKeyword_2_0()); }

	'REF' 

{ after(grammarAccess.getModelAccess().getREFKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getRefModelAssignment_2_1()); }
(rule__Model__RefModelAssignment_2_1)
{ after(grammarAccess.getModelAccess().getRefModelAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Model__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group_3__0__Impl
	rule__Model__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getREFsKeyword_3_0()); }

	'REFs' 

{ after(grammarAccess.getModelAccess().getREFsKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Model__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
(
{ before(grammarAccess.getModelAccess().getRefModelsAssignment_3_1()); }
(rule__Model__RefModelsAssignment_3_1)
{ after(grammarAccess.getModelAccess().getRefModelsAssignment_3_1()); }
)
(
{ before(grammarAccess.getModelAccess().getRefModelsAssignment_3_1()); }
(rule__Model__RefModelsAssignment_3_1)*
{ after(grammarAccess.getModelAccess().getRefModelsAssignment_3_1()); }
)
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Greeting__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Greeting__Group__0__Impl
	rule__Greeting__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Greeting__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGreetingAccess().getHelloKeyword_0()); }

	'Hello' 

{ after(grammarAccess.getGreetingAccess().getHelloKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Greeting__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Greeting__Group__1__Impl
	rule__Greeting__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Greeting__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGreetingAccess().getNameAssignment_1()); }
(rule__Greeting__NameAssignment_1)
{ after(grammarAccess.getGreetingAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Greeting__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Greeting__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Greeting__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGreetingAccess().getExclamationMarkKeyword_2()); }

	'!' 

{ after(grammarAccess.getGreetingAccess().getExclamationMarkKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}









rule__Model__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getModelAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Model__RefModelAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getRefModelModelCrossReference_2_1_0()); }
(
{ before(grammarAccess.getModelAccess().getRefModelModelIDTerminalRuleCall_2_1_0_1()); }
	RULE_ID{ after(grammarAccess.getModelAccess().getRefModelModelIDTerminalRuleCall_2_1_0_1()); }
)
{ after(grammarAccess.getModelAccess().getRefModelModelCrossReference_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Model__RefModelsAssignment_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getRefModelsModelCrossReference_3_1_0()); }
(
{ before(grammarAccess.getModelAccess().getRefModelsModelIDTerminalRuleCall_3_1_0_1()); }
	RULE_ID{ after(grammarAccess.getModelAccess().getRefModelsModelIDTerminalRuleCall_3_1_0_1()); }
)
{ after(grammarAccess.getModelAccess().getRefModelsModelCrossReference_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Model__GreetingsAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getGreetingsGreetingParserRuleCall_4_0()); }
	ruleGreeting{ after(grammarAccess.getModelAccess().getGreetingsGreetingParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Greeting__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getGreetingAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getGreetingAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


