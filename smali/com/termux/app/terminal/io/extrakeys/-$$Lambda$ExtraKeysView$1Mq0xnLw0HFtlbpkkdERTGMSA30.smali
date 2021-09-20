.class public final synthetic Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$1Mq0xnLw0HFtlbpkkdERTGMSA30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/termux/view/TerminalView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/termux/view/TerminalView;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$1Mq0xnLw0HFtlbpkkdERTGMSA30;->f$0:Lcom/termux/view/TerminalView;

    iput-boolean p2, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$1Mq0xnLw0HFtlbpkkdERTGMSA30;->f$1:Z

    iput-boolean p3, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$1Mq0xnLw0HFtlbpkkdERTGMSA30;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$1Mq0xnLw0HFtlbpkkdERTGMSA30;->f$0:Lcom/termux/view/TerminalView;

    iget-boolean v1, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$1Mq0xnLw0HFtlbpkkdERTGMSA30;->f$1:Z

    iget-boolean v2, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$1Mq0xnLw0HFtlbpkkdERTGMSA30;->f$2:Z

    invoke-static {v0, v1, v2, p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->lambda$sendKey$0(Lcom/termux/view/TerminalView;ZZI)V

    return-void
.end method
