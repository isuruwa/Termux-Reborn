.class Lcom/termux/view/TerminalView$1$1;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/TerminalView$1;->onFling(Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastY:I

.field final synthetic this$1:Lcom/termux/view/TerminalView$1;

.field final synthetic val$e2:Landroid/view/MotionEvent;

.field final synthetic val$mouseTrackingAtStartOfFling:Z


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView$1;ZLandroid/view/MotionEvent;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/termux/view/TerminalView$1$1;->this$1:Lcom/termux/view/TerminalView$1;

    iput-boolean p2, p0, Lcom/termux/view/TerminalView$1$1;->val$mouseTrackingAtStartOfFling:Z

    iput-object p3, p0, Lcom/termux/view/TerminalView$1$1;->val$e2:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 159
    iput p1, p0, Lcom/termux/view/TerminalView$1$1;->mLastY:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 163
    iget-boolean v0, p0, Lcom/termux/view/TerminalView$1$1;->val$mouseTrackingAtStartOfFling:Z

    iget-object v1, p0, Lcom/termux/view/TerminalView$1$1;->this$1:Lcom/termux/view/TerminalView$1;

    iget-object v1, v1, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/termux/view/TerminalView$1$1;->this$1:Lcom/termux/view/TerminalView$1;

    iget-object v0, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView$1$1;->this$1:Lcom/termux/view/TerminalView$1;

    iget-object v0, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView$1$1;->this$1:Lcom/termux/view/TerminalView$1;

    iget-object v0, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/termux/view/TerminalView$1$1;->this$1:Lcom/termux/view/TerminalView$1;

    iget-object v1, v1, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 170
    iget-boolean v2, p0, Lcom/termux/view/TerminalView$1$1;->val$mouseTrackingAtStartOfFling:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/termux/view/TerminalView$1$1;->mLastY:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/termux/view/TerminalView$1$1;->this$1:Lcom/termux/view/TerminalView$1;

    iget-object v2, v2, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget v2, v2, Lcom/termux/view/TerminalView;->mTopRow:I

    :goto_0
    sub-int v2, v1, v2

    .line 171
    iget-object v3, p0, Lcom/termux/view/TerminalView$1$1;->this$1:Lcom/termux/view/TerminalView$1;

    iget-object v3, v3, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    iget-object v4, p0, Lcom/termux/view/TerminalView$1$1;->val$e2:Landroid/view/MotionEvent;

    invoke-virtual {v3, v4, v2}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    .line 172
    iput v1, p0, Lcom/termux/view/TerminalView$1$1;->mLastY:I

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/termux/view/TerminalView$1$1;->this$1:Lcom/termux/view/TerminalView$1;

    iget-object v0, v0, Lcom/termux/view/TerminalView$1;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
