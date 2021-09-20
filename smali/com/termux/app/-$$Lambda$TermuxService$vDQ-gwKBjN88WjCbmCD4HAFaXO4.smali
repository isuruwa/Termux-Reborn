.class public final synthetic Lcom/termux/app/-$$Lambda$TermuxService$vDQ-gwKBjN88WjCbmCD4HAFaXO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/TermuxService;

.field public final synthetic f$1:Lcom/termux/shared/shell/TermuxTask;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/TermuxService;Lcom/termux/shared/shell/TermuxTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/-$$Lambda$TermuxService$vDQ-gwKBjN88WjCbmCD4HAFaXO4;->f$0:Lcom/termux/app/TermuxService;

    iput-object p2, p0, Lcom/termux/app/-$$Lambda$TermuxService$vDQ-gwKBjN88WjCbmCD4HAFaXO4;->f$1:Lcom/termux/shared/shell/TermuxTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/termux/app/-$$Lambda$TermuxService$vDQ-gwKBjN88WjCbmCD4HAFaXO4;->f$0:Lcom/termux/app/TermuxService;

    iget-object v1, p0, Lcom/termux/app/-$$Lambda$TermuxService$vDQ-gwKBjN88WjCbmCD4HAFaXO4;->f$1:Lcom/termux/shared/shell/TermuxTask;

    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxService;->lambda$onTermuxTaskExited$0$TermuxService(Lcom/termux/shared/shell/TermuxTask;)V

    return-void
.end method
