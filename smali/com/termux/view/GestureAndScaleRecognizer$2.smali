.class Lcom/termux/view/GestureAndScaleRecognizer$2;
.super Ljava/lang/Object;
.source "GestureAndScaleRecognizer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


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

    .line 60
    iput-object p1, p0, Lcom/termux/view/GestureAndScaleRecognizer$2;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$2;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$2;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-interface {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
