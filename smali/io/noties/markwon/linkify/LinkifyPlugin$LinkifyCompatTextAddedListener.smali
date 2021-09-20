.class Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyCompatTextAddedListener;
.super Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyTextAddedListener;
.source "LinkifyPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/linkify/LinkifyPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkifyCompatTextAddedListener"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyTextAddedListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected addLinks(Landroid/text/Spannable;I)Z
    .locals 0

    .line 152
    invoke-static {p1, p2}, Landroidx/core/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result p1

    return p1
.end method
