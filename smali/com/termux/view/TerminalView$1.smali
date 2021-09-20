.class Lcom/termux/view/TerminalView$1;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Lcom/termux/view/GestureAndScaleRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/TerminalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field scrolledWithFinger:Z

.field final synthetic this$0:Lcom/termux/view/TerminalView;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;FF)Z
    .locals 12

    .line 146
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, p2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 148
    :cond_0
    iget-object p2, p2, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 150
    :cond_1
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p2}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result p2

    const/high16 v0, 0x3e800000    # 0.25f

    if-eqz p2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v3, v2, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    neg-int v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object p3, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p3, p3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    neg-int v0, p3

    div-int/lit8 v10, v0, 0x2

    div-int/lit8 v11, p3, 0x2

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v3, v2, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    iget v5, v2, Lcom/termux/view/TerminalView;->mTopRow:I

    const/4 v6, 0x0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    neg-int v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object p3, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p3}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result p3

    neg-int v10, p3

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 158
    :goto_0
    iget-object p3, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    new-instance v0, Lcom/termux/view/TerminalView$1$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/termux/view/TerminalView$1$1;-><init>(Lcom/termux/view/TerminalView$1;ZLandroid/view/MotionEvent;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0}, Lcom/termux/view/GestureAndScaleRecognizer;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1}, Lcom/termux/view/TerminalViewClient;->onLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 203
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->startTextSelectionMode(Landroid/view/MotionEvent;)V

    :cond_2
    return-void
.end method

.method public onScale(FFF)Z
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget p2, p1, Lcom/termux/view/TerminalView;->mScaleFactor:F

    mul-float/2addr p2, p3

    iput p2, p1, Lcom/termux/view/TerminalView;->mScaleFactor:F

    .line 140
    iget-object p3, p1, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p3, p2}, Lcom/termux/view/TerminalViewClient;->onScale(F)F

    move-result p2

    iput p2, p1, Lcom/termux/view/TerminalView;->mScaleFactor:F

    :cond_1
    :goto_0
    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 119
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 120
    :cond_0
    invoke-virtual {p2}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x2002

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 125
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/16 p3, 0x20

    invoke-virtual {p2, p1, p3, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_0

    .line 127
    :cond_1
    iput-boolean v0, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    .line 128
    iget-object p2, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget v1, p2, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    add-float/2addr p3, v1

    .line 129
    iget-object v1, p2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v1

    div-float v2, p3, v2

    float-to-int v2, v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr p3, v1

    .line 130
    iput p3, p2, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    .line 131
    invoke-virtual {p2, p1, v2}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    :goto_0
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object p1, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    return v2

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 108
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x2002

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1}, Lcom/termux/view/TerminalViewClient;->onSingleTapUp(Landroid/view/MotionEvent;)V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/termux/view/TerminalView;->mScrollRemainder:F

    .line 88
    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    .line 92
    iget-object v0, p0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1, v1, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    return v2

    .line 95
    :cond_0
    iput-boolean v1, p0, Lcom/termux/view/TerminalView$1;->scrolledWithFinger:Z

    return v1
.end method
