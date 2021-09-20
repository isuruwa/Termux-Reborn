.class public abstract Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation


# virtual methods
.method public abstract getTargetPosition()I
.end method

.method public abstract isPendingInitialRun()Z
.end method

.method public abstract isRunning()Z
.end method

.method abstract onAnimation(II)V
.end method

.method protected abstract onChildAttachedToWindow(Landroid/view/View;)V
.end method

.method public abstract setTargetPosition(I)V
.end method

.method protected final stop()V
    .locals 0

    const p0, 0x0

    throw p0
.end method
