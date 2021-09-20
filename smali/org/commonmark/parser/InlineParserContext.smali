.class public interface abstract Lorg/commonmark/parser/InlineParserContext;
.super Ljava/lang/Object;
.source "InlineParserContext.java"


# virtual methods
.method public abstract getCustomDelimiterProcessors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLinkReferenceDefinition(Ljava/lang/String;)Lorg/commonmark/node/LinkReferenceDefinition;
.end method
