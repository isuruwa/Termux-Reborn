.class public Lcom/termux/app/utils/CrashUtils;
.super Ljava/lang/Object;
.source "CrashUtils.java"


# direct methods
.method public static getCrashReportsNotificationBuilder(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;
    .locals 8

    const-string v1, "termux_crash_reports_notification_channel"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 124
    invoke-static/range {v0 .. v7}, Lcom/termux/shared/notification/NotificationUtils;->geNotificationBuilder(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)Landroid/app/Notification$Builder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const p2, 0x7f060063

    .line 134
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const p2, -0x9f8275

    .line 137
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 140
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public static notifyCrash(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v0, p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getCrashReportNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 55
    :cond_1
    new-instance v0, Lcom/termux/app/utils/CrashUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/termux/app/utils/CrashUtils$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setupCrashReportsNotificationChannel(Landroid/content/Context;)V
    .locals 3

    const-string v0, "termux_crash_reports_notification_channel"

    const-string v1, "Termux Crash Reports"

    const/4 v2, 0x4

    .line 152
    invoke-static {p0, v0, v1, v2}, Lcom/termux/shared/notification/NotificationUtils;->setupNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-void
.end method
