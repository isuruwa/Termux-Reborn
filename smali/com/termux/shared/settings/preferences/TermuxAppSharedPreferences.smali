.class public Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
.super Ljava/lang/Object;
.source "TermuxAppSharedPreferences.java"


# instance fields
.field private DEFAULT_FONTSIZE:I

.field private MAX_FONTSIZE:I

.field private MIN_FONTSIZE:I

.field private final mContext:Landroid/content/Context;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 32
    invoke-direct {p0, p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setFontVariables(Landroid/content/Context;)V

    return-void
.end method

.method private static getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "com.termux_preferences"

    .line 36
    invoke-static {p0, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private setFontVariables(Landroid/content/Context;)V
    .locals 2

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 82
    iput v1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MIN_FONTSIZE:I

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr p1, v1

    .line 85
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 87
    rem-int/lit8 v1, p1, 0x2

    if-ne v1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 89
    :cond_0
    iput p1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->DEFAULT_FONTSIZE:I

    const/16 p1, 0x100

    .line 91
    iput p1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MAX_FONTSIZE:I

    return-void
.end method


# virtual methods
.method public changeFontSize(Z)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getFontSize()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 108
    iget p1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MIN_FONTSIZE:I

    iget v1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MAX_FONTSIZE:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setFontSize(I)V

    return-void
.end method

.method public getCrashReportNotificationsEnabled()Z
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "crash_report_notifications_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCurrentSession()Ljava/lang/String;
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "current_session"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()I
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->DEFAULT_FONTSIZE:I

    const-string v2, "fontsize"

    invoke-static {v0, v2, v1}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getIntStoredAsString(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 96
    iget v1, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MIN_FONTSIZE:I

    iget v2, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->MAX_FONTSIZE:I

    invoke-static {v0, v1, v2}, Lcom/termux/shared/data/DataUtils;->clamp(III)I

    move-result v0

    return v0
.end method

.method public getKeepScreenOn()Z
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screen_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastNotificationId()I
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_notification_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLogLevel()I
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "log_level"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPluginErrorNotificationsEnabled()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "plugin_error_notifications_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowTerminalToolbar()Z
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_extra_keys"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSoftKeyboardEnabled()Z
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "soft_keyboard_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTerminalViewKeyLoggingEnabled()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_view_key_logging_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setCrashReportNotificationsEnabled(Z)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "crash_report_notifications_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setCurrentSession(Ljava/lang/String;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "current_session"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setFontSize(I)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fontsize"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setIntStoredAsString(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "screen_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setLastNotificationId(I)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_notification_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setLogLevel(Landroid/content/Context;I)V
    .locals 2

    .line 130
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->setLogLevel(Landroid/content/Context;I)I

    move-result p1

    .line 131
    iget-object p2, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "log_level"

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setPluginErrorNotificationsEnabled(Z)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "plugin_error_notifications_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setShowTerminalToolbar(Z)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_extra_keys"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setSoftKeyboardEnabled(Z)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "soft_keyboard_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setTerminalViewKeyLoggingEnabled(Z)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_view_key_logging_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public toogleShowTerminalToolbar()Z
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getShowTerminalToolbar()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 51
    invoke-virtual {p0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setShowTerminalToolbar(Z)V

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
