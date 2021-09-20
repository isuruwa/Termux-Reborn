.class public abstract Lorg/commonmark/node/Block;
.super Lorg/commonmark/node/Node;
.source "Block.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    return-void
.end method


# virtual methods
.method public getParent()Lorg/commonmark/node/Block;
    .locals 1

    .line 6
    invoke-super {p0}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    move-result-object v0

    check-cast v0, Lorg/commonmark/node/Block;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/commonmark/node/Node;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/commonmark/node/Block;->getParent()Lorg/commonmark/node/Block;

    move-result-object v0

    return-object v0
.end method

.method protected setParent(Lorg/commonmark/node/Node;)V
    .locals 1

    .line 11
    instance-of v0, p1, Lorg/commonmark/node/Block;

    if-eqz v0, :cond_0

    .line 14
    invoke-super {p0, p1}, Lorg/commonmark/node/Node;->setParent(Lorg/commonmark/node/Node;)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parent of block must also be block (can not be inline)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
