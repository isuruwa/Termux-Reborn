.class public Lcom/termux/shared/shell/TermuxSession;
.super Ljava/lang/Object;
.source "TermuxSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;
    }
.end annotation


# instance fields
.field private final mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

.field private final mSetStdoutOnExit:Z

.field private final mTerminalSession:Lcom/termux/terminal/TerminalSession;

.field private final mTermuxSessionClient:Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;


# direct methods
.method private constructor <init>(Lcom/termux/terminal/TerminalSession;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    .line 34
    iput-object p2, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    .line 35
    iput-object p3, p0, Lcom/termux/shared/shell/TermuxSession;->mTermuxSessionClient:Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;

    .line 36
    iput-boolean p4, p0, Lcom/termux/shared/shell/TermuxSession;->mSetStdoutOnExit:Z

    return-void
.end method

.method public static execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/terminal/TerminalSessionClient;Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;Ljava/lang/String;Z)Lcom/termux/shared/shell/TermuxSession;
    .locals 9

    .line 66
    iget-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "/data/data/com.termux/files/home"

    iput-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 68
    :cond_1
    iget-boolean v0, p1, Lcom/termux/shared/models/ExecutionCommand;->isFailsafe:Z

    iget-object v1, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/termux/shared/shell/ShellUtils;->buildEnvironment(Landroid/content/Context;ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 71
    iget-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 72
    iget-boolean v0, p1, Lcom/termux/shared/models/ExecutionCommand;->isFailsafe:Z

    if-nez v0, :cond_3

    const/4 v0, 0x3

    const-string v3, "login"

    const-string v4, "bash"

    const-string v5, "zsh"

    .line 73
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v5, v3, v4

    .line 74
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/data/com.termux/files/usr/bin"

    invoke-direct {v7, v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v7}, Ljava/io/File;->canExecute()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "/system/bin/sh"

    .line 84
    iput-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    .line 89
    :goto_2
    iget-object v3, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    iget-object v4, p1, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/termux/shared/shell/ShellUtils;->setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 91
    aget-object v4, v3, v1

    iput-object v4, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_6

    const-string v0, "-"

    goto :goto_3

    :cond_6
    const-string v0, ""

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v0}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    .line 95
    aput-object v0, v4, v1

    .line 96
    array-length v5, v3

    if-le v5, v2, :cond_7

    array-length v5, v3

    sub-int/2addr v5, v2

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    :cond_7
    iput-object v4, p1, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 100
    iget-object v3, p1, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 101
    iput-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 103
    :cond_8
    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTING:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, v0}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 p2, 0x2

    .line 104
    sget p3, Lcom/termux/shared/R$string;->error_failed_to_execute_termux_session_command:I

    new-array p4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v1

    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 105
    invoke-static {p3, p1}, Lcom/termux/shared/shell/TermuxSession;->processTermuxSessionResult(Lcom/termux/shared/shell/TermuxSession;Lcom/termux/shared/models/ExecutionCommand;)V

    return-object p3

    .line 109
    :cond_9
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TermuxSession"

    invoke-static {v0, p0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running \""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" TermuxSession"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance p0, Lcom/termux/terminal/TerminalSession;

    iget-object v3, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    iget-object v4, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    iget-object v5, p1, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/termux/terminal/TerminalSession;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/termux/terminal/TerminalSessionClient;)V

    if-eqz p4, :cond_a

    .line 115
    iput-object p4, p0, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 118
    :cond_a
    new-instance p2, Lcom/termux/shared/shell/TermuxSession;

    invoke-direct {p2, p0, p1, p3, p5}, Lcom/termux/shared/shell/TermuxSession;-><init>(Lcom/termux/terminal/TerminalSession;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;Z)V

    return-object p2
.end method

.method private static processTermuxSessionResult(Lcom/termux/shared/shell/TermuxSession;Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->shouldNotProcessResults()Z

    move-result v0

    const-string v1, "\" TermuxSession result"

    const-string v2, "TermuxSession"

    if-eqz v0, :cond_2

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring duplicate call to process \""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mTermuxSessionClient:Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;

    if-eqz v0, :cond_3

    .line 228
    invoke-interface {v0, p0}, Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;->onTermuxSessionExited(Lcom/termux/shared/shell/TermuxSession;)V

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result p0

    if-nez p0, :cond_4

    .line 233
    sget-object p0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, p0}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result v0

    const-string v1, "The \""

    const-string v2, "TermuxSession"

    if-nez v0, :cond_1

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" TermuxSession with exited normally"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" TermuxSession with exited with code: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring setting \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" TermuxSession state to ExecutionState.EXECUTED and processing results since it has already failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_2
    iget-boolean v1, p0, Lcom/termux/shared/shell/TermuxSession;->mSetStdoutOnExit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v3, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/termux/shared/models/ExecutionCommand;->stdout:Ljava/lang/String;

    goto :goto_1

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iput-object v2, v1, Lcom/termux/shared/models/ExecutionCommand;->stdout:Ljava/lang/String;

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iput-object v2, v1, Lcom/termux/shared/models/ExecutionCommand;->stderr:Ljava/lang/String;

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/termux/shared/models/ExecutionCommand;->exitCode:Ljava/lang/Integer;

    .line 155
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    sget-object v1, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {v0, v1}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 158
    :cond_4
    invoke-static {p0, v2}, Lcom/termux/shared/shell/TermuxSession;->processTermuxSessionResult(Lcom/termux/shared/shell/TermuxSession;Lcom/termux/shared/models/ExecutionCommand;)V

    return-void
.end method

.method public getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    return-object v0
.end method

.method public getTerminalSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method public killIfExecuting(Landroid/content/Context;Z)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->hasExecuted()Z

    move-result v0

    const-string v1, "TermuxSession"

    if-eqz v0, :cond_0

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring sending SIGKILL to \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" TermuxSession since it has already finished executing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send SIGKILL to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" TermuxSession"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    const/4 v1, 0x2

    sget v2, Lcom/termux/shared/R$string;->error_sending_sigkill_to_process:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 182
    iget-boolean p1, p0, Lcom/termux/shared/shell/TermuxSession;->mSetStdoutOnExit:Z

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object p2, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/termux/shared/models/ExecutionCommand;->stdout:Ljava/lang/String;

    goto :goto_0

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iput-object v2, p1, Lcom/termux/shared/models/ExecutionCommand;->stdout:Ljava/lang/String;

    .line 187
    :goto_0
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxSession;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iput-object v2, p1, Lcom/termux/shared/models/ExecutionCommand;->stderr:Ljava/lang/String;

    const/16 p2, 0x89

    .line 188
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/termux/shared/models/ExecutionCommand;->exitCode:Ljava/lang/Integer;

    .line 190
    invoke-static {p0, v2}, Lcom/termux/shared/shell/TermuxSession;->processTermuxSessionResult(Lcom/termux/shared/shell/TermuxSession;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 195
    :cond_2
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxSession;->mTerminalSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    return-void
.end method
