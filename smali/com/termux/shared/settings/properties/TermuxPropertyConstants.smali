.class public final Lcom/termux/shared/settings/properties/TermuxPropertyConstants;
.super Ljava/lang/Object;
.source "TermuxPropertyConstants.java"


# static fields
.field public static final MAP_BELL_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAP_SESSION_SHORTCUTS:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TERMUX_DEFAULT_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TERMUX_DEFAULT_INVERETED_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TERMUX_PROPERTIES_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 111
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    const/4 v1, 0x1

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vibrate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    const/4 v2, 0x2

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "beep"

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    const/4 v3, 0x3

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ignore"

    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 116
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->MAP_BELL_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    .line 143
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    const-string v4, "shortcut.create-session"

    .line 145
    invoke-virtual {v0, v4, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    const-string v1, "shortcut.next-session"

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    const-string v1, "shortcut.previous-session"

    .line 147
    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    const/4 v1, 0x4

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "shortcut.rename-session"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 149
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->MAP_SESSION_SHORTCUTS:Lcom/google/common/collect/ImmutableBiMap;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "enforce-char-based-input"

    const-string v2, "hide-soft-keyboard-on-startup"

    const-string v3, "back-key"

    const-string v4, "use-black-ui"

    const-string v5, "ctrl-space-workaround"

    const-string v6, "fullscreen"

    const-string v7, "use-fullscreen-workaround"

    const-string v8, "volume-keys"

    const-string v9, "allow-external-apps"

    const-string v10, "bell-character"

    const-string v11, "terminal-toolbar-height"

    const-string v12, "shortcut.create-session"

    const-string v13, "shortcut.next-session"

    const-string v14, "shortcut.previous-session"

    const-string v15, "shortcut.rename-session"

    const-string v16, "default-working-directory"

    const-string v17, "extra-keys"

    const-string v18, "extra-keys-style"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->TERMUX_PROPERTIES_LIST:Ljava/util/Set;

    .line 209
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "enforce-char-based-input"

    const-string v2, "hide-soft-keyboard-on-startup"

    const-string v3, "ctrl-space-workaround"

    const-string v4, "fullscreen"

    const-string v5, "use-fullscreen-workaround"

    const-string v6, "allow-external-apps"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    .line 223
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_INVERETED_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    return-void
.end method

.method public static getTermuxPropertiesFile()Ljava/io/File;
    .locals 4

    const-string v0, "/data/data/com.termux/files/home/.termux/termux.properties"

    const-string v1, "/data/data/com.termux/files/home/.config/termux/termux.properties"

    .line 238
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 246
    new-instance v1, Ljava/io/File;

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "No readable termux.properties file found"

    .line 253
    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
