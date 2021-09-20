.class public final Lcom/termux/terminal/TerminalSession;
.super Lcom/termux/terminal/TerminalOutput;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/terminal/TerminalSession$MainThreadHandler;
    }
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field mClient:Lcom/termux/terminal/TerminalSessionClient;

.field private final mCwd:Ljava/lang/String;

.field mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field private final mEnv:[Ljava/lang/String;

.field public final mHandle:Ljava/lang/String;

.field final mMainThreadHandler:Landroid/os/Handler;

.field final mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

.field public mSessionName:Ljava/lang/String;

.field mShellExitStatus:I

.field private final mShellPath:Ljava/lang/String;

.field mShellPid:I

.field private mTerminalFileDescriptor:I

.field final mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

.field private final mUtf8InputBuffer:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/termux/terminal/TerminalOutput;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/termux/terminal/ByteQueue;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/termux/terminal/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    .line 49
    new-instance v0, Lcom/termux/terminal/ByteQueue;

    invoke-direct {v0, v1}, Lcom/termux/terminal/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 51
    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    .line 71
    new-instance v0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;

    invoke-direct {v0, p0}, Lcom/termux/terminal/TerminalSession$MainThreadHandler;-><init>(Lcom/termux/terminal/TerminalSession;)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession;->mShellPath:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/termux/terminal/TerminalSession;->mCwd:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/termux/terminal/TerminalSession;->mArgs:[Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/termux/terminal/TerminalSession;->mEnv:[Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    return-void
.end method

.method private static wrapFileDescriptor(ILcom/termux/terminal/TerminalSessionClient;)Ljava/io/FileDescriptor;
    .locals 4

    .line 309
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    const/4 v1, 0x1

    .line 313
    :try_start_0
    const-class v2, Ljava/io/FileDescriptor;

    const-string v3, "descriptor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    .line 316
    :catch_2
    :try_start_1
    const-class v2, Ljava/io/FileDescriptor;

    const-string v3, "fd"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 318
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 319
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_3
    move-exception p0

    :goto_1
    const-string v2, "TerminalSession"

    const-string v3, "Error accessing FileDescriptor#descriptor private field"

    .line 321
    invoke-interface {p1, v2, v3, p0}, Lcom/termux/terminal/TerminalSessionClient;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 322
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_2
    return-object v0
.end method


# virtual methods
.method cleanupResources(I)V
    .locals 1

    .line 243
    monitor-enter p0

    const/4 v0, -0x1

    .line 244
    :try_start_0
    iput v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 245
    iput p1, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I

    .line 246
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {p1}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 250
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {p1}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 251
    iget p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {p1}, Lcom/termux/terminal/JNI;->close(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 246
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clipboardText(Ljava/lang/String;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0, p1}, Lcom/termux/terminal/TerminalSessionClient;->onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    return-void
.end method

.method public finishIfRunning()V
    .locals 4

    .line 232
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed sending SIGKILL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TerminalSession"

    invoke-interface {v1, v2, v0}, Lcom/termux/terminal/TerminalSessionClient;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCwd()Ljava/lang/String;
    .locals 5

    .line 289
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v3, "/proc/%s/cwd/"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 293
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    .line 296
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 299
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 303
    :goto_1
    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    const-string v3, "TerminalSession"

    const-string v4, "Error getting current directory"

    invoke-interface {v2, v3, v4, v0}, Lcom/termux/terminal/TerminalSessionClient;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    return-object v1
.end method

.method public getEmulator()Lcom/termux/terminal/TerminalEmulator;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    return-object v0
.end method

.method public declared-synchronized getExitStatus()I
    .locals 1

    monitor-enter p0

    .line 265
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPid()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public initializeEmulator(II)V
    .locals 8

    .line 121
    new-instance v6, Lcom/termux/terminal/TerminalEmulator;

    iget-object v5, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    const/16 v4, 0x7d0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/termux/terminal/TerminalEmulator;-><init>(Lcom/termux/terminal/TerminalOutput;IIILcom/termux/terminal/TerminalSessionClient;)V

    iput-object v6, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 124
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mShellPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mCwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/terminal/TerminalSession;->mArgs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/termux/terminal/TerminalSession;->mEnv:[Ljava/lang/String;

    move-object v5, v0

    move v6, p2

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/termux/terminal/JNI;->createSubprocess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[III)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    const/4 p2, 0x0

    .line 125
    aget p2, v0, p2

    iput p2, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 127
    iget-object p2, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-static {p1, p2}, Lcom/termux/terminal/TerminalSession;->wrapFileDescriptor(ILcom/termux/terminal/TerminalSessionClient;)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 129
    new-instance p2, Lcom/termux/terminal/TerminalSession$1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TermSessionInputReader[pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/termux/terminal/TerminalSession$1;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 144
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 146
    new-instance p2, Lcom/termux/terminal/TerminalSession$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TermSessionOutputWriter[pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/termux/terminal/TerminalSession$2;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 160
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 162
    new-instance p1, Lcom/termux/terminal/TerminalSession$3;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TermSessionWaiter[pid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/termux/terminal/TerminalSession$3;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized isRunning()Z
    .locals 2

    monitor-enter p0

    .line 260
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyScreenUpdate()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onTextChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public onBell()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onBell(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public onColorsChanged()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onColorsChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 227
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    return-void
.end method

.method public titleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 256
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {p1, p0}, Lcom/termux/terminal/TerminalSessionClient;->onTitleChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public updateSize(II)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/termux/terminal/TerminalSession;->initializeEmulator(II)V

    goto :goto_0

    .line 104
    :cond_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {v0, p2, p1}, Lcom/termux/terminal/JNI;->setPtyWindowSize(III)V

    .line 105
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0, p1, p2}, Lcom/termux/terminal/TerminalEmulator;->resize(II)V

    :goto_0
    return-void
.end method

.method public updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 95
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalEmulator;->updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 175
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/termux/terminal/ByteQueue;->write([BII)Z

    :cond_0
    return-void
.end method

.method public writeCodePoint(ZI)V
    .locals 4

    const v0, 0x10ffff

    if-gt p2, v0, :cond_5

    const v0, 0xd800

    if-lt p2, v0, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_5

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    const/16 v1, 0x1b

    aput-byte v1, p1, v0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    const/16 v1, 0x7f

    if-gt p2, v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    goto :goto_2

    :cond_2
    const/16 v1, 0x7ff

    if-gt p2, v1, :cond_3

    .line 192
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    add-int/lit8 p1, v2, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 194
    aput-byte p2, v1, v2

    :goto_1
    move v2, p1

    goto :goto_2

    :cond_3
    const v1, 0xffff

    if-gt p2, v1, :cond_4

    .line 197
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    add-int/lit8 p1, v2, 0x1

    shr-int/lit8 v3, p2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 199
    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 201
    aput-byte p2, v1, p1

    goto :goto_2

    .line 204
    :cond_4
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    add-int/lit8 p1, v2, 0x1

    shr-int/lit8 v3, p2, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 206
    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 208
    aput-byte v3, v1, p1

    add-int/lit8 p1, v2, 0x1

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 210
    aput-byte p2, v1, v2

    goto :goto_1

    .line 212
    :goto_2
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    invoke-virtual {p0, p1, v0, v2}, Lcom/termux/terminal/TerminalSession;->write([BII)V

    return-void

    .line 182
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid code point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
