.class final Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$4;
.super Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CharDisplayMap;
.source "ExtraKeysInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CharDisplayMap;-><init>()V

    const-string v0, "LEFT"

    const-string v1, "\u25c0"

    .line 128
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RIGHT"

    const-string v1, "\u25b6"

    .line 129
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UP"

    const-string v1, "\u25b2"

    .line 130
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DOWN"

    const-string v1, "\u25bc"

    .line 131
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
