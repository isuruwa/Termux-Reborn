.class Lcom/termux/view/GestureAndScaleRecognizer$3;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
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

    .line 77
    iput-object p1, p0, Lcom/termux/view/GestureAndScaleRecognizer$3;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/termux/view/GestureAndScaleRecognizer$3;->this$0:Lcom/termux/view/GestureAndScaleRecognizer;

    iget-object v0, v0, Lcom/termux/view/GestureAndScaleRecognizer;->mListener:Lcom/termux/view/GestureAndScaleRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/termux/view/GestureAndScaleRecognizer$Listener;->onScale(FFF)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
