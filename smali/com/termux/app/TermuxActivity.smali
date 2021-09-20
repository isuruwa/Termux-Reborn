.class public final Lcom/termux/app/TermuxActivity;
.super Landroid/app/Activity;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;
    }
.end annotation


# instance fields
.field mExtraKeysView:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

.field private mIsVisible:Z

.field mLastToast:Landroid/widget/Toast;

.field private mNavBarHeight:I

.field private mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

.field private mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

.field private mTerminalToolbarDefaultHeight:I

.field mTerminalView:Lcom/termux/view/TerminalView;

.field private final mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mTermuxService:Lcom/termux/app/TermuxService;

.field mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

.field mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

.field mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    new-instance v0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/termux/app/TermuxActivity;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    return p0
.end method

.method static synthetic access$100(Lcom/termux/app/TermuxActivity;Landroid/content/Intent;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->fixTermuxActivityBroadcastReceieverIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->reloadTermuxActivityStyling()V

    return-void
.end method

.method private fixTermuxActivityBroadcastReceieverIntent(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.termux.app.reload_style"

    .line 737
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "storage"

    .line 738
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "com.termux.app.request_storage_permissions"

    .line 740
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private synthetic lambda$null$3(Ljava/lang/String;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$null$4(Ljava/lang/String;)V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 175
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    iput p1, p0, Lcom/termux/app/TermuxActivity;->mNavBarHeight:I

    return-object p2
.end method

.method private synthetic lambda$onServiceConnected$1()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "com.termux.app.failsafe_session"

    .line 265
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$setNewSessionButtonView$2(Landroid/view/View;)V
    .locals 2

    .line 409
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setNewSessionButtonView$5(Landroid/view/View;)Z
    .locals 10

    .line 411
    new-instance v4, Lcom/termux/app/-$$Lambda$TermuxActivity$X0z8jyprOZK2N9W8UNrVljeA_qU;

    invoke-direct {v4, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$X0z8jyprOZK2N9W8UNrVljeA_qU;-><init>(Lcom/termux/app/TermuxActivity;)V

    new-instance v6, Lcom/termux/app/-$$Lambda$TermuxActivity$f01NKBUCuRASqXZplyXXaobiSLg;

    invoke-direct {v6, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$f01NKBUCuRASqXZplyXXaobiSLg;-><init>(Lcom/termux/app/TermuxActivity;)V

    const v1, 0x7f0e0099

    const/4 v2, 0x0

    const v3, 0x7f0e001d

    const v5, 0x7f0e0022

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/termux/shared/interact/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/shared/interact/DialogUtils$TextSetListener;ILcom/termux/shared/interact/DialogUtils$TextSetListener;ILcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$setToggleKeyboardView$6(Landroid/view/View;)V
    .locals 2

    const-string p1, "input_method"

    .line 421
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 422
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 423
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method

.method private synthetic lambda$setToggleKeyboardView$7(Landroid/view/View;)Z
    .locals 0

    .line 427
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->toggleTerminalToolbar()V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$showKillSessionDialog$8(Lcom/termux/terminal/TerminalSession;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 587
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 588
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    return-void
.end method

.method private synthetic lambda$showStylingDialog$9(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 610
    new-instance p1, Landroid/content/Intent;

    const-string p2, "https://f-droid.org/en/packages/com.termux.styling"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 801
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/app/TermuxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 802
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private registerTermuxActivityBroadcastReceiver()V
    .locals 2

    .line 723
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.termux.app.request_storage_permissions"

    .line 724
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.termux.app.reload_style"

    .line 725
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private reloadTermuxActivityStyling()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->checkForFontAndColors()V

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    if-eqz v0, :cond_1

    .line 774
    invoke-virtual {v0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->loadTermuxPropertiesFromDisk()V

    .line 776
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    if-eqz v0, :cond_1

    .line 777
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v1}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getExtraKeysInfo()Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->reload(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;)V

    .line 781
    :cond_1
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTerminalToolbarHeight()V

    .line 783
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setSoftKeyboardState()V

    return-void
.end method

.method private requestAutoFill()V
    .locals 2

    .line 624
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 625
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private resetSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 596
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->reset()V

    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e007e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/termux/app/TermuxActivity;->showToast(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private saveTerminalToolbarTextInput(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0700bb

    .line 398
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "terminal_toolbar_text_input"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setActivityTheme()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->isUsingBlackUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f012b

    .line 340
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f012a

    .line 342
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    return-void
.end method

.method private setDrawerTheme()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->isUsingBlackUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07006c

    .line 348
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x106000e

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private setNewSessionButtonView()V
    .locals 2

    const v0, 0x7f070079

    .line 408
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxActivity$aOMOfOJf44c66QjcP3bxZ1lv8Oo;

    invoke-direct {v1, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$aOMOfOJf44c66QjcP3bxZ1lv8Oo;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxActivity$VqJWmVRWiC1m1ALQEj4VXCyggYQ;

    invoke-direct {v1, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$VqJWmVRWiC1m1ALQEj4VXCyggYQ;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setSoftKeyboardState()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getSoftKeyboardEnabled()Z

    move-result v0

    const/high16 v1, 0x20000

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->shouldSoftKeyboardBeHiddenOnStartup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    return-void
.end method

.method private setTerminalToolbarHeight()V
    .locals 4

    const v0, 0x7f0700bc

    .line 373
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 376
    iget v2, p0, Lcom/termux/app/TermuxActivity;->mTerminalToolbarDefaultHeight:I

    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    .line 377
    invoke-virtual {v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getExtraKeysInfo()Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getExtraKeysInfo()Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;->getMatrix()[[Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object v3

    array-length v3, v3

    :goto_0
    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    .line 378
    invoke-virtual {v3}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getTerminalToolbarHeightScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    .line 376
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 379
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTerminalToolbarView(Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f0700bc

    .line 356
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 357
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getShowTerminalToolbar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 359
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 360
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/termux/app/TermuxActivity;->mTerminalToolbarDefaultHeight:I

    .line 362
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTerminalToolbarHeight()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v1, "terminal_toolbar_text_input"

    .line 366
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    :cond_1
    new-instance p1, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;

    invoke-direct {p1, p0, v1}, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;-><init>(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 369
    new-instance p1, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;

    invoke-direct {p1, p0, v0}, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;-><init>(Lcom/termux/app/TermuxActivity;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private setTermuxSessionsListView()V
    .locals 3

    const v0, 0x7f0700b9

    .line 469
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 470
    new-instance v1, Lcom/termux/app/terminal/TermuxSessionsListViewController;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    invoke-virtual {v2}, Lcom/termux/app/TermuxService;->getTermuxSessions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/termux/app/terminal/TermuxSessionsListViewController;-><init>(Lcom/termux/app/TermuxActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    .line 471
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 473
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private setTermuxTerminalViewAndClients()V
    .locals 2

    .line 450
    new-instance v0, Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-direct {v0, p0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;-><init>(Lcom/termux/app/TermuxActivity;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    .line 451
    new-instance v1, Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-direct {v1, p0, v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;-><init>(Lcom/termux/app/TermuxActivity;Lcom/termux/app/terminal/TermuxTerminalSessionClient;)V

    iput-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    const v0, 0x7f0700bd

    .line 454
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/view/TerminalView;

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    .line 455
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setTerminalViewClient(Lcom/termux/view/TerminalViewClient;)V

    .line 457
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getFontSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setTextSize(I)V

    .line 458
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getKeepScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 461
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getTerminalViewKeyLoggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setIsTerminalViewKeyLoggingEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 465
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->checkForFontAndColors()V

    return-void
.end method

.method private setToggleKeyboardView()V
    .locals 3

    const v0, 0x7f0700c6

    .line 420
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxActivity$UfexLd0RIoAoXqqoKTg46zS8iOw;

    invoke-direct {v2, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$UfexLd0RIoAoXqqoKTg46zS8iOw;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxActivity$BsauIjp8SDeZf2BPvnHcjpbmBbY;

    invoke-direct {v1, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$BsauIjp8SDeZf2BPvnHcjpbmBbY;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private showKillSessionDialog(Lcom/termux/terminal/TerminalSession;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 583
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 584
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0098

    .line 585
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x1040013

    .line 586
    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxActivity$ORqQ78KaC73xlIUbqeI-5QN9SVo;

    invoke-direct {v2, p1}, Lcom/termux/app/-$$Lambda$TermuxActivity$ORqQ78KaC73xlIUbqeI-5QN9SVo;-><init>(Lcom/termux/terminal/TerminalSession;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x1040009

    const/4 v1, 0x0

    .line 590
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 591
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showStylingDialog()V
    .locals 3

    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.termux.styling"

    const-string v2, "com.termux.styling.TermuxStyleActivity"

    .line 603
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0068

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002c

    new-instance v2, Lcom/termux/app/-$$Lambda$TermuxActivity$SP88S-_OqcBDMDiW9GMTEio2CrY;

    invoke-direct {v2, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$SP88S-_OqcBDMDiW9GMTEio2CrY;-><init>(Lcom/termux/app/TermuxActivity;)V

    .line 610
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public static startTermuxActivity(Landroid/content/Context;)V
    .locals 1

    .line 797
    invoke-static {p0}, Lcom/termux/app/TermuxActivity;->newInstance(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private toggleKeepScreenOn()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 616
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 619
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->setKeepScreenOn(Z)V

    :goto_0
    return-void
.end method

.method private unregisterTermuxActivityBroadcastReceiever()V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static updateTermuxActivityStyling(Landroid/content/Context;)V
    .locals 2

    .line 718
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.termux.app.reload_style"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public ensureStoragePermissionGranted()Z
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 638
    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v1, "TermuxActivity"

    const-string v2, "Storage permission not granted, requesting permission."

    .line 641
    invoke-static {v1, v2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public finishActivityIfNotFinishing()V
    .locals 1

    .line 492
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public getCurrentSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    const v0, 0x7f070056

    .line 672
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method

.method public getExtraKeysView()Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    return-object v0
.end method

.method public getNavBarHeight()I
    .locals 1

    .line 660
    iget v0, p0, Lcom/termux/app/TermuxActivity;->mNavBarHeight:I

    return v0
.end method

.method public getPreferences()Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    return-object v0
.end method

.method public getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    return-object v0
.end method

.method public getTerminalView()Lcom/termux/view/TerminalView;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    return-object v0
.end method

.method public getTermuxService()Lcom/termux/app/TermuxService;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    return-object v0
.end method

.method public getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 680
    iget-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    return v0
.end method

.method public synthetic lambda$null$3$TermuxActivity(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$null$3(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$4$TermuxActivity(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$null$4(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$TermuxActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/termux/app/TermuxActivity;->lambda$onCreate$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-object p2
.end method

.method public synthetic lambda$onServiceConnected$1$TermuxActivity()V
    .locals 0

    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->lambda$onServiceConnected$1()V

    return-void
.end method

.method public synthetic lambda$setNewSessionButtonView$2$TermuxActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$setNewSessionButtonView$2(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setNewSessionButtonView$5$TermuxActivity(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$setNewSessionButtonView$5(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$setToggleKeyboardView$6$TermuxActivity(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$setToggleKeyboardView$6(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setToggleKeyboardView$7$TermuxActivity(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->lambda$setToggleKeyboardView$7(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$showStylingDialog$9$TermuxActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/termux/app/TermuxActivity;->lambda$showStylingDialog$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    :goto_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 542
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 544
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 576
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 573
    :pswitch_0
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {p1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->reportIssueFromTranscript()V

    return v2

    .line 570
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/termux/app/activities/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 567
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/termux/app/activities/HelpActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 564
    :pswitch_3
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->toggleKeepScreenOn()V

    return v2

    .line 561
    :pswitch_4
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->showStylingDialog()V

    return v2

    .line 558
    :pswitch_5
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxActivity;->showKillSessionDialog(Lcom/termux/terminal/TerminalSession;)V

    return v2

    .line 555
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/termux/app/TermuxActivity;->resetSession(Lcom/termux/terminal/TerminalSession;)V

    return v2

    .line 552
    :pswitch_7
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->requestAutoFill()V

    return v2

    .line 549
    :pswitch_8
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {p1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->shareSessionTranscript()V

    return v2

    .line 546
    :pswitch_9
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {p1}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->showUrlSelection()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "TermuxActivity"

    const-string v1, "onCreate"

    .line 157
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {p0, v0}, Lcom/termux/app/utils/CrashUtils;->notifyCrash(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-direct {v0, p0}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    .line 165
    new-instance v0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-direct {v0, p0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    .line 167
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setActivityTheme()V

    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0020

    .line 171
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x1020002

    .line 173
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 174
    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxActivity$R86CrS-vWQv2w37F0KxXs9_9934;

    invoke-direct {v1, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$R86CrS-vWQv2w37F0KxXs9_9934;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 179
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->isUsingFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setDrawerTheme()V

    .line 185
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTermuxTerminalViewAndClients()V

    .line 187
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->setTerminalToolbarView(Landroid/os/Bundle;)V

    .line 189
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setNewSessionButtonView()V

    .line 191
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setToggleKeyboardView()V

    .line 193
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 196
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/termux/app/TermuxService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, p1, p0, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 206
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->sendTermuxOpenedBroadcast(Landroid/content/Context;)V

    return-void

    .line 202
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bindService() failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    .line 510
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 514
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p3, v0, :cond_1

    .line 515
    const-class p3, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/autofill/AutofillManager;

    if-eqz p3, :cond_1

    .line 516
    invoke-virtual {p3}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v2

    :goto_0
    const v0, 0x7f0e0028

    .line 521
    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f0e002a

    .line 522
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    if-eqz p3, :cond_2

    const/4 p3, 0x2

    const v0, 0x7f0e001b

    .line 523
    invoke-interface {p1, v2, p3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    const/4 p3, 0x3

    const v0, 0x7f0e0027

    .line 524
    invoke-interface {p1, v2, p3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 p3, 0x4

    .line 525
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0020

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/termux/terminal/TerminalSession;->getPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, p3, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p3

    invoke-virtual {p2}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result p2

    invoke-interface {p3, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 p2, 0x5

    const p3, 0x7f0e002b

    .line 526
    invoke-interface {p1, v2, p2, v2, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 p2, 0x6

    const p3, 0x7f0e002d

    .line 527
    invoke-interface {p1, v2, p2, v2, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object p2

    iget-object p3, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {p3}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getKeepScreenOn()Z

    move-result p3

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 p2, 0x7

    const p3, 0x7f0e0023

    .line 528
    invoke-interface {p1, v2, p2, v2, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 p2, 0x8

    const p3, 0x7f0e0024

    .line 529
    invoke-interface {p1, v2, p2, v2, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 p2, 0x9

    const p3, 0x7f0e0026

    .line 530
    invoke-interface {p1, v2, p2, v2, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 536
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "TermuxActivity"

    const-string v1, "onDestroy"

    .line 320
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/termux/app/TermuxService;->unsetTermuxTerminalSessionClient()V

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    .line 327
    :cond_0
    invoke-virtual {p0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string p2, "TermuxActivity"

    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_0

    .line 649
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    const-string p1, "Storage permission granted by user on request."

    .line 650
    invoke-static {p2, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-static {p0}, Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "Storage permission denied by user on request."

    .line 653
    invoke-static {p2, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 240
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setSoftKeyboardState()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 332
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 333
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->saveTerminalToolbarTextInput(Landroid/os/Bundle;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "TermuxActivity"

    const-string v0, "onServiceConnected"

    .line 251
    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    check-cast p2, Lcom/termux/app/TermuxService$LocalBinder;

    iget-object p1, p2, Lcom/termux/app/TermuxService$LocalBinder;->service:Lcom/termux/app/TermuxService;

    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    .line 255
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTermuxSessionsListView()V

    .line 257
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    invoke-virtual {p1}, Lcom/termux/app/TermuxService;->isTermuxSessionsEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 258
    iget-boolean p1, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    if-eqz p1, :cond_0

    .line 259
    new-instance p1, Lcom/termux/app/-$$Lambda$TermuxActivity$iAb3wbvCSw3C33cvEKUeEppeGmE;

    invoke-direct {p1, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$iAb3wbvCSw3C33cvEKUeEppeGmE;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-static {p0, p1}, Lcom/termux/app/TermuxInstaller;->setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 278
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.RUN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    const-string v0, "com.termux.app.failsafe_session"

    .line 280
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 281
    iget-object p2, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->addNewSession(ZLjava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 288
    :goto_0
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    iget-object p2, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {p1, p2}, Lcom/termux/app/TermuxService;->setTermuxTerminalSessionClient(Lcom/termux/app/terminal/TermuxTerminalSessionClient;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "TermuxActivity"

    const-string v0, "onServiceDisconnected"

    .line 294
    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->finishActivityIfNotFinishing()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "TermuxActivity"

    const-string v1, "onStart"

    .line 213
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 217
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxService:Lcom/termux/app/TermuxService;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->getCurrentStoredSessionOrLast()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 222
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->termuxSessionListNotifyUpdated()V

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->registerTermuxActivityBroadcastReceiver()V

    .line 229
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getTerminalViewKeyLoggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setIsTerminalViewKeyLoggingEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->onScreenUpdated()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "TermuxActivity"

    const-string v1, "onStop"

    .line 304
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcom/termux/app/TermuxActivity;->mIsVisible:Z

    .line 310
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentStoredSession()V

    .line 312
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->unregisterTermuxActivityBroadcastReceiever()V

    .line 313
    invoke-virtual {p0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method

.method public setExtraKeysView(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mExtraKeysView:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_2

    .line 499
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 501
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    const/16 p2, 0x30

    const/4 v0, 0x0

    .line 502
    invoke-virtual {p1, p2, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 503
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public termuxSessionListNotifyUpdated()V
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxSessionListViewController:Lcom/termux/app/terminal/TermuxSessionsListViewController;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public toggleTerminalToolbar()V
    .locals 4

    const v0, 0x7f0700bc

    .line 383
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    invoke-virtual {v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->toogleShowTerminalToolbar()Z

    move-result v1

    if-eqz v1, :cond_1

    const v2, 0x7f0e0079

    goto :goto_0

    :cond_1
    const v2, 0x7f0e0078

    .line 387
    :goto_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    .line 388
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v1, :cond_3

    .line 389
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v3, :cond_3

    const v0, 0x7f0700bb

    .line 391
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    return-void
.end method
