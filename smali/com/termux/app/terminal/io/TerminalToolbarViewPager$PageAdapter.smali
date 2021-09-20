.class public Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "TerminalToolbarViewPager.java"


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field mSavedTextInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 26
    iput-object p2, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mSavedTextInput:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$instantiateItem$0(Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 65
    iget-object p2, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 67
    invoke-virtual {p2}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 69
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_0

    const-string p3, "\r"

    .line 70
    :cond_0
    invoke-virtual {p2, p3}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object p3, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p3}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    :goto_0
    const-string p2, ""

    .line 74
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0a0040

    .line 45
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 46
    move-object v0, p2

    check-cast v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    .line 47
    iget-object v1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1, v0}, Lcom/termux/app/TermuxActivity;->setExtraKeysView(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;)V

    .line 48
    iget-object v1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getExtraKeysInfo()Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->reload(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;)V

    .line 51
    iget-object v0, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->isUsingFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->isUsingFullScreenWorkAround()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Lcom/termux/app/terminal/io/FullScreenWorkAround;->apply(Lcom/termux/app/TermuxActivity;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0a0041

    .line 56
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0700bb

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 59
    iget-object v1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mSavedTextInput:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mSavedTextInput:Ljava/lang/String;

    .line 64
    :cond_1
    new-instance v1, Lcom/termux/app/terminal/io/-$$Lambda$TerminalToolbarViewPager$PageAdapter$WYFYJ0aUDU7kI-0JqFuWChVAg8I;

    invoke-direct {v1, p0, v0}, Lcom/termux/app/terminal/io/-$$Lambda$TerminalToolbarViewPager$PageAdapter$WYFYJ0aUDU7kI-0JqFuWChVAg8I;-><init>(Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 79
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$instantiateItem$0$TerminalToolbarViewPager$PageAdapter(Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->lambda$instantiateItem$0(Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
