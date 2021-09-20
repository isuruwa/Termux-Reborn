.class public Lcom/termux/app/terminal/TermuxSessionsListViewController;
.super Landroid/widget/ArrayAdapter;
.source "TermuxSessionsListViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/termux/shared/shell/TermuxSession;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final boldSpan:Landroid/text/style/StyleSpan;

.field final italicSpan:Landroid/text/style/StyleSpan;

.field final mActivity:Lcom/termux/app/TermuxActivity;


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/app/TermuxActivity;",
            "Ljava/util/List<",
            "Lcom/termux/shared/shell/TermuxSession;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object p2, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->boldSpan:Landroid/text/style/StyleSpan;

    .line 33
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object p2, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->italicSpan:Landroid/text/style/StyleSpan;

    .line 37
    iput-object p1, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 46
    iget-object p2, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0a0024

    .line 47
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f07009b

    .line 50
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "null session"

    .line 54
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v2}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->isUsingBlackUI()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    iget-object v3, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    const v4, 0x7f060076

    .line 62
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 61
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :cond_2
    iget-object v3, v1, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 67
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_3

    move-object v3, v6

    .line 71
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    const-string v6, "\n"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v6, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->boldSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 76
    iget-object v0, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->italicSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v0, p1, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 78
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 83
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_2

    .line 85
    :cond_6
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    :goto_2
    if-eqz v2, :cond_7

    const/4 v0, -0x1

    goto :goto_3

    :cond_7
    const/high16 v0, -0x1000000

    :goto_3
    if-nez p1, :cond_9

    .line 88
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const/high16 v0, -0x10000

    .line 89
    :cond_9
    :goto_4
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/shared/shell/TermuxSession;

    .line 96
    iget-object p2, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    move-result-object p2

    invoke-virtual {p1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 97
    iget-object p1, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/shared/shell/TermuxSession;

    .line 103
    iget-object p2, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    move-result-object p2

    invoke-virtual {p1}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    const/4 p1, 0x1

    return p1
.end method
