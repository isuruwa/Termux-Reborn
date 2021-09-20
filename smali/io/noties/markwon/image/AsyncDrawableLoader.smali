.class public abstract Lio/noties/markwon/image/AsyncDrawableLoader;
.super Ljava/lang/Object;
.source "AsyncDrawableLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noOp()Lio/noties/markwon/image/AsyncDrawableLoader;
    .locals 1

    .line 15
    new-instance v0, Lio/noties/markwon/image/AsyncDrawableLoaderNoOp;

    invoke-direct {v0}, Lio/noties/markwon/image/AsyncDrawableLoaderNoOp;-><init>()V

    return-object v0
.end method
