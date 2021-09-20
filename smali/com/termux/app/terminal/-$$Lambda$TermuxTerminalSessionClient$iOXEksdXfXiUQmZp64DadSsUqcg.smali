.class public final synthetic Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$iOXEksdXfXiUQmZp64DadSsUqcg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/ListView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ListView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$iOXEksdXfXiUQmZp64DadSsUqcg;->f$0:Landroid/widget/ListView;

    iput p2, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$iOXEksdXfXiUQmZp64DadSsUqcg;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$iOXEksdXfXiUQmZp64DadSsUqcg;->f$0:Landroid/widget/ListView;

    iget v1, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$iOXEksdXfXiUQmZp64DadSsUqcg;->f$1:I

    invoke-static {v0, v1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->lambda$checkAndScrollToSession$1(Landroid/widget/ListView;I)V

    return-void
.end method
