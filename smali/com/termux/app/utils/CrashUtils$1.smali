.class final Lcom/termux/app/utils/CrashUtils$1;
.super Ljava/lang/Thread;
.source "CrashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/utils/CrashUtils;->notifyCrash(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$logTagParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/termux/app/utils/CrashUtils$1;->val$logTagParam:Ljava/lang/String;

    iput-object p2, p0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 58
    iget-object v1, v0, Lcom/termux/app/utils/CrashUtils$1;->val$logTagParam:Ljava/lang/String;

    const-string v2, "CrashUtils"

    invoke-static {v1, v2}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const-string v1, "/data/data/com.termux/files/home/crash_log.md"

    const/4 v10, 0x0

    .line 60
    invoke-static {v1, v10}, Lcom/termux/shared/file/FileUtils;->regularFileExists(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    iget-object v11, v0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    const/16 v16, 0x0

    const-string v12, "crash log"

    const-string v13, "/data/data/com.termux/files/home/crash_log.md"

    move-object v15, v2

    invoke-static/range {v11 .. v16}, Lcom/termux/shared/file/FileUtils;->readStringFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 69
    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_1
    iget-object v5, v0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    const/4 v6, 0x1

    const-string v7, "crash log"

    const-string v8, "/data/data/com.termux/files/home/crash_log_backup.md"

    invoke-static {v5, v7, v1, v8, v6}, Lcom/termux/shared/file/FileUtils;->moveRegularFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 76
    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 81
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v12, "Termux Crash Report"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The crash log file at \"/data/data/com.termux/files/home/crash_log.md\" found. Sending \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" notification."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, v0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    new-instance v11, Lcom/termux/app/models/ReportInfo;

    sget-object v3, Lcom/termux/app/models/UserAction;->CRASH_REPORT:Lcom/termux/app/models/UserAction;

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/termux/shared/termux/TermuxUtils;->getReportIssueMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object v2, v11

    move-object v5, v12

    invoke-direct/range {v2 .. v9}, Lcom/termux/app/models/ReportInfo;-><init>(Lcom/termux/app/models/UserAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v11}, Lcom/termux/app/activities/ReportActivity;->newInstance(Landroid/content/Context;Lcom/termux/app/models/ReportInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 91
    iget-object v2, v0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v10, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 94
    iget-object v1, v0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/termux/app/utils/CrashUtils;->setupCrashReportsNotificationChannel(Landroid/content/Context;)V

    .line 97
    iget-object v11, v0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3

    invoke-static/range {v11 .. v16}, Lcom/termux/app/utils/CrashUtils;->getCrashReportsNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 101
    :cond_4
    iget-object v2, v0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/termux/shared/notification/NotificationUtils;->getNextNotificationId(Landroid/content/Context;)I

    move-result v2

    .line 102
    iget-object v3, v0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/termux/shared/notification/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 104
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_5
    :goto_0
    return-void
.end method
