.class public Lorg/commonmark/node/SoftLineBreak;
.super Lorg/commonmark/node/Node;
.source "SoftLineBreak.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .locals 0

    .line 7
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/SoftLineBreak;)V

    return-void
.end method
