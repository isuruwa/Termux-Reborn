.class public final synthetic Lcom/termux/app/-$$Lambda$TermuxActivity$R86CrS-vWQv2w37F0KxXs9_9934;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/-$$Lambda$TermuxActivity$R86CrS-vWQv2w37F0KxXs9_9934;->f$0:Lcom/termux/app/TermuxActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/termux/app/-$$Lambda$TermuxActivity$R86CrS-vWQv2w37F0KxXs9_9934;->f$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0, p1, p2}, Lcom/termux/app/TermuxActivity;->lambda$onCreate$0$TermuxActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-object p2
.end method
