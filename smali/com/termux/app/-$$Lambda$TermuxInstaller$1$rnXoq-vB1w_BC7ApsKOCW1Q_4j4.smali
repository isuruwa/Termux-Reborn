.class public final synthetic Lcom/termux/app/-$$Lambda$TermuxInstaller$1$rnXoq-vB1w_BC7ApsKOCW1Q_4j4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$rnXoq-vB1w_BC7ApsKOCW1Q_4j4;->f$0:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$rnXoq-vB1w_BC7ApsKOCW1Q_4j4;->f$0:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/termux/app/TermuxInstaller$1;->lambda$run$3(Landroid/app/ProgressDialog;)V

    return-void
.end method
