.class public final synthetic Lcom/termux/app/terminal/io/-$$Lambda$TerminalToolbarViewPager$PageAdapter$WYFYJ0aUDU7kI-0JqFuWChVAg8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/io/-$$Lambda$TerminalToolbarViewPager$PageAdapter$WYFYJ0aUDU7kI-0JqFuWChVAg8I;->f$0:Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;

    iput-object p2, p0, Lcom/termux/app/terminal/io/-$$Lambda$TerminalToolbarViewPager$PageAdapter$WYFYJ0aUDU7kI-0JqFuWChVAg8I;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/termux/app/terminal/io/-$$Lambda$TerminalToolbarViewPager$PageAdapter$WYFYJ0aUDU7kI-0JqFuWChVAg8I;->f$0:Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;

    iget-object v1, p0, Lcom/termux/app/terminal/io/-$$Lambda$TerminalToolbarViewPager$PageAdapter$WYFYJ0aUDU7kI-0JqFuWChVAg8I;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->lambda$instantiateItem$0$TerminalToolbarViewPager$PageAdapter(Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
