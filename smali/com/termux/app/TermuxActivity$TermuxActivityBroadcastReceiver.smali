.class Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TermuxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/TermuxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TermuxActivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 749
    :cond_0
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {p1}, Lcom/termux/app/TermuxActivity;->access$000(Lcom/termux/app/TermuxActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 750
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {p1, p2}, Lcom/termux/app/TermuxActivity;->access$100(Lcom/termux/app/TermuxActivity;Landroid/content/Intent;)V

    .line 752
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "com.termux.app.request_storage_permissions"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "TermuxActivity"

    if-nez p2, :cond_2

    const-string p2, "com.termux.app.reload_style"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Received intent to reload styling"

    .line 759
    invoke-static {v0, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {p1}, Lcom/termux/app/TermuxActivity;->access$200(Lcom/termux/app/TermuxActivity;)V

    return-void

    :cond_2
    const-string p1, "Received intent to request storage permissions"

    .line 754
    invoke-static {v0, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->ensureStoragePermissionGranted()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 756
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$TermuxActivityBroadcastReceiver;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-static {p1}, Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method
