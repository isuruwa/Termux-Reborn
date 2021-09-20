.class public final synthetic Lcom/termux/app/-$$Lambda$TermuxActivity$BsauIjp8SDeZf2BPvnHcjpbmBbY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/-$$Lambda$TermuxActivity$BsauIjp8SDeZf2BPvnHcjpbmBbY;->f$0:Lcom/termux/app/TermuxActivity;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/termux/app/-$$Lambda$TermuxActivity$BsauIjp8SDeZf2BPvnHcjpbmBbY;->f$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p1}, Lcom/termux/app/TermuxActivity;->lambda$setToggleKeyboardView$7$TermuxActivity(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
