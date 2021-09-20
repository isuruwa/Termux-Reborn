.class public final synthetic Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$-_wj85_cHYENmceBJQWkbTMbgBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$-_wj85_cHYENmceBJQWkbTMbgBs;->f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$-_wj85_cHYENmceBJQWkbTMbgBs;->f$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {v0, p1, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->lambda$showErrorDialogAndQuit$1$TermuxFileReceiverActivity(Landroid/content/DialogInterface;I)V

    return-void
.end method
