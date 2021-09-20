.class public Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;
.super Ljava/lang/Object;
.source "ExtraKeyButton.java"


# instance fields
.field private final display:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final macro:Z

.field private popup:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;


# direct methods
.method public constructor <init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CharDisplayMap;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;-><init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CharDisplayMap;Lorg/json/JSONObject;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V

    return-void
.end method

.method public constructor <init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CharDisplayMap;Lorg/json/JSONObject;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "macro"

    .line 44
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "Both key and macro can\'t be set for the same key"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string v3, " "

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v4

    .line 50
    iput-boolean v4, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->macro:Z

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_5

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 53
    iput-boolean v5, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->macro:Z

    .line 58
    :goto_1
    array-length v0, v2

    if-ge v4, v0, :cond_3

    .line 59
    aget-object v0, v2, v4

    invoke-static {v0}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;->replaceAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 62
    :cond_3
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    const-string v0, "display"

    .line 64
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 66
    iput-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->display:Ljava/lang/String;

    goto :goto_2

    .line 68
    :cond_4
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeyButton$oleWAOpLce1863NIrGVWQjBuHGM;

    invoke-direct {v0, p1}, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeyButton$oleWAOpLce1863NIrGVWQjBuHGM;-><init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CharDisplayMap;)V

    .line 69
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 70
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->display:Ljava/lang/String;

    .line 73
    :goto_2
    iput-object p3, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->popup:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    return-void

    .line 55
    :cond_5
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "All keys have to specify either key or macro"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$new$0(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CharDisplayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CleverMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPopup()Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->popup:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    return-object v0
.end method

.method public isMacro()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->macro:Z

    return v0
.end method
