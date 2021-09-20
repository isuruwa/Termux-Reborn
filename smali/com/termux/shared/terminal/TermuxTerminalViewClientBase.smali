.class public Lcom/termux/shared/terminal/TermuxTerminalViewClientBase;
.super Ljava/lang/Object;
.source "TermuxTerminalViewClientBase.java"

# interfaces
.implements Lcom/termux/view/TerminalViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
