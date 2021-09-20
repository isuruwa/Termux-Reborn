.class public Lcom/termux/shared/packages/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method public static checkDisplayOverOtherAppsPermission(Landroid/content/Context;)Z
    .locals 1

    .line 59
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "PermissionUtils"

    if-nez p0, :cond_0

    const-string p0, "Termux App does not have Display over other apps (SYSTEM_ALERT_WINDOW) permission"

    .line 61
    invoke-static {v0, p0}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "Termux App already has Display over other apps (SYSTEM_ALERT_WINDOW) permission"

    .line 64
    invoke-static {v0, p0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static validateDisplayOverOtherAppsPermissionForPostAndroid10(Landroid/content/Context;)Z
    .locals 3

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    return v1

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/packages/PermissionUtils;->checkDisplayOverOtherAppsPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v0, p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getPluginErrorNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget v0, Lcom/termux/shared/R$string;->error_display_over_other_apps_permission_not_granted:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method
