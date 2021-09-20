.class Lio/noties/markwon/linkify/LinkifyPlugin$1;
.super Ljava/lang/Object;
.source "LinkifyPlugin.java"

# interfaces
.implements Lio/noties/markwon/MarkwonPlugin$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/linkify/LinkifyPlugin;->configure(Lio/noties/markwon/MarkwonPlugin$Registry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/noties/markwon/MarkwonPlugin$Action<",
        "Lio/noties/markwon/core/CorePlugin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/noties/markwon/linkify/LinkifyPlugin;


# direct methods
.method constructor <init>(Lio/noties/markwon/linkify/LinkifyPlugin;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lio/noties/markwon/linkify/LinkifyPlugin$1;->this$0:Lio/noties/markwon/linkify/LinkifyPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lio/noties/markwon/MarkwonPlugin;)V
    .locals 0

    .line 79
    check-cast p1, Lio/noties/markwon/core/CorePlugin;

    invoke-virtual {p0, p1}, Lio/noties/markwon/linkify/LinkifyPlugin$1;->apply(Lio/noties/markwon/core/CorePlugin;)V

    return-void
.end method

.method public apply(Lio/noties/markwon/core/CorePlugin;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lio/noties/markwon/linkify/LinkifyPlugin$1;->this$0:Lio/noties/markwon/linkify/LinkifyPlugin;

    invoke-static {v0}, Lio/noties/markwon/linkify/LinkifyPlugin;->access$000(Lio/noties/markwon/linkify/LinkifyPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyCompatTextAddedListener;

    iget-object v1, p0, Lio/noties/markwon/linkify/LinkifyPlugin$1;->this$0:Lio/noties/markwon/linkify/LinkifyPlugin;

    invoke-static {v1}, Lio/noties/markwon/linkify/LinkifyPlugin;->access$100(Lio/noties/markwon/linkify/LinkifyPlugin;)I

    move-result v1

    invoke-direct {v0, v1}, Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyCompatTextAddedListener;-><init>(I)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyTextAddedListener;

    iget-object v1, p0, Lio/noties/markwon/linkify/LinkifyPlugin$1;->this$0:Lio/noties/markwon/linkify/LinkifyPlugin;

    invoke-static {v1}, Lio/noties/markwon/linkify/LinkifyPlugin;->access$100(Lio/noties/markwon/linkify/LinkifyPlugin;)I

    move-result v1

    invoke-direct {v0, v1}, Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyTextAddedListener;-><init>(I)V

    .line 89
    :goto_0
    invoke-virtual {p1, v0}, Lio/noties/markwon/core/CorePlugin;->addOnTextAddedListener(Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;)Lio/noties/markwon/core/CorePlugin;

    return-void
.end method
