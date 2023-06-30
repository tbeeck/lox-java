package me.timbeck.lox;

import me.timbeck.*;

public abstract class Expr {
    static class Literal extends Expr {
        final Token val;
        Literal(Token val) {
            this.val = val;
        }
    }

    static class Unary extends Expr {
        final Token operator;
        final Expr expression;
        Unary(Token op, Expr expression) {
            this.operator = op;
            this.expression = expression;
        }
    }

    static class Binary extends Expr {
        final Expr left;
        final Token operator;
        final Expr right;
        Binary(Expr left, Token op, Expr right) {
            this.left = left;
            this.operator = op;
            this.right = right;
        }
    }
}