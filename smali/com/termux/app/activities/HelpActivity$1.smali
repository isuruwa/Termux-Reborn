.class Lcom/termux/app/activities/HelpActivity$1;
.super Landroid/webkit/WebViewClient;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/activities/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/activities/HelpActivity;

.field final synthetic val$progressLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/termux/app/activities/HelpActivity;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/termux/app/activities/HelpActivity$1;->this$0:Lcom/termux/app/activities/HelpActivity;

    iput-object p2, p0, Lcom/termux/app/activities/HelpActivity$1;->val$progressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/termux/app/activities/HelpActivity$1;->this$0:Lcom/termux/app/activities/HelpActivity;

    iget-object p2, p1, Lcom/termux/app/activities/HelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string p1, "https://wiki.termux.com"

    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/termux/app/activities/HelpActivity$1;->this$0:Lcom/termux/app/activities/HelpActivity;

    iget-object p2, p0, Lcom/termux/app/activities/HelpActivity$1;->val$progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return v0

    .line 49
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/termux/app/activities/HelpActivity$1;->this$0:Lcom/termux/app/activities/HelpActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 52
    :catch_0
    iget-object p1, p0, Lcom/termux/app/activities/HelpActivity$1;->this$0:Lcom/termux/app/activities/HelpActivity;

    iget-object p2, p0, Lcom/termux/app/activities/HelpActivity$1;->val$progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return v0
.end method
