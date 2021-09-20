.class public interface abstract Lorg/commonmark/parser/block/BlockParser;
.super Ljava/lang/Object;
.source "BlockParser.java"


# virtual methods
.method public abstract addLine(Ljava/lang/CharSequence;)V
.end method

.method public abstract canContain(Lorg/commonmark/node/Block;)Z
.end method

.method public abstract canHaveLazyContinuationLines()Z
.end method

.method public abstract closeBlock()V
.end method

.method public abstract getBlock()Lorg/commonmark/node/Block;
.end method

.method public abstract isContainer()Z
.end method

.method public abstract parseInlines(Lorg/commonmark/parser/InlineParser;)V
.end method

.method public abstract tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
.end method
