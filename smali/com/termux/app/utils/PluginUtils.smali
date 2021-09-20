.class public Lcom/termux/app/utils/PluginUtils;
.super Ljava/lang/Object;
.source "PluginUtils.java"


# direct methods
.method public static checkIfRunCommandServiceAllowExternalAppsPolicyIsViolated(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 323
    invoke-static {}, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->getTermuxPropertiesFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "allow-external-apps"

    invoke-static {p0, v0, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->isPropertyValueTrue(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0e0063

    .line 324
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getPluginCommandErrorsNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .locals 8

    const-string v1, "termux_plugin_command_errors_notification_channel"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 281
    invoke-static/range {v0 .. v7}, Lcom/termux/shared/notification/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 288
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const p2, 0x7f060063

    .line 291
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const p2, -0x9f8275

    .line 294
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 297
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public static processPluginExecutionCommandError(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;Z)V
    .locals 9

    if-eqz p0, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "PluginUtils"

    .line 114
    invoke-static {p1, v0}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 116
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Ignoring call to processPluginExecutionCommandError() since the execution command is not in ExecutionState.FAILED"

    .line 117
    invoke-static {p1, p0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/termux/shared/models/ExecutionCommand;->errCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/termux/shared/models/ExecutionCommand;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/termux/shared/models/ExecutionCommand;->throwableList:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/termux/shared/logger/Logger;->logStackTracesWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 127
    iget-boolean v0, p2, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/termux/shared/models/ExecutionCommand;->pluginPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p2, Lcom/termux/shared/models/ExecutionCommand;->errmsg:Ljava/lang/String;

    .line 131
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v0, p2, Lcom/termux/shared/models/ExecutionCommand;->errmsg:Ljava/lang/String;

    iget-object v1, p2, Lcom/termux/shared/models/ExecutionCommand;->throwableList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTracesString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v7, v0

    .line 135
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/termux/shared/models/ExecutionCommand;->stdout:Ljava/lang/String;

    iget-object v4, p2, Lcom/termux/shared/models/ExecutionCommand;->stderr:Ljava/lang/String;

    iget-object v5, p2, Lcom/termux/shared/models/ExecutionCommand;->exitCode:Ljava/lang/Integer;

    iget-object v6, p2, Lcom/termux/shared/models/ExecutionCommand;->errCode:Ljava/lang/Integer;

    iget-object v8, p2, Lcom/termux/shared/models/ExecutionCommand;->pluginPendingIntent:Landroid/app/PendingIntent;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/termux/app/utils/PluginUtils;->sendPluginExecutionCommandResultPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    if-nez p3, :cond_3

    return-void

    .line 142
    :cond_3
    new-instance v0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v0, p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getPluginErrorNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p3, :cond_4

    return-void

    .line 148
    :cond_4
    iget-object p3, p2, Lcom/termux/shared/models/ExecutionCommand;->errmsg:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, p3, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p3, "Termux Plugin Execution Command Error"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-static {p2}, Lcom/termux/shared/models/ExecutionCommand;->getExecutionCommandMarkdownString(Lcom/termux/shared/models/ExecutionCommand;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    new-instance v8, Lcom/termux/app/models/ReportInfo;

    sget-object v2, Lcom/termux/app/models/UserAction;->PLUGIN_EXECUTION_COMMAND:Lcom/termux/app/models/UserAction;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, v2

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/termux/app/models/ReportInfo;-><init>(Lcom/termux/app/models/UserAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0, v8}, Lcom/termux/app/activities/ReportActivity;->newInstance(Landroid/content/Context;Lcom/termux/app/models/ReportInfo;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 161
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 164
    invoke-static {p0}, Lcom/termux/app/utils/PluginUtils;->setupPluginCommandErrorsNotificationChannel(Landroid/content/Context;)V

    .line 167
    iget-object p1, p2, Lcom/termux/shared/models/ExecutionCommand;->errmsg:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkdownText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    const/4 v6, 0x3

    move-object v1, p0

    move-object v2, p3

    move-object v3, v4

    .line 171
    invoke-static/range {v1 .. v6}, Lcom/termux/app/utils/PluginUtils;->getPluginCommandErrorsNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 175
    :cond_5
    invoke-static {p0}, Lcom/termux/shared/notification/NotificationUtils;->getNextNotificationId(Landroid/content/Context;)I

    move-result p2

    .line 176
    invoke-static {p0}, Lcom/termux/shared/notification/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 178
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static processPluginExecutionCommandResult(Landroid/content/Context;Ljava/lang/String;Lcom/termux/shared/models/ExecutionCommand;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "PluginUtils"

    .line 56
    invoke-static {p1, v0}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 58
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->hasExecuted()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "Ignoring call to processPluginExecutionCommandResult() since the execution command state is not higher than the ExecutionState.EXECUTED"

    .line 59
    invoke-static {v2, p0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_1
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 69
    iget-boolean v0, p2, Lcom/termux/shared/models/ExecutionCommand;->isPluginExecutionCommand:Z

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/termux/shared/models/ExecutionCommand;->pluginPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 70
    iget-object p1, p2, Lcom/termux/shared/models/ExecutionCommand;->errmsg:Ljava/lang/String;

    .line 73
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object p1, p2, Lcom/termux/shared/models/ExecutionCommand;->errmsg:Ljava/lang/String;

    iget-object v0, p2, Lcom/termux/shared/models/ExecutionCommand;->throwableList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTracesString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v8, p1

    .line 78
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->getCommandIdAndLabelLogString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/termux/shared/models/ExecutionCommand;->stdout:Ljava/lang/String;

    iget-object v5, p2, Lcom/termux/shared/models/ExecutionCommand;->stderr:Ljava/lang/String;

    iget-object v6, p2, Lcom/termux/shared/models/ExecutionCommand;->exitCode:Ljava/lang/Integer;

    iget-object v7, p2, Lcom/termux/shared/models/ExecutionCommand;->errCode:Ljava/lang/Integer;

    iget-object v9, p2, Lcom/termux/shared/models/ExecutionCommand;->pluginPendingIntent:Landroid/app/PendingIntent;

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/termux/app/utils/PluginUtils;->sendPluginExecutionCommandResultPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result p1

    .line 81
    :cond_3
    invoke-virtual {p2}, Lcom/termux/shared/models/ExecutionCommand;->isStateFailed()Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    .line 82
    sget-object p0, Lcom/termux/shared/models/ExecutionCommand$ExecutionState;->SUCCESS:Lcom/termux/shared/models/ExecutionCommand$ExecutionState;

    invoke-virtual {p2, p0}, Lcom/termux/shared/models/ExecutionCommand;->setState(Lcom/termux/shared/models/ExecutionCommand$ExecutionState;)Z

    :cond_4
    return-void
.end method

.method public static sendPluginExecutionCommandResultPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    const/4 v6, 0x0

    if-eqz v0, :cond_d

    if-nez v5, :cond_0

    goto/16 :goto_a

    :cond_0
    const-string v7, "PluginUtils"

    move-object/from16 v8, p1

    .line 201
    invoke-static {v8, v7}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending execution result for Execution Command \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\" to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    :goto_0
    if-nez v3, :cond_2

    const/4 v10, 0x0

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    :goto_1
    const v11, 0x19000

    if-eqz v3, :cond_6

    .line 212
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_5

    .line 214
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_2

    :cond_4
    const v11, 0xc800

    .line 217
    invoke-static {v2, v11, v6, v6, v6}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v12

    .line 218
    invoke-static {v3, v11, v6, v6, v6}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 215
    :cond_5
    :goto_2
    invoke-static {v3, v11, v6, v6, v6}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    goto :goto_4

    .line 213
    :cond_6
    :goto_3
    invoke-static {v2, v11, v6, v6, v6}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x0

    :goto_4
    const-string v13, " to "

    const-string v14, "Execution Result for Execution Command \""

    if-eqz v12, :cond_7

    .line 221
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v15, v8, :cond_7

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" stdout length truncated from "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object v12, v2

    :goto_5
    if-eqz v11, :cond_8

    .line 226
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_8

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" stderr length truncated from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    move-object v11, v3

    :goto_6
    if-nez v4, :cond_9

    const/4 v8, 0x0

    goto :goto_7

    .line 231
    :cond_9
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :goto_7
    const/16 v2, 0x6400

    const/4 v3, 0x1

    .line 235
    invoke-static {v4, v2, v3, v6, v6}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 236
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_a

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" errmsg length truncated from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    move-object v2, v4

    .line 242
    :goto_8
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "stdout"

    .line 243
    invoke-virtual {v4, v6, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "stdout_original_length"

    .line 244
    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "stderr"

    .line 245
    invoke-virtual {v4, v6, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "stderr_original_length"

    .line 246
    invoke-virtual {v4, v6, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_b

    .line 247
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v8, "exitCode"

    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    if-eqz p6, :cond_c

    .line 248
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v8, "err"

    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_c
    const-string v6, "errmsg"

    .line 249
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v6, "result"

    .line 252
    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v4, -0x1

    .line 255
    :try_start_0
    invoke-virtual {v5, v0, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 258
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Execution Command \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" creator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not want the results anymore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return v3

    :cond_d
    :goto_a
    return v6
.end method

.method public static setupPluginCommandErrorsNotificationChannel(Landroid/content/Context;)V
    .locals 3

    const-string v0, "termux_plugin_command_errors_notification_channel"

    const-string v1, "Termux Plugin Commands Errors"

    const/4 v2, 0x4

    .line 309
    invoke-static {p0, v0, v1, v2}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-void
.end method
