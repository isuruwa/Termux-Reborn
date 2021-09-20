.class public Lcom/termux/app/fragments/settings/DebuggingPreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DebuggingPreferencesFragment.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;->getInstance(Landroid/content/Context;)Lcom/termux/app/fragments/settings/DebuggingPreferencesDataStore;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    const/high16 p1, 0x7f110000

    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "logging"

    .line 28
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    const-string p2, "log_level"

    .line 31
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/termux/app/fragments/settings/DebuggingPreferencesFragment;->setLogLevelListPreferenceData(Landroidx/preference/ListPreference;Landroid/content/Context;)Landroidx/preference/ListPreference;

    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method protected setLogLevelListPreferenceData(Landroidx/preference/ListPreference;Landroid/content/Context;)Landroidx/preference/ListPreference;
    .locals 2

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Landroidx/preference/ListPreference;

    invoke-direct {p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 40
    :cond_0
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevelsArray()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    .line 41
    invoke-static {p2, v0, v1}, Lcom/termux/shared/logger/Logger;->getLogLevelLabelsArray(Landroid/content/Context;[Ljava/lang/CharSequence;Z)[Ljava/lang/CharSequence;

    move-result-object p2

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 46
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevel()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/termux/shared/logger/Logger;->getLogLevel()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return-object p1
.end method
