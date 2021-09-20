.class public final synthetic Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ssncePRmyXOOszi-htM6KkJVLBc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:[Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ssncePRmyXOOszi-htM6KkJVLBc;->f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iput-object p2, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ssncePRmyXOOszi-htM6KkJVLBc;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ssncePRmyXOOszi-htM6KkJVLBc;->f$2:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ssncePRmyXOOszi-htM6KkJVLBc;->f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v1, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ssncePRmyXOOszi-htM6KkJVLBc;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ssncePRmyXOOszi-htM6KkJVLBc;->f$2:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, p1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->lambda$showUrlSelection$2$TermuxTerminalViewClient(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;)V

    return-void
.end method
