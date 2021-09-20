.class public final synthetic Lcom/termux/app/-$$Lambda$TermuxActivity$iAb3wbvCSw3C33cvEKUeEppeGmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/-$$Lambda$TermuxActivity$iAb3wbvCSw3C33cvEKUeEppeGmE;->f$0:Lcom/termux/app/TermuxActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/termux/app/-$$Lambda$TermuxActivity$iAb3wbvCSw3C33cvEKUeEppeGmE;->f$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->lambda$onServiceConnected$1$TermuxActivity()V

    return-void
.end method
