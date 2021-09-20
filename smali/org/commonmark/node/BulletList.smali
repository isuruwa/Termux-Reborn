.class public Lorg/commonmark/node/BulletList;
.super Lorg/commonmark/node/ListBlock;
.source "BulletList.java"


# instance fields
.field private bulletMarker:C


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/commonmark/node/ListBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .locals 0

    .line 9
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/BulletList;)V

    return-void
.end method

.method public getBulletMarker()C
    .locals 1

    .line 13
    iget-char v0, p0, Lorg/commonmark/node/BulletList;->bulletMarker:C

    return v0
.end method

.method public setBulletMarker(C)V
    .locals 0

    .line 17
    iput-char p1, p0, Lorg/commonmark/node/BulletList;->bulletMarker:C

    return-void
.end method
