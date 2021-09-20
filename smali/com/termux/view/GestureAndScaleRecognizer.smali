.class final Lcom/termux/view/GestureAndScaleRecognizer;
.super Ljava/lang/Object;
.source "GestureAndScaleRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/view/GestureAndScaleRecognizer$Listener;
    }
.end annotation


# instance fields
.field isAfterLongPress:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field final mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    .line 37
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/termux/view/GestureAndScaleRecognizer$1;

    invoke-direct {v0, p0}, Lcom/termux/view/GestureAndScaleRecognizer$1;-><init>(Lcom/termux/view/GestureAndScaleRecognizer;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 60
    new-instance v0, Lcom/termux/view/GestureAndScaleRecognizer$2;

    invoke-direct {v0, p0}, Lcom/termux/view/GestureAndScaleRecognizer$2;-><init>(Lcom/termux/view/GestureAndScaleRecognizer;)V

    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 77
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/termux/view/GestureAndScaleRecognizer$3;

    invoke-direct {v0, p0}, Lcom/termux/view/GestureAndScaleRecognizer$3;-><init>(Lcom/termux/view/GestureAndScaleRecognizer;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    const/4 p1, 0x0

    .line 88
    invoke-virtual {p2, p1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    return-void
.end method


# virtual methods
.method public isInProgress()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->isAfterLongPress:Z

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/termux/view/GestureAndScaleRecognizer;->isAfterLongPress:Z

    :cond_2
    :goto_0
    return-void
.end method
