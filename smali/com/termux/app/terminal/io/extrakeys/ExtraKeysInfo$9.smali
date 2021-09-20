.class final Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$9;
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
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CharDisplayMap;-><init>()V

    .line 176
    sget-object v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;->classicArrowsDisplay:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CharDisplayMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 179
    sget-object v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;->nicerLookingDisplay:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo$CharDisplayMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method
