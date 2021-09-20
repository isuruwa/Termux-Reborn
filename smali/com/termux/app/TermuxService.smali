.class public final Lcom/termux/app/TermuxService;
.super Landroid/app/Service;
.source "TermuxService.java"

# interfaces
.implements Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;
.implements Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/TermuxService$LocalBinder;
    }
.end annotation


# static fields
.field private static EXECUTION_ID:I = 0x3e8


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mHandler:Landroid/os/Handler;

.field final mPendingPluginExecutionCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/shared/models/ExecutionCommand;",
            ">;"
        }
    .end annotation
.end field

.field final mTermuxSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/shared/shell/TermuxSession;",
            ">;"
        }
    .end annotation
.end field

.field final mTermuxTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/shared/shell/TermuxTask;",
            ">;"
        }
    .end annotation
.end field

.field mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

.field final mTermuxTerminalSessionClientBase:Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWantsToStop:Z

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    new-instance v0, Lcom/termux/app/TermuxService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxService$LocalBinder;-><init>(Lcom/termux/app/TermuxService;)V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    .line 100
    new-instance v0, Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;

    invoke-direct {v0}, Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;-><init>()V

    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClientBase:Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    return-void
.end method

.method private actionAcquireWakeLock()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WakelockTimeout",
            "BatteryLife"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "TermuxService"

    if-eqz v0, :cond_0

    const-string v0, "Ignoring acquiring WakeLocks since they are already held"

    .line 282
    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Acquiring WakeLocks"

    .line 286
    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "power"

    .line 288
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Termux"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":service-wakelock"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 290
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 293
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    const/4 v3, 0x3

    .line 294
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 295
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 297
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 300
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 302
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 305
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to call ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 307
    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    const-string v0, "WakeLocks acquired successfully"

    .line 313
    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private actionReleaseWakeLock(Z)V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "TermuxService"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    const-string p1, "Ignoring releasing WakeLocks since none are already held"

    .line 320
    invoke-static {v1, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Releasing WakeLocks"

    .line 324
    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 328
    iput-object v2, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 333
    iput-object v2, p0, Lcom/termux/app/TermuxService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_2
    if-eqz p1, :cond_3

    .line 337
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    :cond_3
    const-string p1, "WakeLocks released successfully"

    .line 339
    invoke-static {v1, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private actionServiceExecute(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "TermuxService"

    const-string v0, "Ignoring null intent to actionServiceExecute"

    .line 346
    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 350
    :cond_0
    new-instance v0, Lcom/termux/shared/models/ExecutionCommand;

    invoke-static {}, Lcom/termux/app/TermuxService;->getNextExecutionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/termux/shared/models/ExecutionCommand;-><init>(Ljava/lang/Integer;)V

    .line 352
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->executableUri:Landroid/net/Uri;

    const-string v1, "com.termux.execute.background"

    const/4 v2, 0x0

    .line 353
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    .line 355
    iget-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->executableUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    const-string v1, "com.termux.execute.arguments"

    .line 357
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->arguments:[Ljava/lang/String;

    .line 358
    iget-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    if-eqz v1, :cond_1

    const-string v1, "com.termux.execute.stdin"

    .line 359
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->stdin:Ljava/lang/String;

    :cond_1
    const-string v1, "com.termux.execute.cwd"

    .line 362
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->workingDirectory:Ljava/lang/String;

    const-string v1, "com.termux.app.failsafe_session"

    .line 363
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->isFailsafe:Z

    const-string v1, "com.termux.execute.session_action"

    .line 364
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->sessionAction:Ljava/lang/String;

    const-string v1, "com.termux.execute.command_label"

    .line 365
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Execution Intent Command"

    invoke-static {v1, v2}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    const-string v1, "com.termux.execute.command_description"

    .line 366
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->commandDescription:Ljava/lang/String;

    const-string v1, "com.termux.execute.command_help"

    .line 367
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->commandHelp:Ljava/lang/String;

    const-string v1, "com.termux.execute.plugin_api_help"

    .line 368
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/termux/shared/models/ExecutionCommand;->pluginAPIHelp:Ljava/lang/String;

    const/4 v1, 0x1

    .line 369
    iput-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    const-string v1, "pendingIntent"

    .line 370
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, v0, Lcom/termux/shared/models/ExecutionCommand;->pluginPendingIntent:Landroid/app/PendingIntent;

    .line 373
    iget-object p1, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iget-boolean p1, v0, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    if-eqz p1, :cond_2

    .line 376
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxService;->executeTermuxTaskCommand(Lcom/termux/shared/models/ExecutionCommand;)V

    goto :goto_0

    .line 378
    :cond_2
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxService;->executeTermuxSessionCommand(Lcom/termux/shared/models/ExecutionCommand;)V

    :goto_0
    return-void
.end method

.method private actionStopService()V
    .locals 1

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    .line 207
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->killAllTermuxExecutionCommands()V

    .line 208
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->requestStopService()V

    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 13

    .line 662
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 665
    invoke-static {p0}, Lcom/termux/app/TermuxActivity;->newInstance(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 666
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 670
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v1

    .line 671
    iget-object v3, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " session"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    const-string v6, "s"

    const/4 v11, 0x1

    if-ne v1, v11, :cond_0

    move-object v1, v5

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-lez v3, :cond_2

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " task"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v11, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 677
    :cond_2
    iget-object v3, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_3

    move v12, v11

    goto :goto_2

    :cond_3
    move v12, v2

    :goto_2
    if-eqz v12, :cond_4

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (wake lock held)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v7, v1

    if-eqz v12, :cond_5

    move v5, v11

    goto :goto_3

    :cond_5
    const/4 v1, -0x1

    move v5, v1

    :goto_3
    const v1, 0x7f0e002f

    .line 690
    invoke-virtual {p0, v1}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v4, "termux_notification_channel"

    move-object v3, p0

    .line 688
    invoke-static/range {v3 .. v10}, Lcom/termux/shared/notification/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 695
    :cond_6
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const v3, 0x7f060066

    .line 698
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const v3, -0x9f8275

    .line 701
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 704
    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 708
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/termux/app/TermuxService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.termux.service_stop"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const v4, 0x108001d

    const v5, 0x7f0e0081

    .line 709
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    if-eqz v12, :cond_7

    const-string v3, "com.termux.service_wake_unlock"

    goto :goto_4

    :cond_7
    const-string v3, "com.termux.service_wake_lock"

    .line 714
    :goto_4
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/termux/app/TermuxService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v12, :cond_8

    const v4, 0x7f0e0083

    goto :goto_5

    :cond_8
    const v4, 0x7f0e0082

    .line 715
    :goto_5
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v12, :cond_9

    const v4, 0x108001f

    goto :goto_6

    :cond_9
    const v4, 0x108002f

    .line 717
    :goto_6
    invoke-static {p0, v2, v3, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 720
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private executeTermuxSessionCommand(Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing foreground \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" TermuxSession command"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 467
    iget-object v1, p1, Lcom/termux/shared/models/ExecutionCommand;->executable:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 468
    invoke-static {v1}, Lcom/termux/shared/shell/ShellUtils;->getExecutableBasename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 471
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/termux/app/TermuxService;->createTermuxSession(Lcom/termux/shared/models/ExecutionCommand;Ljava/lang/String;)Lcom/termux/shared/shell/TermuxSession;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 474
    :cond_2
    iget-object p1, p1, Lcom/termux/shared/models/ExecutionCommand;->sessionAction:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result p1

    .line 476
    invoke-virtual {v0}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 474
    invoke-direct {p0, p1, v0}, Lcom/termux/app/TermuxService;->handleSessionAction(ILcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method private executeTermuxTaskCommand(Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executing background \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" TermuxTask command"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxService;->createTermuxTask(Lcom/termux/shared/models/ExecutionCommand;)Lcom/termux/shared/shell/TermuxTask;

    return-void
.end method

.method public static declared-synchronized getNextExecutionId()I
    .locals 3

    const-class v0, Lcom/termux/app/TermuxService;

    monitor-enter v0

    .line 796
    :try_start_0
    sget v1, Lcom/termux/app/TermuxService;->EXECUTION_ID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/termux/app/TermuxService;->EXECUTION_ID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleSessionAction(ILcom/termux/terminal/TerminalSession;)V
    .locals 3

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing sessionAction \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" for session \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sessionAction: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\". Force using default sessionAction."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/termux/app/TermuxService;->handleSessionAction(ILcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result p1

    if-ne p1, v0, :cond_6

    .line 590
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 584
    :cond_1
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    .line 585
    iget-object p1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz p1, :cond_6

    .line 586
    invoke-virtual {p1, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 580
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    .line 581
    :cond_3
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->startTermuxActivity()V

    goto :goto_0

    .line 573
    :cond_4
    invoke-direct {p0, p2}, Lcom/termux/app/TermuxService;->setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V

    .line 574
    iget-object p1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz p1, :cond_5

    .line 575
    invoke-virtual {p1, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 576
    :cond_5
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->startTermuxActivity()V

    :cond_6
    :goto_0
    return-void
.end method

.method private declared-synchronized killAllTermuxExecutionCommands()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "TermuxService"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing TermuxSessions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", TermuxTasks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", PendingPluginExecutionCommands="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    .line 252
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 253
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v3}, Lcom/termux/shared/shell/TermuxSession;->getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;

    move-result-object v3

    .line 254
    iget-boolean v5, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    if-nez v5, :cond_1

    iget-boolean v5, v3, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Lcom/termux/shared/models/ExecutionCommand;->pluginPendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    .line 255
    :cond_1
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v3, p0, v4}, Lcom/termux/shared/shell/TermuxSession;->killIfExecuting(Landroid/content/Context;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v1

    .line 259
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 260
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/shared/shell/TermuxTask;

    invoke-virtual {v3}, Lcom/termux/shared/shell/TermuxTask;->getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;

    move-result-object v3

    .line 261
    iget-boolean v5, v3, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v5, :cond_3

    iget-object v3, v3, Lcom/termux/shared/models/ExecutionCommand;->pluginPendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3

    .line 262
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/shared/shell/TermuxTask;

    invoke-virtual {v3, p0, v4}, Lcom/termux/shared/shell/TermuxTask;->killIfExecuting(Landroid/content/Context;Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 265
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 266
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 267
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/shared/models/ExecutionCommand;

    .line 268
    invoke-virtual {v2}, Lcom/termux/shared/models/ExecutionCommand;->shouldNotProcessResults()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/termux/shared/models/ExecutionCommand;->pluginPendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    const v4, 0x7f0e004c

    .line 269
    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/termux/shared/models/ExecutionCommand;->setStateFailed(ILjava/lang/String;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "TermuxService"

    .line 270
    invoke-static {p0, v3, v2}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 274
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private synthetic lambda$onTermuxTaskExited$0(Lcom/termux/shared/shell/TermuxTask;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 439
    invoke-virtual {p1}, Lcom/termux/shared/shell/TermuxTask;->getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;

    move-result-object v0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The onTermuxTaskExited() callback called for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" TermuxTask command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TermuxService"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 444
    iget-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v1, :cond_0

    .line 445
    invoke-static {p0, v2, v0}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 450
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    return-void
.end method

.method private requestStopService()V
    .locals 2

    const-string v0, "TermuxService"

    const-string v1, "Requesting to stop service"

    .line 199
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStopForeground()V

    .line 201
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private runStartForeground()V
    .locals 2

    .line 188
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->setupNotificationChannel()V

    .line 189
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->buildNotification()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x539

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private runStopForeground()V
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method private setCurrentStoredTerminalSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 747
    :cond_0
    new-instance v0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v0, p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 748
    iget-object p1, p1, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setCurrentSession(Ljava/lang/String;)V

    return-void
.end method

.method private setupNotificationChannel()V
    .locals 3

    .line 724
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "termux_notification_channel"

    const-string v2, "Termux App"

    .line 726
    invoke-static {p0, v1, v2, v0}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private startTermuxActivity()V
    .locals 1

    .line 604
    invoke-static {p0}, Lcom/termux/shared/packages/PermissionUtils;->validateDisplayOverOtherAppsPermissionForPostAndroid10(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-static {p0}, Lcom/termux/app/TermuxActivity;->startTermuxActivity(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized updateNotification()V
    .locals 3

    monitor-enter p0

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->requestStopService()V

    goto :goto_0

    :cond_0
    const-string v0, "notification"

    .line 736
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x539

    invoke-direct {p0}, Lcom/termux/app/TermuxService;->buildNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized createTermuxSession(Lcom/termux/shared/models/ExecutionCommand;Ljava/lang/String;)Lcom/termux/shared/shell/TermuxSession;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 491
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "TermuxService"

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" TermuxSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-boolean v1, p1, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    if-eqz v1, :cond_1

    const-string p1, "TermuxService"

    const-string p2, "Ignoring a background execution command passed to createTermuxSession()"

    .line 496
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-object v0

    .line 500
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    const-string v1, "TermuxService"

    .line 501
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_2
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->getTermuxTerminalSessionClient()Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;

    move-result-object v3

    iget-boolean v6, p1, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Lcom/termux/shared/shell/TermuxSession;->execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/terminal/TerminalSessionClient;Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;Ljava/lang/String;Z)Lcom/termux/shared/shell/TermuxSession;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, "TermuxService"

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute new TermuxSession command for:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    monitor-exit p0

    return-object v0

    .line 512
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-boolean v0, p1, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v0, :cond_4

    .line 517
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 521
    :cond_4
    iget-object p1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz p1, :cond_5

    .line 522
    invoke-virtual {p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->termuxSessionListNotifyUpdated()V

    .line 524
    :cond_5
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    .line 525
    invoke-static {p0}, Lcom/termux/app/TermuxActivity;->updateTermuxActivityStyling(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createTermuxSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/termux/shared/shell/TermuxSession;
    .locals 9

    .line 485
    new-instance v8, Lcom/termux/shared/models/ExecutionCommand;

    invoke-static {}, Lcom/termux/app/TermuxService;->getNextExecutionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/termux/shared/models/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v8, p6}, Lcom/termux/app/TermuxService;->createTermuxSession(Lcom/termux/shared/models/ExecutionCommand;Ljava/lang/String;)Lcom/termux/shared/shell/TermuxSession;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized createTermuxTask(Lcom/termux/shared/models/ExecutionCommand;)Lcom/termux/shared/shell/TermuxTask;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 404
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "TermuxService"

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" TermuxTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-boolean v1, p1, Lcom/termux/shared/models/ExecutionCommand;->inBackground:Z

    if-nez v1, :cond_1

    const-string p1, "TermuxService"

    const-string v1, "Ignoring a foreground execution command passed to createTermuxTask()"

    .line 409
    invoke-static {p1, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    monitor-exit p0

    return-object v0

    .line 413
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    const-string v1, "TermuxService"

    .line 414
    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    .line 416
    invoke-static {p0, p1, p0, v1}, Lcom/termux/shared/shell/TermuxTask;->execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;Z)Lcom/termux/shared/shell/TermuxTask;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "TermuxService"

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute new TermuxTask command for:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    monitor-exit p0

    return-object v0

    .line 422
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iget-boolean v0, p1, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v0, :cond_4

    .line 427
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mPendingPluginExecutionCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 429
    :cond_4
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 776
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 778
    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 780
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLastTermuxSession()Lcom/termux/shared/shell/TermuxSession;
    .locals 2

    monitor-enter p0

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/shell/TermuxSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTerminalSessionForHandle(Ljava/lang/String;)Lcom/termux/terminal/TerminalSession;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 785
    :try_start_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 786
    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v2}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    .line 787
    iget-object v3, v2, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 788
    monitor-exit p0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 790
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTermuxSession(I)Lcom/termux/shared/shell/TermuxSession;
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/shared/shell/TermuxSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 768
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized getTermuxSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/termux/shared/shell/TermuxSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTermuxSessionsSize()I
    .locals 1

    monitor-enter p0

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTermuxTerminalSessionClient()Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;
    .locals 1

    monitor-enter p0

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 626
    monitor-exit p0

    return-object v0

    .line 628
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClientBase:Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTermuxSessionsEmpty()Z
    .locals 1

    monitor-enter p0

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$onTermuxTaskExited$0$TermuxService(Lcom/termux/shared/shell/TermuxTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxService;->lambda$onTermuxTaskExited$0(Lcom/termux/shared/shell/TermuxTask;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "TermuxService"

    const-string v0, "onBind"

    .line 170
    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/termux/app/TermuxService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "TermuxService"

    const-string v1, "onCreate"

    .line 113
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStartForeground()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TermuxService"

    const-string v1, "onDestroy"

    .line 158
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 160
    invoke-static {p0, v0}, Lcom/termux/shared/shell/ShellUtils;->clearTermuxTMPDIR(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxService;->actionReleaseWakeLock(Z)V

    .line 163
    iget-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->killAllTermuxExecutionCommands()V

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStopForeground()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    const-string p2, "TermuxService"

    const-string p3, "onStartCommand"

    .line 120
    invoke-static {p2, p3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->runStartForeground()V

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    if-eqz p3, :cond_4

    .line 128
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.termux.service_wake_lock"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "com.termux.service_execute"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string v2, "com.termux.service_wake_unlock"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v2, "com.termux.service_stop"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid action: \""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const-string p1, "ACTION_WAKE_LOCK intent received"

    .line 134
    invoke-static {p2, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->actionAcquireWakeLock()V

    goto :goto_1

    :pswitch_1
    const-string p3, "ACTION_SERVICE_EXECUTE intent received"

    .line 142
    invoke-static {p2, p3}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxService;->actionServiceExecute(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    const-string p1, "ACTION_WAKE_UNLOCK intent received"

    .line 138
    invoke-static {p2, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v3}, Lcom/termux/app/TermuxService;->actionReleaseWakeLock(Z)V

    goto :goto_1

    :pswitch_3
    const-string p1, "ACTION_STOP_SERVICE intent received"

    .line 130
    invoke-static {p2, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->actionStopService()V

    :cond_4
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x66decd22 -> :sswitch_3
        -0x67ff01d -> :sswitch_2
        0x98f19 -> :sswitch_1
        0x7b0c918a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTermuxSessionExited(Lcom/termux/shared/shell/TermuxSession;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 544
    invoke-virtual {p1}, Lcom/termux/shared/shell/TermuxSession;->getExecutionCommand()Lcom/termux/shared/models/ExecutionCommand;

    move-result-object v0

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The onTermuxSessionExited() callback called for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" TermuxSession command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TermuxService"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 549
    iget-boolean v1, v0, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v1, :cond_0

    .line 550
    invoke-static {p0, v2, v0}, Lcom/termux/app/utils/PluginUtils;->processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 556
    iget-object p1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz p1, :cond_1

    .line 557
    invoke-virtual {p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->termuxSessionListNotifyUpdated()V

    .line 560
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxService;->updateNotification()V

    return-void
.end method

.method public onTermuxTaskExited(Lcom/termux/shared/shell/TermuxTask;)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxService$vDQ-gwKBjN88WjCbmCD4HAFaXO4;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/-$$Lambda$TermuxService$vDQ-gwKBjN88WjCbmCD4HAFaXO4;-><init>(Lcom/termux/app/TermuxService;Lcom/termux/shared/shell/TermuxTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string p1, "TermuxService"

    const-string v0, "onUnbind"

    .line 176
    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/termux/app/TermuxService;->unsetTermuxTerminalSessionClient()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized removeTermuxSession(Lcom/termux/terminal/TerminalSession;)I
    .locals 1

    monitor-enter p0

    .line 532
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/termux/app/TermuxService;->getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v0}, Lcom/termux/shared/shell/TermuxSession;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTermuxTerminalSessionClient(Lcom/termux/app/terminal/TermuxTerminalSessionClient;)V
    .locals 2

    monitor-enter p0

    .line 640
    :try_start_0
    iput-object p1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 p1, 0x0

    .line 642
    :goto_0
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v0}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalSession;->updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 644
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unsetTermuxTerminalSessionClient()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 651
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/termux/app/TermuxService;->mTermuxSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClientBase:Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalSession;->updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 654
    iput-object v0, p0, Lcom/termux/app/TermuxService;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wantsToStop()Z
    .locals 1

    .line 800
    iget-boolean v0, p0, Lcom/termux/app/TermuxService;->mWantsToStop:Z

    return v0
.end method
