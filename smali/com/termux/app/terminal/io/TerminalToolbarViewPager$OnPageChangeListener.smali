.class public Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "TerminalToolbarViewPager.java"


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field final mTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 99
    iput-object p2, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;->mTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;->mTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0700bb

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method
