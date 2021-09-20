.class public Lcom/termux/shared/settings/properties/TermuxSharedProperties;
.super Ljava/lang/Object;
.source "TermuxSharedProperties.java"

# interfaces
.implements Lcom/termux/shared/settings/properties/SharedPropertiesParser;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mPropertiesFile:Ljava/io/File;

.field protected final mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->getTermuxPropertiesFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mPropertiesFile:Ljava/io/File;

    .line 27
    new-instance v1, Lcom/termux/shared/settings/properties/SharedProperties;

    sget-object v2, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->TERMUX_PROPERTIES_LIST:Ljava/util/Set;

    invoke-direct {v1, p1, v0, v2, p0}, Lcom/termux/shared/settings/properties/SharedProperties;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/util/Set;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)V

    iput-object v1, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    .line 28
    invoke-virtual {p0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->loadTermuxPropertiesFromDisk()V

    return-void
.end method

.method public static getBellBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 1

    .line 273
    sget-object v0, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->MAP_BELL_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getCodePointForSessionShortcuts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    .line 316
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 317
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 318
    :goto_0
    array-length v4, p1

    const-string v5, "\' is not Ctrl+<something>"

    const-string v6, "Keyboard shortcut \'"

    const-string v7, "TermuxSharedProperties"

    if-ne v4, v3, :cond_7

    const/4 v4, 0x0

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v8, "ctrl"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v3, :cond_3

    goto :goto_3

    .line 323
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 325
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 326
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 330
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    goto :goto_2

    .line 327
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 334
    :cond_6
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 319
    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultWorkingDirectoryInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/data/data/com.termux/files/home"

    if-eqz p0, :cond_2

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getExtraKeysInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[[ESC, TAB, CTRL, ALT, {key: \'-\', popup: \'|\'}, DOWN, UP]]"

    .line 363
    invoke-static {p0, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getExtraKeysStyleInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    .line 373
    invoke-static {p0, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getInternalTermuxPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 183
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "back-key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "default-working-directory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "extra-keys"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "terminal-toolbar-height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "shortcut.previous-session"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "shortcut.next-session"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "shortcut.create-session"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_7
    const-string v1, "bell-character"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_8
    const-string v1, "volume-keys"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_9
    const-string v1, "shortcut.rename-session"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_a
    const-string v1, "use-black-ui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    move v0, v2

    goto :goto_0

    :sswitch_b
    const-string v1, "extra-keys-style"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 216
    sget-object p0, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 217
    invoke-static {p2, v3}, Lcom/termux/shared/settings/properties/SharedProperties;->getBooleanValueForStringValue(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 219
    :cond_d
    sget-object p0, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_INVERETED_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 220
    invoke-static {p2, v2}, Lcom/termux/shared/settings/properties/SharedProperties;->getInvertedBooleanValueForStringValue(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_e
    return-object p2

    .line 186
    :pswitch_0
    invoke-static {p2}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getUseBackKeyAsEscapeKeyInternalPropertyValueFromValue(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 209
    :pswitch_1
    invoke-static {p2}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getDefaultWorkingDirectoryInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :pswitch_2
    invoke-static {p2}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getExtraKeysInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 198
    :pswitch_3
    invoke-static {p2}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getTerminalToolbarHeightScaleFactorInternalPropertyValueFromValue(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 194
    :pswitch_4
    invoke-static {p2}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getBellBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 190
    :pswitch_5
    invoke-static {p2}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getVolumeKeysDisabledInternalPropertyValueFromValue(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 205
    :pswitch_6
    invoke-static {p1, p2}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getCodePointForSessionShortcuts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 188
    :pswitch_7
    invoke-static {p0, p2}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getUseBlackUIInternalPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 213
    :pswitch_8
    invoke-static {p2}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getExtraKeysStyleInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x735c398b -> :sswitch_b
        -0x67934758 -> :sswitch_a
        -0x579d1a51 -> :sswitch_9
        -0x36e83739 -> :sswitch_8
        -0x11d57521 -> :sswitch_7
        -0xe314e93 -> :sswitch_6
        -0x31bc19c -> :sswitch_5
        0x1e6d9668 -> :sswitch_4
        0x261ef32a -> :sswitch_3
        0x29cec591 -> :sswitch_2
        0x4b2f8a45 -> :sswitch_1
        0x7e594c79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTerminalToolbarHeightScaleFactorInternalPropertyValueFromValue(Ljava/lang/String;)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 286
    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getFloatFromString(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->rangeTerminalToolbarHeightScaleFactorValue(F)F

    move-result p0

    return p0
.end method

.method public static getUseBackKeyAsEscapeKeyInternalPropertyValueFromValue(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "back"

    .line 238
    invoke-static {p0, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "escape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getUseBlackUIInternalPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 250
    :goto_0
    invoke-static {p1, p0}, Lcom/termux/shared/settings/properties/SharedProperties;->getBooleanValueForStringValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getVolumeKeysDisabledInternalPropertyValueFromValue(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "virtual"

    .line 261
    invoke-static {p0, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "volume"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static rangeTerminalToolbarHeightScaleFactorValue(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x40400000    # 3.0f

    .line 299
    invoke-static {p0, v0, v1, v2}, Lcom/termux/shared/data/DataUtils;->rangedOrDefault(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public areVirtualVolumeKeysDisabled()Z
    .locals 2

    const-string v0, "volume-keys"

    const/4 v1, 0x1

    .line 409
    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public dumpInternalPropertiesToLog()V
    .locals 5

    .line 445
    invoke-virtual {p0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalProperties()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Termux Internal Properties:"

    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\n"

    .line 451
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": `"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "`"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxSharedProperties"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dumpPropertiesToLog()V
    .locals 5

    const/4 v0, 0x1

    .line 429
    invoke-virtual {p0, v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getProperties(Z)Ljava/util/Properties;

    move-result-object v0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Termux Properties:"

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\n"

    .line 435
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": `"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "`"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, " null"

    .line 438
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TermuxSharedProperties"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBellBehaviour()I
    .locals 2

    const-string v0, "bell-character"

    const/4 v1, 0x1

    .line 413
    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefaultWorkingDirectory()Ljava/lang/String;
    .locals 2

    const-string v0, "default-working-directory"

    const/4 v1, 0x1

    .line 421
    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInternalProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getInternalProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2

    if-eqz p2, :cond_2

    .line 134
    iget-object p2, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    invoke-virtual {p2, p1}, Lcom/termux/shared/settings/properties/SharedProperties;->getInternalProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 138
    iget-object v0, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getInternalProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object p2, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value for \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" not found in SharedProperties cahce, force returning default value: `"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TermuxSharedProperties"

    invoke-static {v0, p1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p2

    .line 151
    :cond_2
    iget-object p2, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInternalPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-static {p1, p2, p3}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalTermuxPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getProperties(Z)Ljava/util/Properties;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    invoke-virtual {v0, p1}, Lcom/termux/shared/settings/properties/SharedProperties;->getProperties(Z)Ljava/util/Properties;

    move-result-object p1

    return-object p1
.end method

.method public getTerminalToolbarHeightScaleFactor()F
    .locals 2

    const-string v0, "terminal-toolbar-height"

    const/4 v1, 0x1

    .line 417
    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->rangeTerminalToolbarHeightScaleFactorValue(F)F

    move-result v0

    return v0
.end method

.method public isBackKeyTheEscapeKey()Z
    .locals 2

    const-string v0, "back-key"

    const/4 v1, 0x1

    .line 389
    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnforcingCharBasedInput()Z
    .locals 2

    const-string v0, "enforce-char-based-input"

    const/4 v1, 0x1

    .line 381
    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUsingBlackUI()Z
    .locals 2

    const-string v0, "use-black-ui"

    const/4 v1, 0x1

    .line 393
    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUsingCtrlSpaceWorkaround()Z
    .locals 2

    const-string v0, "ctrl-space-workaround"

    const/4 v1, 0x1

    .line 397
    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUsingFullScreen()Z
    .locals 2

    const-string v0, "fullscreen"

    const/4 v1, 0x1

    .line 401
    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUsingFullScreenWorkAround()Z
    .locals 2

    const-string v0, "use-fullscreen-workaround"

    const/4 v1, 0x1

    .line 405
    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public loadTermuxPropertiesFromDisk()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->mSharedProperties:Lcom/termux/shared/settings/properties/SharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/SharedProperties;->loadPropertiesFromDisk()V

    .line 36
    invoke-virtual {p0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->dumpPropertiesToLog()V

    .line 37
    invoke-virtual {p0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->dumpInternalPropertiesToLog()V

    return-void
.end method

.method public shouldSoftKeyboardBeHiddenOnStartup()Z
    .locals 2

    const-string v0, "hide-soft-keyboard-on-startup"

    const/4 v1, 0x1

    .line 385
    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
