'''
CS 3210 - Principles of Programming Languages (Fall 2019)
Programming Assignment 01
September 29th, 2019
Team:    Abinet Kenore
         Rohit Shrestha

'''
from enum import Enum
import sys

# All char classes
class CharClass(Enum): # Ask what needs to be added
    EOF        = 1
    LETTER     = 2
    DIGIT      = 3
    OPERATOR   = 4
    PUNCTUATOR = 5
    QUOTE      = 6
    #BUILTIN    = 7
    BLANK      = 7
    OTHER      = 8

# Reads the next char from input and returns its class
def getChar(input):
    if len(input) == 0:
        return (None, CharClass.EOF)
    c = input[0].lower()
    if c.isalpha():
        return (c, CharClass.LETTER)
    if c.isdigit():
        return (c, CharClass.DIGIT)
    if c == '"':
        return (c, CharClass.QUOTE) #Added <>=
    if c in ['+', '-', '*','>', '=', '>','>=', '<', '<=' ]:
        return (c, CharClass.OPERATOR)
    if c in ['.', ':', ',', ';']:
        return (c, CharClass.PUNCTUATOR)

    # if c in ['do', 'if', 'else', 'begin', 'end','while', 'read', 'write','then','var',]:
    #     return (c, CharClass.BUILTIN)

    if c in [' ', '\n', '\t']:
        return (c, CharClass.BLANK)
    return (c, CharClass.OTHER)

# Calls getChar and getChar until it returns a non-blank
def getNonBlank(input):
    ignore = ""
    while True:
        c, charClass = getChar(input)
        if charClass == CharClass.BLANK:
            input, ignore = addChar(input, ignore)
        else:
            return input

# Adds the next char from input to lexeme, advancing the input by one char
def addChar(input, lexeme):
    if len(input) > 0:
        lexeme += input[0]
        input = input[1:]
    return (input, lexeme)

# All tokens
class Token(Enum):
    ADDITION     = 1
    ASSIGNMENT   = 2
    BEGIN        = 3
    BOOLEAN_TYPE = 4
    COLON        = 5
    DO           = 6
    ELSE         = 7
    END          = 8
    EQUAL        = 9
    FALSE        = 10
    GREATER      = 11
    GREATER_EQUAL = 12
    IDENTIFIER    = 13
    IF            = 14
    INTEGER_LITERAL = 15
    INTEGER_TYPE   = 16
    LESS           = 17
    LESS_EQUAL     = 18
    MULTIPLICATION = 19
    PERIOD         = 20
    PROGRAM        = 21
    READ           = 22
    SEMICOLON      = 23
    SUBTRACTION    = 24
    THEN           = 25
    TRUE           = 26
    VAR            = 27
    WHILE          = 28
    WRITE          = 29
    COMMA          =  30

    # lexeme to token conversion
lookup = {
        "+"      : Token.ADDITION,
        "-"      : Token.SUBTRACTION,
        "*"      : Token.MULTIPLICATION,
        "."      : Token.PERIOD,
        ":"      : Token.COLON,
        ""      : Token.COMMA,
        ";"      : Token.SEMICOLON,
        ">"      : Token.GREATER,
        ">="     : Token.GREATER_EQUAL,
        "="      : Token.EQUAL,
        "<="     : Token.LESS_EQUAL,
        "<"      : Token.LESS,
        "if"     : Token.IF,
        "else"  : Token.ELSE,
        "true"   : Token.TRUE,
        "false"  : Token.FALSE,
        "begin"  : Token.BEGIN,
        "end"    : Token.END,
        "do"     : Token.DO,
        "while"  : Token.WHILE,
        "write"  : Token.WRITE,
        "program" : Token.PROGRAM,
        "read"   : Token.READ,
        "var"    : Token.VAR,
        "then"   : Token.THEN
      # TODO  ASSIGNMENT,BOOLEAN_TYPE,IDENTIFIER,
      #INTEGER_LITERAL,INTEGER_TYPE
    }

# Error Table
class Error(Enum):
    '''Source file missing
    Couldn’t open source file
    Lexical error
    Couldn’t open grammar file
    EOF expected
    Identifier expected
    Special word missing
    Symbol missing
    Data type expected
    Identifier or literal value expected
    Syntax error'''

# Returns the next (lexeme, token) pair or None if EOF is reached
def lex(input):
    input = getNonBlank(input)
    c, charClass = getChar(input)
    # print(c, end = " ")
    # print(charClass)
    lexeme = ""

    # check EOF first
    if charClass == CharClass.EOF:
        return (input, None, None)

    # TODO: reading letters
    if charClass == charClass.LETTER: # Modified
        while True:
             input,lexeme = addChar(input, lexeme)
             c, charClass = getChar(input)
             if charClass != charClass.DIGIT  and charClass != charClass.LETTER:
                 break
        if lexeme in lookup:
            return(input, lexeme, lookup[lexeme])
        return(input, lexeme, Token.IDENTIFIER)

    # TODO: reading digits
    if charClass == charClass.DIGIT:
        while True:
            input,lexeme = addChar(input, lexeme)
            c, charClass = getChar(input)
            if charClass != charClass.DIGIT:
                break
        return (input, lexeme, Token.INTEGER_LITERAL)

    # TODO: reading an operator
    if charClass == charClass.OPERATOR or charClass == charClass.PUNCTUATOR:
        input, lexeme = addChar(input, lexeme)
        if lexeme in lookup:
            return (input,lexeme,lookup[lexeme])

    # TODO: anything else, raise an exception
    raise Exception("LA Not Found")
# Main
if __name__ == "__main__":

    # checks if source file was passed and if it exists
    if len(sys.argv) != 2:
        raise ValueError("Missing source file")
    source = open(sys.argv[1], "rt")
    if not source:
        raise IOError("Couldn't open source file")
    input = source.read()
    source.close()
    output = []

    # main loop
    while True:
        input, lexeme, token = lex(input)
        if lexeme == None:
            break
        output.append((lexeme, token))

    # prints the output
    for (lexeme, token) in output:
        print(lexeme, token)
