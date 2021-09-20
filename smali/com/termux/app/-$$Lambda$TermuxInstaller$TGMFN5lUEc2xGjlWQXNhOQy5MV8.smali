.class public final synthetic Lcom/termux/app/-$$Lambda$TermuxInstaller$TGMFN5lUEc2xGjlWQXNhOQy5MV8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/termux/app/-$$Lambda$TermuxInstaller$TGMFN5lUEc2xGjlWQXNhOQy5MV8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/termux/app/-$$Lambda$TermuxInstaller$TGMFN5lUEc2xGjlWQXNhOQy5MV8;

    invoke-direct {v0}, Lcom/termux/app/-$$Lambda$TermuxInstaller$TGMFN5lUEc2xGjlWQXNhOQy5MV8;-><init>()V

    sput-object v0, Lcom/termux/app/-$$Lambda$TermuxInstaller$TGMFN5lUEc2xGjlWQXNhOQy5MV8;->INSTANCE:Lcom/termux/app/-$$Lambda$TermuxInstaller$TGMFN5lUEc2xGjlWQXNhOQy5MV8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p1}, Lcom/termux/app/TermuxInstaller;->lambda$setupBootstrapIfNeeded$0(Landroid/content/DialogInterface;)V

    return-void
.end method
