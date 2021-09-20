.class public final synthetic Lcom/termux/app/-$$Lambda$TermuxInstaller$1$9chPwaTxptlVSeMi5aWcSZO2dmI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$9chPwaTxptlVSeMi5aWcSZO2dmI;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$9chPwaTxptlVSeMi5aWcSZO2dmI;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$9chPwaTxptlVSeMi5aWcSZO2dmI;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$9chPwaTxptlVSeMi5aWcSZO2dmI;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1, p2}, Lcom/termux/app/TermuxInstaller$1;->lambda$null$1(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
