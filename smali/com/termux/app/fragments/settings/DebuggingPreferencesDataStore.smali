.class Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "DebuggingPreferencesFragment.java"


# static fields
.field private static mInstance:Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v0, p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;
    .locals 2

    const-class v0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;

    .line 70
    :cond_0
    sget-object p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "crash_report_notifications_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "terminal_view_key_logging_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string p2, "plugin_error_notifications_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    .line 132
    :pswitch_0
    iget-object p1, p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getCrashReportNotificationsEnabled()Z

    move-result p1

    return p1

    .line 128
    :pswitch_1
    iget-object p1, p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getTerminalViewKeyLoggingEnabled()Z

    move-result p1

    return p1

    .line 130
    :pswitch_2
    iget-object p1, p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getPluginErrorNotificationsEnabled()Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x665a1319 -> :sswitch_2
        -0x1582f3b6 -> :sswitch_1
        0x348893b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "log_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p2

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getLogLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "crash_report_notifications_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "terminal_view_key_logging_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "plugin_error_notifications_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 117
    :pswitch_0
    iget-object p1, p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {p1, p2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setCrashReportNotificationsEnabled(Z)V

    goto :goto_1

    .line 111
    :pswitch_1
    iget-object p1, p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {p1, p2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setTerminalViewKeyLoggingEnabled(Z)V

    goto :goto_1

    .line 114
    :pswitch_2
    iget-object p1, p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {p1, p2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setPluginErrorNotificationsEnabled(Z)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x665a1319 -> :sswitch_2
        -0x1582f3b6 -> :sswitch_1
        0x348893b7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "log_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 95
    iget-object p1, p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    iget-object v0, p0, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setLogLevel(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void
.end method
