.class public Lorg/commonmark/internal/BlockContinueImpl;
.super Lorg/commonmark/parser/block/BlockContinue;
.source "BlockContinueImpl.java"


# instance fields
.field private final finalize:Z

.field private final newColumn:I

.field private final newIndex:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/commonmark/parser/block/BlockContinue;-><init>()V

    .line 12
    iput p1, p0, Lorg/commonmark/internal/BlockContinueImpl;->newIndex:I

    .line 13
    iput p2, p0, Lorg/commonmark/internal/BlockContinueImpl;->newColumn:I

    .line 14
    iput-boolean p3, p0, Lorg/commonmark/internal/BlockContinueImpl;->finalize:Z

    return-void
.end method


# virtual methods
.method public getNewColumn()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/commonmark/internal/BlockContinueImpl;->newColumn:I

    return v0
.end method

.method public getNewIndex()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/commonmark/internal/BlockContinueImpl;->newIndex:I

    return v0
.end method

.method public isFinalize()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/commonmark/internal/BlockContinueImpl;->finalize:Z

    return v0
.end method
