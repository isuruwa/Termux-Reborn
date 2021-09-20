.class public interface abstract Lorg/commonmark/parser/delimiter/DelimiterProcessor;
.super Ljava/lang/Object;
.source "DelimiterProcessor.java"


# virtual methods
.method public abstract getClosingCharacter()C
.end method

.method public abstract getDelimiterUse(Lorg/commonmark/parser/delimiter/DelimiterRun;Lorg/commonmark/parser/delimiter/DelimiterRun;)I
.end method

.method public abstract getMinLength()I
.end method

.method public abstract getOpeningCharacter()C
.end method

.method public abstract process(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V
.end method
