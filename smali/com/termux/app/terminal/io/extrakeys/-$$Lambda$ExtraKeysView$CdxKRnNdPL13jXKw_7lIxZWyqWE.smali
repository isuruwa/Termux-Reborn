.class public final synthetic Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$CdxKRnNdPL13jXKw_7lIxZWyqWE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

.field public final synthetic f$1:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$CdxKRnNdPL13jXKw_7lIxZWyqWE;->f$0:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$CdxKRnNdPL13jXKw_7lIxZWyqWE;->f$1:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$CdxKRnNdPL13jXKw_7lIxZWyqWE;->f$0:Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;

    iget-object v1, p0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$CdxKRnNdPL13jXKw_7lIxZWyqWE;->f$1:Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    invoke-virtual {v0, v1, p1, p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->lambda$reload$3$ExtraKeysView(Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
