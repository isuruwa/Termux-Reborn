.class public final synthetic Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$coeJkn0FYEP3oVy1GyPpPH7d46U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$coeJkn0FYEP3oVy1GyPpPH7d46U;->f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$coeJkn0FYEP3oVy1GyPpPH7d46U;->f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {v0, p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->lambda$promptNameAndSave$5$TermuxFileReceiverActivity(Landroid/content/DialogInterface;)V

    return-void
.end method
