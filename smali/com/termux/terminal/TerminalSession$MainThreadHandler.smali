.class Lcom/termux/terminal/TerminalSession$MainThreadHandler;
.super Landroid/os/Handler;
.source "TerminalSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/terminal/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final mReceiveBuffer:[B

.field final synthetic this$0:Lcom/termux/terminal/TerminalSession;


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 p1, 0x1000

    new-array p1, p1, [B

    .line 330
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->mReceiveBuffer:[B

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->mReceiveBuffer:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/terminal/ByteQueue;->read([BZ)I

    move-result v0

    if-lez v0, :cond_0

    .line 336
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v1, v1, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->mReceiveBuffer:[B

    invoke-virtual {v1, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->append([BI)V

    .line 337
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    .line 340
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 341
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 342
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalSession;->cleanupResources(I)V

    const-string v0, "\r\n[Process completed"

    const-string v1, ")"

    if-lez p1, :cond_1

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (code "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (signal "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - press Enter]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 355
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/termux/terminal/TerminalEmulator;->append([BI)V

    .line 356
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    .line 358
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, p1, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p1}, Lcom/termux/terminal/TerminalSessionClient;->onSessionFinished(Lcom/termux/terminal/TerminalSession;)V

    :cond_3
    return-void
.end method
