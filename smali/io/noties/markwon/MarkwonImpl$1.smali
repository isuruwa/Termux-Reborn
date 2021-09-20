.class Lio/noties/markwon/MarkwonImpl$1;
.super Ljava/lang/Object;
.source "MarkwonImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/MarkwonImpl;->setParsedMarkdown(Landroid/widget/TextView;Landroid/text/Spanned;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/noties/markwon/MarkwonImpl;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/noties/markwon/MarkwonImpl;Landroid/widget/TextView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lio/noties/markwon/MarkwonImpl$1;->this$0:Lio/noties/markwon/MarkwonImpl;

    iput-object p2, p0, Lio/noties/markwon/MarkwonImpl$1;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 129
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl$1;->this$0:Lio/noties/markwon/MarkwonImpl;

    invoke-static {v0}, Lio/noties/markwon/MarkwonImpl;->access$000(Lio/noties/markwon/MarkwonImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/MarkwonPlugin;

    .line 130
    iget-object v2, p0, Lio/noties/markwon/MarkwonImpl$1;->val$textView:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Lio/noties/markwon/MarkwonPlugin;->afterSetText(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    return-void
.end method
