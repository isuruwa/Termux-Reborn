.class public Lcom/termux/app/terminal/TermuxTerminalViewClient;
.super Lcom/termux/shared/terminal/TermuxTerminalViewClientBase;
.source "TermuxTerminalViewClient.java"


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field final mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

.field mVirtualControlKeyDown:Z

.field mVirtualFnKeyDown:Z


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/TermuxTerminalSessionClient;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/termux/shared/terminal/TermuxTerminalViewClientBase;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 58
    iput-object p2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    return-void
.end method

.method private handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z
    .locals 2

    .line 161
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p2

    .line 162
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->areVirtualVolumeKeysDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 164
    invoke-virtual {p2}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    return v1

    :cond_1
    const/16 p2, 0x19

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    .line 168
    iput-boolean p3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mVirtualControlKeyDown:Z

    return v0

    :cond_2
    const/16 p2, 0x18

    if-ne p1, p2, :cond_3

    .line 171
    iput-boolean p3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mVirtualFnKeyDown:Z

    return v0

    :cond_3
    return v1
.end method

.method private synthetic lambda$null$1(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 388
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 389
    aget-object p1, p2, p5

    check-cast p1, Ljava/lang/String;

    .line 390
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 392
    :try_start_0
    iget-object p3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p3, p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    iget-object p3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {p2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$showUrlSelection$0([Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 378
    aget-object p1, p1, p3

    check-cast p1, Ljava/lang/String;

    .line 379
    iget-object p2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string p3, "clipboard"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    .line 380
    new-instance p3, Landroid/content/ClipData;

    const-string v0, "text/plain"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-direct {p3, p1, v0, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p2, p3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 381
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const p2, 0x7f0e007d

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$showUrlSelection$2(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;)V
    .locals 1

    .line 386
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p3

    .line 387
    new-instance v0, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$RV_yi3Na4nW-SbD4Sf3eB0Fc9JU;

    invoke-direct {v0, p0, p1, p2}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$RV_yi3Na4nW-SbD4Sf3eB0Fc9JU;-><init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method


# virtual methods
.method public changeFontSize(Z)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->changeFontSize(Z)V

    .line 336
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object p1

    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getFontSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->setTextSize(I)V

    return-void
.end method

.method public copyModeChanged(Z)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method

.method public doPaste()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 436
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 438
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 439
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 440
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public synthetic lambda$null$1$TermuxTerminalViewClient(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->lambda$null$1(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$showUrlSelection$0$TermuxTerminalViewClient([Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->lambda$showUrlSelection$0([Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$showUrlSelection$2$TermuxTerminalViewClient(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->lambda$showUrlSelection$2(Landroid/app/AlertDialog;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z
    .locals 5

    .line 198
    iget-boolean v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mVirtualFnKeyDown:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 202
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p2

    const/16 v0, 0x2e

    const/16 v3, 0x7c

    const/4 v4, -0x1

    if-eq p2, v0, :cond_8

    const/16 v0, 0x6e

    if-eq p2, v0, :cond_7

    const/16 v0, 0x61

    if-eq p2, v0, :cond_6

    const/16 v0, 0x62

    if-eq p2, v0, :cond_5

    const/16 v0, 0x68

    if-eq p2, v0, :cond_4

    const/16 v0, 0x69

    if-eq p2, v0, :cond_0

    const/16 v0, 0x6b

    if-eq p2, v0, :cond_3

    const/16 v0, 0x6c

    if-eq p2, v0, :cond_2

    const/16 v0, 0x70

    if-eq p2, v0, :cond_1

    const/16 v0, 0x71

    if-eq p2, v0, :cond_3

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    goto :goto_1

    :pswitch_0
    const/16 v3, 0x13

    goto :goto_0

    .line 279
    :pswitch_1
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/high16 p2, -0x80000000

    .line 280
    invoke-virtual {p1, v1, p2, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_1

    :pswitch_2
    const/16 p2, 0x5f

    goto :goto_2

    :pswitch_3
    const/16 v3, 0x3d

    goto :goto_0

    :pswitch_4
    const/16 v3, 0x14

    goto :goto_0

    :pswitch_5
    const/16 p2, 0x1b

    goto :goto_2

    :pswitch_6
    const/16 v3, 0x16

    goto :goto_0

    :pswitch_7
    add-int/lit8 p1, p1, -0x31

    add-int/lit16 v3, p1, 0x83

    goto :goto_0

    :pswitch_8
    const/16 v3, 0x8c

    :cond_0
    :goto_0
    move p1, v1

    move p2, v4

    goto :goto_4

    :cond_1
    const/16 v3, 0x5c

    goto :goto_0

    :cond_2
    move p1, v1

    move p2, v3

    goto :goto_3

    .line 286
    :cond_3
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->toggleTerminalToolbar()V

    .line 287
    iput-boolean v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mVirtualFnKeyDown:Z

    :goto_1
    move p1, v1

    move p2, v4

    move v3, p2

    goto :goto_4

    :cond_4
    const/16 p2, 0x7e

    goto :goto_2

    :cond_5
    :pswitch_9
    move p1, v2

    goto :goto_3

    :cond_6
    const/16 v3, 0x15

    goto :goto_0

    :cond_7
    const/16 v3, 0x5d

    goto :goto_0

    :cond_8
    const/16 p2, 0x1c

    :goto_2
    move p1, v1

    :goto_3
    move v3, v4

    :goto_4
    if-eq v3, v4, :cond_9

    .line 292
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result p2

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result p1

    invoke-static {v3, v1, p2, p1}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    if-eq p2, v4, :cond_a

    .line 295
    invoke-virtual {p3, p1, p2}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    :cond_a
    :goto_5
    return v2

    :cond_b
    if-eqz p2, :cond_12

    const/16 p2, 0x6a

    if-ne p1, p2, :cond_c

    .line 299
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result p2

    if-nez p2, :cond_c

    .line 300
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {p1, p3}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    return v2

    .line 304
    :cond_c
    iget-object p2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object p2

    invoke-virtual {p2}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getSessionShortcuts()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_12

    .line 305
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_12

    .line 306
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    .line 307
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_6
    if-ltz p3, :cond_12

    .line 308
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/app/terminal/io/KeyboardShortcut;

    .line 309
    iget v3, v0, Lcom/termux/app/terminal/io/KeyboardShortcut;->codePoint:I

    if-ne p1, v3, :cond_11

    .line 310
    iget v0, v0, Lcom/termux/app/terminal/io/KeyboardShortcut;->shortcutAction:I

    if-eq v0, v2, :cond_10

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_e

    const/4 v3, 0x4

    if-eq v0, v3, :cond_d

    goto :goto_7

    .line 321
    :cond_d
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    iget-object p2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    return v2

    .line 318
    :cond_e
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {p1, v1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->switchToSession(Z)V

    return v2

    .line 315
    :cond_f
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {p1, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->switchToSession(Z)V

    return v2

    .line 312
    :cond_10
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    return v2

    :cond_11
    :goto_7
    add-int/lit8 p3, p3, -0x1

    goto :goto_6

    :cond_12
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x73
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 109
    invoke-virtual {p3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {p1, p3}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    return v0

    .line 112
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 114
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v1

    const/16 v3, 0x14

    if-eq p1, v3, :cond_10

    const/16 v3, 0x6e

    if-ne v1, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v3, 0x13

    if-eq p1, v3, :cond_f

    const/16 v3, 0x70

    if-ne v1, v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x16

    if-ne p1, v3, :cond_4

    .line 121
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto/16 :goto_3

    :cond_4
    const/16 v3, 0x15

    if-ne p1, v3, :cond_5

    .line 123
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto/16 :goto_3

    :cond_5
    const/16 p1, 0x6b

    if-ne v1, p1, :cond_6

    .line 125
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x2

    .line 126
    invoke-virtual {p1, p2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_3

    :cond_6
    const/16 p1, 0x6d

    if-ne v1, p1, :cond_7

    .line 128
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    goto :goto_3

    :cond_7
    const/16 p1, 0x72

    if-ne v1, p1, :cond_8

    .line 130
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {p1, p3}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_3

    :cond_8
    const/16 p1, 0x63

    if-ne v1, p1, :cond_9

    .line 132
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    goto :goto_3

    :cond_9
    const/16 p1, 0x75

    if-ne v1, p1, :cond_a

    .line 134
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->showUrlSelection()V

    goto :goto_3

    :cond_a
    const/16 p1, 0x76

    if-ne v1, p1, :cond_b

    .line 136
    invoke-virtual {p0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->doPaste()V

    goto :goto_3

    :cond_b
    const/16 p1, 0x2b

    if-eq v1, p1, :cond_e

    .line 137
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p2

    if-ne p2, p1, :cond_c

    goto :goto_0

    :cond_c
    const/16 p1, 0x2d

    if-ne v1, p1, :cond_d

    .line 142
    invoke-virtual {p0, v2}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->changeFontSize(Z)V

    goto :goto_3

    :cond_d
    const/16 p1, 0x31

    if-lt v1, p1, :cond_11

    const/16 p2, 0x39

    if-gt v1, p2, :cond_11

    sub-int/2addr v1, p1

    .line 145
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {p1, v1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->switchToSession(I)V

    goto :goto_3

    .line 140
    :cond_e
    :goto_0
    invoke-virtual {p0, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->changeFontSize(Z)V

    goto :goto_3

    .line 119
    :cond_f
    :goto_1
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {p1, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->switchToSession(Z)V

    goto :goto_3

    .line 117
    :cond_10
    :goto_2
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {p1, v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->switchToSession(Z)V

    :cond_11
    :goto_3
    return v0

    :cond_12
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->handleVirtualKeys(ILandroid/view/KeyEvent;Z)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScale(F)F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x3f8ccccd    # 1.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 65
    :goto_1
    invoke-virtual {p0, p1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->changeFontSize(Z)V

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 76
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public readAltKey()Z
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getExtraKeysView()Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getExtraKeysView()Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    move-result-object v0

    sget-object v1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->ALT:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->readSpecialButton(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readControlKey()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getExtraKeysView()Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getExtraKeysView()Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    move-result-object v0

    sget-object v1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->CTRL:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->readSpecialButton(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mVirtualControlKeyDown:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reportIssueFromTranscript()V
    .locals 12

    .line 405
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 408
    invoke-static {v0, v1, v2}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v3, 0x19000

    .line 411
    invoke-static {v0, v3, v1, v2, v1}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "## Transcript\n"

    .line 417
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 418
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    .line 420
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v3, v2}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v2}, Lcom/termux/shared/termux/TermuxUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v2}, Lcom/termux/shared/termux/TermuxUtils;->geAPTInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 425
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_2
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    new-instance v11, Lcom/termux/app/models/ReportInfo;

    sget-object v4, Lcom/termux/app/models/UserAction;->REPORT_ISSUE_FROM_TRANSCRIPT:Lcom/termux/app/models/UserAction;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/shared/termux/TermuxUtils;->getReportIssueMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v5, "com.termux.app.TermuxActivity"

    const-string v6, "Termux Report Issue"

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/termux/app/models/ReportInfo;-><init>(Lcom/termux/app/models/UserAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v2, v11}, Lcom/termux/app/activities/ReportActivity;->startReportActivity(Landroid/content/Context;Lcom/termux/app/models/ReportInfo;)V

    return-void
.end method

.method public shareSessionTranscript()V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 345
    invoke-static {v0, v1, v2}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 350
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "text/plain"

    .line 351
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x19000

    .line 352
    invoke-static {v0, v4, v1, v2, v1}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    .line 353
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 354
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v4, 0x7f0e00a0

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v2, 0x7f0e00a1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get share session transcript of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public shouldBackButtonBeMappedToEscape()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->isBackKeyTheEscapeKey()Z

    move-result v0

    return v0
.end method

.method public shouldEnforceCharBasedInput()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->isEnforcingCharBasedInput()Z

    move-result v0

    return v0
.end method

.method public shouldUseCtrlSpaceWorkaround()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->isUsingCtrlSpaceWorkaround()Z

    move-result v0

    return v0
.end method

.method public showUrlSelection()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 365
    invoke-static {v0, v1, v1}, Lcom/termux/shared/shell/ShellUtils;->getTerminalSessionTranscriptText(Lcom/termux/terminal/TerminalSession;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/termux/shared/data/DataUtils;->extractUrls(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e009f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 373
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 374
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 377
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$jddEeNQ4vBC9Zwj3U3TQ3AhjS6k;

    invoke-direct {v2, p0, v0}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$jddEeNQ4vBC9Zwj3U3TQ3AhjS6k;-><init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e009e

    .line 382
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 385
    new-instance v2, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ssncePRmyXOOszi-htM6KkJVLBc;

    invoke-direct {v2, p0, v1, v0}, Lcom/termux/app/terminal/-$$Lambda$TermuxTerminalViewClient$ssncePRmyXOOszi-htM6KkJVLBc;-><init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 401
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
