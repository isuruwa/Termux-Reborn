.class public Lio/noties/markwon/recycler/SimpleEntry$Holder;
.super Lio/noties/markwon/recycler/MarkwonAdapter$Holder;
.source "SimpleEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/recycler/SimpleEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# instance fields
.field final textView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(ILandroid/view/View;)V
    .locals 2

    .line 78
    invoke-direct {p0, p2}, Lio/noties/markwon/recycler/MarkwonAdapter$Holder;-><init>(Landroid/view/View;)V

    if-nez p1, :cond_1

    .line 82
    instance-of p1, p2, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 86
    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextView is not root of layout (specify TextView ID explicitly): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    invoke-virtual {p0, p1}, Lio/noties/markwon/recycler/MarkwonAdapter$Holder;->requireView(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    .line 90
    :goto_0
    iput-object p2, p0, Lio/noties/markwon/recycler/SimpleEntry$Holder;->textView:Landroid/widget/TextView;

    .line 91
    invoke-static {}, Lio/noties/markwon/utils/NoCopySpannableFactory;->getInstance()Lio/noties/markwon/utils/NoCopySpannableFactory;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setSpannableFactory(Landroid/text/Spannable$Factory;)V

    return-void
.end method
