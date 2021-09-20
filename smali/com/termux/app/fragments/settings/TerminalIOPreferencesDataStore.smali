.class Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;
.super Landroidx/preference/PreferenceDataStore;
.source "TerminalIOPreferencesFragment.java"


# static fields
.field private static mInstance:Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;


# instance fields
.field private final mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    .line 36
    new-instance v0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v0, p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;
    .locals 2

    const-class v0, Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;

    .line 43
    :cond_0
    sget-object p0, Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;->mInstance:Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;
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
    .locals 0

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "soft_keyboard_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getSoftKeyboardEnabled()Z

    move-result p1

    return p1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "soft_keyboard_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/termux/app/fragments/settings/TerminalIOPreferencesDataStore;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {p1, p2}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setSoftKeyboardEnabled(Z)V

    :goto_0
    return-void
.end method
