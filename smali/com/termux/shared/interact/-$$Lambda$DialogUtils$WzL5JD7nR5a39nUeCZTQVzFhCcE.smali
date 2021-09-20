.class public final synthetic Lcom/termux/shared/interact/-$$Lambda$DialogUtils$WzL5JD7nR5a39nUeCZTQVzFhCcE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/interact/DialogUtils$TextSetListener;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$WzL5JD7nR5a39nUeCZTQVzFhCcE;->f$0:Lcom/termux/shared/interact/DialogUtils$TextSetListener;

    iput-object p2, p0, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$WzL5JD7nR5a39nUeCZTQVzFhCcE;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$WzL5JD7nR5a39nUeCZTQVzFhCcE;->f$0:Lcom/termux/shared/interact/DialogUtils$TextSetListener;

    iget-object v1, p0, Lcom/termux/shared/interact/-$$Lambda$DialogUtils$WzL5JD7nR5a39nUeCZTQVzFhCcE;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1, p1, p2}, Lcom/termux/shared/interact/DialogUtils;->lambda$textInput$1(Lcom/termux/shared/interact/DialogUtils$TextSetListener;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
