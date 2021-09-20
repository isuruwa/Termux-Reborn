.class public Lorg/commonmark/node/HtmlBlock;
.super Lorg/commonmark/node/Block;
.source "HtmlBlock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/commonmark/node/Block;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .locals 0

    .line 14
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/HtmlBlock;)V

    return-void
.end method

.method public setLiteral(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
