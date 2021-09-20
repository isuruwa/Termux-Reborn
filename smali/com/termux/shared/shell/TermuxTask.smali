.class public final Lcom/termux/shared/shell/TermuxTask;
.super Ljava/lang/Object;
.source "TermuxTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;
    }
.end annotation


# instance fields
.field private final mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

.field private final mProcess:Ljava/lang/Process;

.field private final mStderr:Ljava/lang/StringBuilder;

.field private final mStdout:Ljava/lang/StringBuilder;

.field private final mTermuxTaskClient:Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;


# direct methods
.method private constructor <init>(Ljava/lang/Process;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mStdout:Ljava/lang/StringBuilder;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mStderr:Ljava/lang/StringBuilder;

    .line 39
    iput-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    .line 40
    iput-object p2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    .line 41
    iput-object p3, p0, Lcom/termux/shared/shell/TermuxTask;->mTermuxTaskClient:Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;

    return-void
.end method

.method static synthetic access$000(Lcom/termux/shared/shell/TermuxTask;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/termux/shared/shell/TermuxTask;->executeInner(Landroid/content/Context;)V

    return-void
.end method

.method public static execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;Z)Lcom/termux/shared/shell/TermuxTask;
    .locals 7

    .line 67
    iget-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "/data/data/com.termux/files/home"

    iput-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    .line 69
    :cond_1
    iget-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/termux/shared/shell/ShellUtils;->buildEnvironment(Landroid/content/Context;ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v2, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    iget-object v3, p1, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/termux/shared/shell/ShellUtils;->setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 73
    sget-object v3, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTING:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, v3}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    return-object v4

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TermuxTask"

    invoke-static {v5, v3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v3, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v3}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    iget-object v5, p1, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 81
    iput-object v3, p1, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 86
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    iget-object v6, p1, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0, v5}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    new-instance v1, Lcom/termux/shared/shell/TermuxTask;

    invoke-direct {v1, v0, p1, p2}, Lcom/termux/shared/shell/TermuxTask;-><init>(Ljava/lang/Process;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;)V

    if-eqz p3, :cond_4

    .line 97
    :try_start_1
    invoke-direct {v1, p0}, Lcom/termux/shared/shell/TermuxTask;->executeInner(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 102
    :cond_4
    new-instance p1, Lcom/termux/shared/shell/TermuxTask$1;

    invoke-direct {p1, v1, p0}, Lcom/termux/shared/shell/TermuxTask$1;-><init>(Lcom/termux/shared/shell/TermuxTask;Landroid/content/Context;)V

    .line 111
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :catch_0
    :goto_0
    return-object v1

    :catch_1
    move-exception p2

    const/4 p3, 0x2

    .line 88
    sget v0, Lcom/termux/shared/R$string;->error_failed_to_execute_termux_task_command:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p0, p2}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 89
    invoke-static {v4, p1}, Lcom/termux/shared/shell/TermuxTask;->processTermuxTaskResult(Lcom/termux/shared/shell/TermuxTask;Lcom/termux/shared/models/ExecutionCommand;)V

    return-object v4
.end method

.method private executeInner(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-static {v0}, Lcom/termux/shared/shell/ShellUtils;->getPid(Ljava/lang/Process;)I

    move-result v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" TermuxTask with pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TermuxTask"

    invoke-static {v3, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/termux/shared/models/ExecutionCommand;->stdout:Ljava/lang/String;

    .line 132
    iput-object v4, v1, Lcom/termux/shared/models/ExecutionCommand;->stderr:Ljava/lang/String;

    .line 133
    iput-object v4, v1, Lcom/termux/shared/models/ExecutionCommand;->exitCode:Ljava/lang/Integer;

    .line 137
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v5, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 138
    new-instance v5, Lcom/termux/shared/shell/StreamGobbler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "-stdout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/termux/shared/shell/TermuxTask;->mStdout:Ljava/lang/StringBuilder;

    invoke-direct {v5, v6, v7, v8}, Lcom/termux/shared/shell/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 139
    new-instance v6, Lcom/termux/shared/shell/StreamGobbler;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-stderr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    iget-object v9, p0, Lcom/termux/shared/shell/TermuxTask;->mStderr:Ljava/lang/StringBuilder;

    invoke-direct {v6, v7, v8, v9}, Lcom/termux/shared/shell/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    .line 142
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 143
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 145
    iget-object v7, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v7, v7, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 147
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v8, v8, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 148
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 149
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 153
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "EPIPE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Stream closed"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    sget v1, Lcom/termux/shared/R$string;->error_exception_received_while_executing_termux_task_command:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v7}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 162
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mStdout:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->stdout:Ljava/lang/String;

    .line 163
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mStderr:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->stderr:Ljava/lang/String;

    .line 164
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/termux/shared/models/ExecutionCommand;->exitCode:Ljava/lang/Integer;

    .line 165
    invoke-static {p0, v4}, Lcom/termux/shared/shell/TermuxTask;->processTermuxTaskResult(Lcom/termux/shared/shell/TermuxTask;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 166
    invoke-virtual {p0}, Lcom/termux/shared/shell/TermuxTask;->kill()V

    return-void

    .line 173
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p1

    .line 181
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :catch_1
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V

    .line 186
    invoke-virtual {v6}, Ljava/lang/Thread;->join()V

    .line 187
    iget-object v1, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    const-string v1, "The \""

    if-nez p1, :cond_2

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " exited normally"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 193
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " exited with code: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_1
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring setting \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" TermuxTask state to ExecutionState.EXECUTED and processing results since it has already failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v1, p0, Lcom/termux/shared/shell/TermuxTask;->mStdout:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->stdout:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object v1, p0, Lcom/termux/shared/shell/TermuxTask;->mStderr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->stderr:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/termux/shared/models/ExecutionCommand;->exitCode:Ljava/lang/Integer;

    .line 205
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    sget-object v0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->EXECUTED:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, v0}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 208
    :cond_4
    invoke-static {p0, v4}, Lcom/termux/shared/shell/TermuxTask;->processTermuxTaskResult(Lcom/termux/shared/shell/TermuxTask;Lcom/termux/shared/models/ExecutionCommand;)V

    return-void
.end method

.method private static processTermuxTaskResult(Lcom/termux/shared/shell/TermuxTask;Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 274
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 278
    :cond_1
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->shouldNotProcessResults()Z

    move-result v0

    const-string v1, "\" TermuxTask result"

    const-string v2, "TermuxTask"

    if-eqz v0, :cond_2

    .line 279
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

    .line 283
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

    .line 285
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mTermuxTaskClient:Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;

    if-eqz v0, :cond_3

    .line 286
    invoke-interface {v0, p0}, Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;->onTermuxTaskExited(Lcom/termux/shared/shell/TermuxTask;)V

    goto :goto_0

    .line 290
    :cond_3
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result p0

    if-nez p0, :cond_4

    .line 291
    sget-object p0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {p1, p0}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    return-object v0
.end method

.method public kill()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mProcess:Ljava/lang/Process;

    invoke-static {v0}, Lcom/termux/shared/shell/ShellUtils;->getPid(Ljava/lang/Process;)I

    move-result v0

    .line 251
    :try_start_0
    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SIGKILL to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v3}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" TermuxTask with pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxTask"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public killIfExecuting(Landroid/content/Context;Z)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->hasExecuted()Z

    move-result v0

    const-string v1, "TermuxTask"

    if-eqz v0, :cond_0

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring sending SIGKILL to \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" TermuxTask since it has already finished executing"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send SIGKILL to \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" TermuxTask"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    const/4 v1, 0x2

    sget v2, Lcom/termux/shared/R$string;->error_sending_sigkill_to_process:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 231
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object p2, p0, Lcom/termux/shared/shell/TermuxTask;->mStdout:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/termux/shared/models/ExecutionCommand;->stdout:Ljava/lang/String;

    .line 232
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    iget-object p2, p0, Lcom/termux/shared/shell/TermuxTask;->mStderr:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/termux/shared/models/ExecutionCommand;->stderr:Ljava/lang/String;

    .line 233
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    const/16 p2, 0x89

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/termux/shared/models/ExecutionCommand;->exitCode:Ljava/lang/Integer;

    .line 235
    invoke-static {p0, v2}, Lcom/termux/shared/shell/TermuxTask;->processTermuxTaskResult(Lcom/termux/shared/shell/TermuxTask;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/termux/shared/shell/TermuxTask;->mExecutionCommand:Lcom/termux/shared/models/ExecutionCommand;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->isExecuting()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/termux/shared/shell/TermuxTask;->kill()V

    :cond_2
    return-void
.end method
