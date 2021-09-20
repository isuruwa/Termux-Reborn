.class public Lcom/termux/app/terminal/TermuxTerminalSessionClient;
.super Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;
.source "TermuxTerminalSessionClient.java"


# instance fields
.field private final mActivity:Lcom/termux/app/TermuxActivity;

.field private final mBellSoundId:I

.field private final mBellSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Lcom/termux/shared/terminal/TermuxTerminalSessionClientBase;-><init>()V

    .line 40
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    .line 41
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/16 v3, 0xd

    .line 42
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mBellSoundPool:Landroid/media/SoundPool;

    .line 49
    iput-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v2, 0x7f0d0001

    .line 51
    invoke-virtual {v0, p1, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mBellSoundId:I

    return-void
.end method

.method private getCurrentStoredSession(Lcom/termux/app/TermuxActivity;)Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getCurrentSession()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/termux/app/TermuxService;->getTerminalSessionForHandle(Ljava/lang/String;)Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$checkAndScrollToSession$1(Landroid/widget/ListView;I)V
    .locals 0

    .line 288
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$renameSession$0(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p2, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->termuxSessionListNotifyUpdated()V

    return-void
.end method


# virtual methods
.method public addNewSession(ZLjava/lang/String;)V
    .locals 8

    .line 196
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 197
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0e009b

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0e007b

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getDefaultWorkingDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getCwd()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 209
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/termux/app/TermuxService;->createTermuxSession(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/termux/shared/shell/TermuxSession;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 212
    :cond_2
    invoke-virtual {p1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    .line 213
    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 215
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    :goto_1
    return-void
.end method

.method public checkAndScrollToSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I

    move-result p1

    if-gez p1, :cond_1

    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v1, 0x7f0700b9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 286
    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 288
    new-instance v1, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$iOXEksdXfXiUQmZp64DadSsUqcg;

    invoke-direct {v1, v0, p1}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$iOXEksdXfXiUQmZp64DadSsUqcg;-><init>(Landroid/widget/ListView;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public checkForFontAndColors()V
    .locals 6

    .line 311
    :try_start_0
    sget-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_COLOR_PROPERTIES_FILE:Ljava/io/File;

    .line 312
    sget-object v1, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FONT_FILE:Ljava/io/File;

    .line 314
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 316
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 318
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    .line 321
    :cond_0
    :goto_1
    sget-object v0, Lcom/termux/terminal/TerminalColors;->COLOR_SCHEME:Lcom/termux/terminal/TerminalColorScheme;

    invoke-virtual {v0, v2}, Lcom/termux/terminal/TerminalColorScheme;->updateWith(Ljava/util/Properties;)V

    .line 322
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 324
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->updateBackgroundColor()V

    .line 328
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 329
    :goto_2
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/termux/view/TerminalView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "TermuxTerminalSessionClient"

    const-string v2, "Error in checkForFontAndColors()"

    .line 331
    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->getCurrentStoredSession(Lcom/termux/app/TermuxActivity;)Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getLastTermuxSession()Lcom/termux/shared/shell/TermuxSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$renameSession$0$TermuxTerminalSessionClient(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->lambda$renameSession$0(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    return-void
.end method

.method notifyOfSessionChange()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    return-void
.end method

.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .locals 8

    .line 116
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getBellBehaviour()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mBellSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mBellSoundId:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {p1}, Lcom/termux/app/terminal/io/BellHandler;->getInstance(Landroid/content/Context;)Lcom/termux/app/terminal/io/BellHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/app/terminal/io/BellHandler;->doBell()V

    :goto_0
    return-void
.end method

.method public onClipboardText(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 4

    .line 108
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 111
    new-instance v0, Landroid/content/ClipData;

    const/4 v1, 0x0

    const-string v2, "text/plain"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1, v2, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->updateBackgroundColor()V

    :cond_0
    return-void
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->wantsToStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - exited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.leanback"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 95
    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result v0

    const/16 v1, 0x82

    if-ne v0, v1, :cond_4

    .line 101
    :cond_3
    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->onScreenUpdated()V

    :cond_1
    return-void
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->termuxSessionListNotifyUpdated()V

    return-void
.end method

.method public removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->removeTermuxSession(Lcom/termux/terminal/TerminalSession;)I

    move-result p1

    .line 261
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v1

    if-nez v1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    goto :goto_0

    :cond_0
    if-lt p1, v1, :cond_1

    add-int/lit8 p1, v1, -0x1

    .line 269
    :cond_1
    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->getTermuxSession(I)Lcom/termux/shared/shell/TermuxSession;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 271
    invoke-virtual {p1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public renameSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v1, 0x7f0e009c

    iget-object v2, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    const v3, 0x7f0e0025

    new-instance v4, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$HAobNVdh5ElmX-BM9JAKj-HpWaA;

    invoke-direct {v4, p0, p1}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalSessionClient$HAobNVdh5ElmX-BM9JAKj-HpWaA;-><init>(Lcom/termux/app/terminal/TermuxTerminalSessionClient;Lcom/termux/terminal/TerminalSession;)V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/termux/shared/interact/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/shared/interact/DialogUtils$TextSetListener;ILcom/termux/shared/interact/DialogUtils$TextSetListener;ILcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public setCurrentSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->attachSession(Lcom/termux/terminal/TerminalSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->notifyOfSessionChange()V

    .line 151
    :cond_1
    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->checkAndScrollToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 152
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->updateBackgroundColor()V

    return-void
.end method

.method public setCurrentStoredSession()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v1

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setCurrentSession(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setCurrentSession(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public switchToSession(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->getTermuxSession(I)Lcom/termux/shared/shell/TermuxSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    :cond_0
    return-void
.end method

.method public switchToSession(Z)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxService;->getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I

    move-result v1

    .line 167
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->getTermuxSessionsSize()I

    move-result v2

    if-eqz p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    add-int/lit8 v1, v2, -0x1

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lcom/termux/app/TermuxService;->getTermuxSession(I)Lcom/termux/shared/shell/TermuxSession;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {p1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    :cond_2
    return-void
.end method

.method public termuxSessionListNotifyUpdated()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->termuxSessionListNotifyUpdated()V

    return-void
.end method

.method toToastTitle(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTermuxService()Lcom/termux/app/TermuxService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxService;->getIndexOfSession(Lcom/termux/terminal/TerminalSession;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 295
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    iget-object v0, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, " "

    if-nez v0, :cond_1

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_1
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 302
    iget-object p1, p1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "\n"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateBackgroundColor()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v0, v0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    const/16 v2, 0x101

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method
