.class public abstract Lorg/commonmark/parser/block/BlockStart;
.super Ljava/lang/Object;
.source "BlockStart.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static none()Lorg/commonmark/parser/block/BlockStart;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs of([Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockStart;
    .locals 1

    .line 18
    new-instance v0, Lorg/commonmark/internal/BlockStartImpl;

    invoke-direct {v0, p0}, Lorg/commonmark/internal/BlockStartImpl;-><init>([Lorg/commonmark/parser/block/BlockParser;)V

    return-object v0
.end method


# virtual methods
.method public abstract atColumn(I)Lorg/commonmark/parser/block/BlockStart;
.end method

.method public abstract atIndex(I)Lorg/commonmark/parser/block/BlockStart;
.end method

.method public abstract replaceActiveBlockParser()Lorg/commonmark/parser/block/BlockStart;
.end method
