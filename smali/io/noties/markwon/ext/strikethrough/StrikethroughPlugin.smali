.class public Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "StrikethroughPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    return-void
.end method

.method public static create()Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;
    .locals 1

    .line 32
    new-instance v0, Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;

    invoke-direct {v0}, Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;-><init>()V

    return-object v0
.end method


# virtual methods
.method public configureParser(Lorg/commonmark/parser/Parser$Builder;)V
    .locals 1

    .line 37
    invoke-static {}, Lorg/commonmark/ext/gfm/strikethrough/StrikethroughExtension;->create()Lorg/commonmark/Extension;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/commonmark/parser/Parser$Builder;->extensions(Ljava/lang/Iterable;)Lorg/commonmark/parser/Parser$Builder;

    return-void
.end method

.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 2

    .line 42
    const-class v0, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;

    new-instance v1, Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin$1;

    invoke-direct {v1, p0}, Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin$1;-><init>(Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;)V

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    return-void
.end method

.method public configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2

    .line 52
    const-class v0, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;

    new-instance v1, Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin$2;

    invoke-direct {v1, p0}, Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin$2;-><init>(Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;)V

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method
