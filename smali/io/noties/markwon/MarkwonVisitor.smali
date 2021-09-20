.class public interface abstract Lio/noties/markwon/MarkwonVisitor;
.super Ljava/lang/Object;
.source "MarkwonVisitor.java"

# interfaces
.implements Lorg/commonmark/node/Visitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/MarkwonVisitor$Builder;,
        Lio/noties/markwon/MarkwonVisitor$BlockHandler;,
        Lio/noties/markwon/MarkwonVisitor$NodeVisitor;
    }
.end annotation


# virtual methods
.method public abstract blockEnd(Lorg/commonmark/node/Node;)V
.end method

.method public abstract blockStart(Lorg/commonmark/node/Node;)V
.end method

.method public abstract builder()Lio/noties/markwon/SpannableBuilder;
.end method

.method public abstract configuration()Lio/noties/markwon/MarkwonConfiguration;
.end method

.method public abstract ensureNewLine()V
.end method

.method public abstract forceNewLine()V
.end method

.method public abstract hasNext(Lorg/commonmark/node/Node;)Z
.end method

.method public abstract length()I
.end method

.method public abstract renderProps()Lio/noties/markwon/RenderProps;
.end method

.method public abstract setSpans(ILjava/lang/Object;)V
.end method

.method public abstract setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(TN;I)V"
        }
    .end annotation
.end method

.method public abstract visitChildren(Lorg/commonmark/node/Node;)V
.end method
