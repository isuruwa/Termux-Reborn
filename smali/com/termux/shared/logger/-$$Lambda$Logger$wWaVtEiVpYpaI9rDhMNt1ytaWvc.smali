.class public final synthetic Lcom/termux/shared/logger/-$$Lambda$Logger$wWaVtEiVpYpaI9rDhMNt1ytaWvc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/logger/-$$Lambda$Logger$wWaVtEiVpYpaI9rDhMNt1ytaWvc;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/shared/logger/-$$Lambda$Logger$wWaVtEiVpYpaI9rDhMNt1ytaWvc;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/termux/shared/logger/-$$Lambda$Logger$wWaVtEiVpYpaI9rDhMNt1ytaWvc;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/termux/shared/logger/-$$Lambda$Logger$wWaVtEiVpYpaI9rDhMNt1ytaWvc;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/termux/shared/logger/-$$Lambda$Logger$wWaVtEiVpYpaI9rDhMNt1ytaWvc;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/termux/shared/logger/-$$Lambda$Logger$wWaVtEiVpYpaI9rDhMNt1ytaWvc;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/termux/shared/logger/Logger;->lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
