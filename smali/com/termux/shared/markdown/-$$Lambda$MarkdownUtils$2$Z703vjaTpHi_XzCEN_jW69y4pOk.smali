.class public final synthetic Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$Z703vjaTpHi_XzCEN_jW69y4pOk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/noties/markwon/SpanFactory;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$Z703vjaTpHi_XzCEN_jW69y4pOk;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$Z703vjaTpHi_XzCEN_jW69y4pOk;->f$0:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/termux/shared/markdown/MarkdownUtils$2;->lambda$configureSpansFactory$4(Landroid/content/Context;Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
