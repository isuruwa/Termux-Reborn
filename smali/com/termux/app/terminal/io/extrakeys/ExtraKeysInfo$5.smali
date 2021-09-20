.class final Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$5;
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

    .line 134
    invoke-direct {p0}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CharDisplayMap;-><init>()V

    const-string v0, "CTRL"

    const-string v1, "\u2388"

    .line 137
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ALT"

    const-string v1, "\u2387"

    .line 138
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ESC"

    const-string v1, "\u238b"

    .line 139
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
