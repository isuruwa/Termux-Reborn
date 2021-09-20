.class public final synthetic Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$jddEeNQ4vBC9Zwj3U3TQ3AhjS6k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

.field public final synthetic f$1:[Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$jddEeNQ4vBC9Zwj3U3TQ3AhjS6k;->f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iput-object p2, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$jddEeNQ4vBC9Zwj3U3TQ3AhjS6k;->f$1:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$jddEeNQ4vBC9Zwj3U3TQ3AhjS6k;->f$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v1, p0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$jddEeNQ4vBC9Zwj3U3TQ3AhjS6k;->f$1:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1, p2}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->lambda$showUrlSelection$0$TermuxTerminalViewClient([Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V

    return-void
.end method
