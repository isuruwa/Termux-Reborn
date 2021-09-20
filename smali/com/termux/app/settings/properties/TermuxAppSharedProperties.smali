.class public Lcom/termux/app/settings/properties/TermuxAppSharedProperties;
.super Lcom/termux/shared/settings/properties/TermuxSharedProperties;
.source "TermuxAppSharedProperties.java"

# interfaces
.implements Lcom/termux/shared/settings/properties/SharedPropertiesParser;


# instance fields
.field private mExtraKeysInfo:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;

.field private mSessionShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/app/terminal/io/KeyboardShortcut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mSessionShortcuts:Ljava/util/List;

    return-void
.end method

.method private setExtraKeys()V
    .locals 7

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mExtraKeysInfo:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "extra-keys"

    .line 52
    invoke-virtual {p0, v2, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "extra-keys-style"

    .line 53
    invoke-virtual {p0, v3, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 54
    new-instance v4, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;

    invoke-direct {v4, v2, v3}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mExtraKeysInfo:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 56
    iget-object v3, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load and set the \"extra-keys\" property from the properties file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v3, "TermuxAppSharedProperties"

    .line 57
    invoke-static {v3, v5, v2}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    :try_start_1
    new-instance v4, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;

    const-string v5, "[[ESC, TAB, CTRL, ALT, {key: \'-\', popup: \'|\'}, DOWN, UP]]"

    const-string v6, "default"

    invoke-direct {v4, v5, v6}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mExtraKeysInfo:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 62
    :catch_1
    iget-object v4, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mContext:Landroid/content/Context;

    const-string v5, "Can\'t create default extra keys"

    invoke-static {v4, v5, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v1, "Could create default extra keys: "

    .line 63
    invoke-static {v3, v1, v2}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    iput-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mExtraKeysInfo:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;

    :goto_0
    return-void
.end method

.method private setSessionShortcuts()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mSessionShortcuts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mSessionShortcuts:Ljava/util/List;

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    :goto_0
    sget-object v0, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->MAP_SESSION_SHORTCUTS:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 87
    iget-object v3, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mSessionShortcuts:Ljava/util/List;

    new-instance v4, Lcom/termux/app/terminal/io/KeyboardShortcut;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v4, v2, v1}, Lcom/termux/app/terminal/io/KeyboardShortcut;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getExtraKeysInfo()Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mExtraKeysInfo:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;

    return-object v0
.end method

.method public getSessionShortcuts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/termux/app/terminal/io/KeyboardShortcut;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mSessionShortcuts:Ljava/util/List;

    return-object v0
.end method

.method public loadTermuxPropertiesFromDisk()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->loadTermuxPropertiesFromDisk()V

    .line 38
    invoke-direct {p0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->setExtraKeys()V

    .line 39
    invoke-direct {p0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->setSessionShortcuts()V

    return-void
.end method
