.class public interface abstract Lio/noties/markwon/MarkwonPlugin;
.super Ljava/lang/Object;
.source "MarkwonPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/MarkwonPlugin$Registry;,
        Lio/noties/markwon/MarkwonPlugin$Action;
    }
.end annotation


# virtual methods
.method public abstract afterRender(Lorg/commonmark/node/Node;Lio/noties/markwon/MarkwonVisitor;)V
.end method

.method public abstract afterSetText(Landroid/widget/TextView;)V
.end method

.method public abstract beforeRender(Lorg/commonmark/node/Node;)V
.end method

.method public abstract beforeSetText(Landroid/widget/TextView;Landroid/text/Spanned;)V
.end method

.method public abstract configure(Lio/noties/markwon/MarkwonPlugin$Registry;)V
.end method

.method public abstract configureConfiguration(Lio/noties/markwon/MarkwonConfiguration$Builder;)V
.end method

.method public abstract configureParser(Lorg/commonmark/parser/Parser$Builder;)V
.end method

.method public abstract configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
.end method

.method public abstract configureTheme(Lio/noties/markwon/core/MarkwonTheme$Builder;)V
.end method

.method public abstract configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
.end method

.method public abstract processMarkdown(Ljava/lang/String;)Ljava/lang/String;
.end method
