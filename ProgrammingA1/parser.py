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
# Reads the next char from input and returns its class
# Calls getChar and getChar until it returns a non-blank
# Adds the next char from input to lexeme, advancing the input by one char
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

# Error Table
class Error(Enum):
    Source file missing
    Couldn’t open source file
    Lexical error
    Couldn’t open grammar file
    EOF expected
    Identifier expected
    Special word missing
    Symbol missing
    Data type expected
    Identifier or literal value expected
    Syntax error

# Lexeme to token conversion
# Returns the next (lexeme, token) pair or None if EOF is reached
# Main
