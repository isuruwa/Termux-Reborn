.class final Lcom/termux/app/TermuxInstaller;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"


# direct methods
.method static synthetic access$000(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/termux/app/TermuxInstaller;->ensureDirectoryExists(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method private static ensureDirectoryExists(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 252
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static native getZip()[B
.end method

.method static synthetic lambda$setupBootstrapIfNeeded$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    .line 61
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static loadZipBytes()[B
    .locals 1

    const-string v0, "termux-bootstrap"

    .line 260
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->getZip()[B

    move-result-object v0

    return-object v0
.end method

.method static setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "user"

    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 56
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    const-string v4, "TermuxInstaller"

    const-string v5, "/data/data/com.termux/files/usr"

    if-nez v0, :cond_1

    const p1, 0x7f0e0032

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v5, v0, v2

    .line 58
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {v4, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f0e0033

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget-object p1, Lcom/termux/app/-$$Lambda$TermuxInstaller$TGMFN5lUEc2xGjlWQXNhOQy5MV8;->INSTANCE:Lcom/termux/app/-$$Lambda$TermuxInstaller$TGMFN5lUEc2xGjlWQXNhOQy5MV8;

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    invoke-virtual {p0, p1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 66
    :cond_1
    sget-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PREFIX_DIR:Ljava/io/File;

    .line 69
    invoke-static {v5, v1}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 72
    array-length v6, v5

    if-eqz v6, :cond_3

    array-length v6, v5

    if-ne v6, v1, :cond_2

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data/data/com.termux/files/usr/tmp"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 75
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_3
    :goto_1
    const-string v5, "The prefix directory \"/data/data/com.termux/files/usr\" exists but is empty or only contains the tmp directory."

    .line 73
    invoke-static {v4, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :cond_4
    invoke-static {v5, v2}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "The prefix directory \"/data/data/com.termux/files/usr\" does not exist but another file exists at its destination."

    .line 79
    invoke-static {v4, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    const v4, 0x7f0e0035

    .line 82
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/termux/app/TermuxInstaller$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/termux/app/TermuxInstaller$1;-><init>(Landroid/app/Activity;Ljava/io/File;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    .line 190
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static setupStorageSymlinks(Landroid/content/Context;)V
    .locals 2

    const-string v0, "termux-storage"

    const-string v1, "Setting up storage symlinks."

    .line 196
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/termux/app/TermuxInstaller$2;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxInstaller$2;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
