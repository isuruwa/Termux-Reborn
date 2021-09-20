.class public final synthetic Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$w0w0_8EwRvMCwy8SDz5Mp7JFz_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

.field public final synthetic f$1:Landroid/widget/Button;

.field public final synthetic f$2:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;Landroid/widget/Button;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$w0w0_8EwRvMCwy8SDz5Mp7JFz_s;->f$0:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$w0w0_8EwRvMCwy8SDz5Mp7JFz_s;->f$1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$w0w0_8EwRvMCwy8SDz5Mp7JFz_s;->f$2:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$w0w0_8EwRvMCwy8SDz5Mp7JFz_s;->f$0:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$w0w0_8EwRvMCwy8SDz5Mp7JFz_s;->f$1:Landroid/widget/Button;

    iget-object v2, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$w0w0_8EwRvMCwy8SDz5Mp7JFz_s;->f$2:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    invoke-virtual {v0, v1, v2, p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->lambda$reload$1$ExtraKeysView(Landroid/widget/Button;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;Landroid/view/View;)V

    return-void
.end method
