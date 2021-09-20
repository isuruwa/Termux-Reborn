.class public Lcom/termux/app/TermuxApplication;
.super Landroid/app/Application;
.source "TermuxApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private setLogLevel()V
    .locals 3

    .line 23
    new-instance v0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getLogLevel()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setLogLevel(Landroid/content/Context;I)V

    const-string v0, "Starting Application"

    .line 25
    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 15
    invoke-static {p0}, Lcom/termux/shared/crash/CrashHandler;->setCrashHandler(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/termux/app/TermuxApplication;->setLogLevel()V

    return-void
.end method
