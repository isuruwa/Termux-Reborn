.class Lcom/termux/view/GestureAndScaleRecognizer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureAndScaleRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/view/GestureAndScaleRecognizer;


# direct methods
.method constructor <init>(Lcom/termux/view/GestureAndScaleRecognizer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onDown(FF)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object p1, p1, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {p1, p2, p3, p4}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onFling(Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 56
    iget-object p1, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/termux/view/GestureAndScaleRecognizer;->isAfterLongPress:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/termux/view/GestureAndScaleRecognizer$1;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object p1, p1, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {p1, p2, p3, p4}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onScroll(Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
