.class public Lorg/commonmark/node/Heading;
.super Lorg/commonmark/node/Block;
.source "Heading.java"


# instance fields
.field private level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/commonmark/node/Block;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .locals 0

    .line 9
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/Heading;)V

    return-void
.end method

.method public getLevel()I
    .locals 1

    .line 13
    iget v0, p0, Lorg/commonmark/node/Heading;->level:I

    return v0
.end method

.method public setLevel(I)V
    .locals 0

    .line 17
    iput p1, p0, Lorg/commonmark/node/Heading;->level:I

    return-void
.end method
