.class public Lcom/termux/app/RunCommandService;
.super Landroid/app/Service;
.source "RunCommandService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/RunCommandService$LocalBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Lcom/termux/app/RunCommandService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/termux/app/RunCommandService$LocalBinder;-><init>(Lcom/termux/app/RunCommandService;)V

    iput-object v0, p0, Lcom/termux/app/RunCommandService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 8

    const-string v1, "termux_run_command_notification_channel"

    const/4 v2, -0x1

    const-string v3, "Termux RunCommandService"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    .line 194
    invoke-static/range {v0 .. v7}, Lcom/termux/shared/notification/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const v1, 0x7f060066

    .line 204
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const v1, -0x9f8275

    .line 207
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 209
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private runStartForeground()V
    .locals 2

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/termux/app/RunCommandService;->setupNotificationChannel()V

    const/16 v0, 0x53a

    .line 182
    invoke-direct {p0}, Lcom/termux/app/RunCommandService;->buildNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private runStopForeground()V
    .locals 2

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method private setupNotificationChannel()V
    .locals 3

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "termux_run_command_notification_channel"

    const-string v2, "Termux RunCommandService"

    .line 215
    invoke-static {p0, v1, v2, v0}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/termux/app/RunCommandService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "RunCommandService"

    const-string v1, "onCreate"

    .line 47
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/termux/app/RunCommandService;->runStartForeground()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const-string v11, "RunCommandService"

    const-string v1, "onStartCommand"

    .line 53
    invoke-static {v11, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x2

    if-nez v0, :cond_0

    return v12

    .line 58
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->runStartForeground()V

    .line 60
    new-instance v13, Lcom/termux/shared/models/ExecutionCommand;

    invoke-direct {v13}, Lcom/termux/shared/models/ExecutionCommand;-><init>()V

    const v1, 0x7f0e0064

    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/Object;

    const-string v3, "https://github.com/termux/termux-app/wiki/RUN_COMMAND-Intent"

    const/4 v15, 0x0

    aput-object v3, v2, v15

    .line 61
    invoke-virtual {v10, v1, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.termux.RUN_COMMAND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_1

    const v1, 0x7f0e0065

    new-array v2, v14, [Ljava/lang/Object;

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v15

    invoke-virtual {v10, v1, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v13, v12, v0, v9}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 69
    invoke-static {v10, v11, v13, v15}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    return v12

    :cond_1
    const-string v1, "com.termux.RUN_COMMAND_PATH"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    const-string v2, "com.termux.RUN_COMMAND_ARGUMENTS"

    .line 74
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    const-string v2, "com.termux.RUN_COMMAND_STDIN"

    .line 75
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    const-string v2, "com.termux.RUN_COMMAND_WORKDIR"

    .line 76
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    const-string v2, "com.termux.RUN_COMMAND_BACKGROUND"

    .line 77
    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v13, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    const-string v2, "com.termux.RUN_COMMAND_SESSION_ACTION"

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/termux/shared/models/ExecutionCommand;->sessionAction:Ljava/lang/String;

    const-string v2, "com.termux.RUN_COMMAND_COMMAND_LABEL"

    .line 79
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RUN_COMMAND Execution Intent Command"

    invoke-static {v2, v3}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v13, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    const-string v2, "com.termux.RUN_COMMAND_COMMAND_DESCRIPTION"

    .line 80
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/termux/shared/models/ExecutionCommand;->commandDescription:Ljava/lang/String;

    const-string v2, "com.termux.RUN_COMMAND_COMMAND_HELP"

    .line 81
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/termux/shared/models/ExecutionCommand;->commandHelp:Ljava/lang/String;

    .line 82
    iput-boolean v14, v13, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    const-string v2, "com.termux.RUN_COMMAND_PENDING_INTENT"

    .line 83
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, v13, Lcom/termux/shared/models/ExecutionCommand;->pluginPendingIntent:Landroid/app/PendingIntent;

    .line 92
    invoke-static/range {p0 .. p0}, Lcom/termux/app/utils/PluginUtils;->checkIfRunCommandServiceAllowExternalAppsPolicyIsViolated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v13, v12, v0, v9}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 95
    invoke-static {v10, v11, v13, v14}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    return v12

    .line 102
    :cond_2
    iget-object v0, v13, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 110
    :cond_3
    iget-object v0, v13, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v0, v9, v14}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v1, "executable"

    const-string v4, "r-x"

    move-object/from16 v0, p0

    .line 114
    invoke-static/range {v0 .. v7}, Lcom/termux/shared/file/FileUtils;->validateRegularFileExistenceAndPermissions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    const-string v8, "\n"

    if-eqz v0, :cond_4

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0e007a

    new-array v2, v14, [Ljava/lang/Object;

    iget-object v3, v13, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    aput-object v3, v2, v15

    invoke-virtual {v10, v0, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v13, v12, v0, v9}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 120
    invoke-static {v10, v11, v13, v15}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    return v12

    .line 127
    :cond_4
    iget-object v0, v13, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 129
    iget-object v0, v13, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    invoke-static {v0, v9, v14}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const-string v1, "working"

    const-string v3, "/data/data/com.termux/files"

    const-string v5, "rwx"

    move-object/from16 v0, p0

    move-object v12, v8

    move/from16 v8, v16

    move/from16 v9, v17

    .line 136
    invoke-static/range {v0 .. v9}, Lcom/termux/shared/file/FileUtils;->validateDirectoryFileExistenceAndPermissions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0e007f

    new-array v2, v14, [Ljava/lang/Object;

    iget-object v3, v13, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    aput-object v3, v2, v15

    invoke-virtual {v10, v0, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v13, v1, v0, v2}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 142
    invoke-static {v10, v11, v13, v15}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    return v1

    .line 149
    :cond_5
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "com.termux.file"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    invoke-static {v1}, Lcom/termux/shared/file/FileUtils;->getExpandedTermuxPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v13, Lcom/termux/shared/models/ExecutionCommand;->executableUri:Landroid/net/Uri;

    .line 151
    invoke-virtual {v13}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->executableUri:Landroid/net/Uri;

    const-string v2, "com.termux.service_execute"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    const-class v1, Lcom/termux/app/TermuxService;

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    const-string v2, "com.termux.execute.arguments"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    const-string v2, "com.termux.execute.stdin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    const-string v2, "com.termux.execute.cwd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    :cond_6
    iget-boolean v1, v13, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    const-string v2, "com.termux.execute.background"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->sessionAction:Ljava/lang/String;

    const-string v2, "com.termux.execute.session_action"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    const-string v2, "com.termux.execute.command_label"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->commandDescription:Ljava/lang/String;

    const-string v2, "com.termux.execute.command_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->commandHelp:Ljava/lang/String;

    const-string v2, "com.termux.execute.command_help"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    const-string v2, "com.termux.execute.plugin_api_help"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, v13, Lcom/termux/shared/models/ExecutionCommand;->pluginPendingIntent:Landroid/app/PendingIntent;

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_7

    .line 169
    invoke-virtual {v10, v0}, Landroid/app/Service;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 171
    :cond_7
    invoke-virtual {v10, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 174
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/termux/app/RunCommandService;->runStopForeground()V

    const/4 v0, 0x2

    return v0

    :cond_8
    :goto_1
    move-object v2, v9

    move v0, v12

    const v3, 0x7f0e0066

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v1, v4, v15

    .line 103
    invoke-virtual {v10, v3, v4}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v13, v0, v1, v2}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    .line 105
    invoke-static {v10, v11, v13, v15}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V

    return v0
.end method
